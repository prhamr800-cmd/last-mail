###### Class io.realm.com_digikala_dms_model_domain_BatchRealmProxy (io.realm.com_digikala_dms_model_domain_BatchRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;
.super Lcom/digikala/dms/model/domain/Batch;
.source "com_digikala_dms_model_domain_BatchRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/Batch;",
            ">;"
        }
    .end annotation
.end field

.field private shipmentsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/Batch;-><init>()V

    .line 77
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 78
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Batch;
    .registers 14
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/Batch;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Batch;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/Batch;"
        }
    .end annotation

    .line 335
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 336
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 337
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/domain/Batch;

    return-object v1

    .line 341
    :cond_c
    const-class v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Batch;

    .line 342
    .local v1, "realmObject":Lcom/digikala/dms/model/domain/Batch;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    .line 345
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    .line 347
    .local v4, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 348
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$status()I

    move-result v5

    invoke-interface {v4, v5}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$status(I)V

    .line 350
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v5

    .line 351
    .local v5, "shipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    if-eqz v5, :cond_63

    .line 352
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v6

    .line 353
    .local v6, "shipmentsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    invoke-virtual {v6}, Lio/realm/RealmList;->clear()V

    .line 354
    nop

    .local v3, "i":I
    :goto_41
    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v7

    if-ge v3, v7, :cond_63

    .line 355
    invoke-virtual {v5, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/Shipment;

    .line 356
    .local v7, "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/Shipment;

    .line 357
    .local v8, "cacheshipments":Lcom/digikala/dms/model/domain/Shipment;
    if-eqz v8, :cond_59

    .line 358
    invoke-virtual {v6, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 360
    :cond_59
    invoke-static {p0, v7, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v9

    invoke-virtual {v6, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v7    # "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    .end local v8    # "cacheshipments":Lcom/digikala/dms/model/domain/Shipment;
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 365
    .end local v3    # "i":I
    .end local v6    # "shipmentsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    :cond_63
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Batch;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/Batch;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Batch;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/Batch;"
        }
    .end annotation

    .line 316
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

    .line 317
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 318
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 321
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 322
    return-object p1

    .line 319
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 327
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 328
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/Batch;

    return-object v2

    .line 331
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 220
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/Batch;IILjava/util/Map;)Lcom/digikala/dms/model/domain/Batch;
    .registers 14
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/Batch;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/Batch;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/Batch;"
        }
    .end annotation

    .line 533
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    const/4 v0, 0x0

    if-gt p1, p2, :cond_6b

    if-nez p0, :cond_6

    goto :goto_6b

    .line 536
    :cond_6
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 538
    .local v1, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v1, :cond_1c

    .line 539
    new-instance v2, Lcom/digikala/dms/model/domain/Batch;

    invoke-direct {v2}, Lcom/digikala/dms/model/domain/Batch;-><init>()V

    .line 540
    .local v2, "unmanagedObject":Lcom/digikala/dms/model/domain/Batch;
    new-instance v3, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v3, p1, v2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 543
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/Batch;
    :cond_1c
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_25

    .line 544
    iget-object v0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v0, Lcom/digikala/dms/model/domain/Batch;

    return-object v0

    .line 546
    :cond_25
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/digikala/dms/model/domain/Batch;

    .line 547
    .restart local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/Batch;
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 549
    :goto_2b
    move-object v3, v2

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    .line 550
    .local v3, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;
    move-object v4, p0

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    .line 551
    .local v4, "realmSource":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 552
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$status()I

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$status(I)V

    .line 555
    if-ne p1, p2, :cond_45

    .line 556
    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$shipments(Lio/realm/RealmList;)V

    goto :goto_6a

    .line 558
    :cond_45
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v0

    .line 559
    .local v0, "managedshipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    new-instance v5, Lio/realm/RealmList;

    invoke-direct {v5}, Lio/realm/RealmList;-><init>()V

    .line 560
    .local v5, "unmanagedshipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$shipments(Lio/realm/RealmList;)V

    .line 561
    add-int/lit8 v6, p1, 0x1

    .line 562
    .local v6, "nextDepth":I
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v7

    .line 563
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_58
    if-ge v8, v7, :cond_6a

    .line 564
    invoke-virtual {v0, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/Shipment;

    invoke-static {v9, v6, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/Shipment;IILjava/util/Map;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v9

    .line 565
    .local v9, "item":Lcom/digikala/dms/model/domain/Shipment;
    invoke-virtual {v5, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 563
    .end local v9    # "item":Lcom/digikala/dms/model/domain/Shipment;
    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    .line 569
    .end local v0    # "managedshipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    .end local v5    # "unmanagedshipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    .end local v6    # "nextDepth":I
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_6a
    :goto_6a
    return-object v2

    .line 534
    .end local v1    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/Batch;
    .end local v3    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;
    .end local v4    # "realmSource":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;
    :cond_6b
    :goto_6b
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 208
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "Batch"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 209
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v5, "id"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 210
    const-string v5, "status"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 211
    const-string v1, "shipments"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "Shipment"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 212
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/Batch;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "shipments"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 236
    const-string v2, "shipments"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_13
    const-class v2, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {p0, v2, v1, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Batch;

    .line 240
    .local v1, "obj":Lcom/digikala/dms/model/domain/Batch;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    .line 241
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3c

    .line 242
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 243
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_3c

    .line 245
    :cond_33
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 248
    :cond_3c
    :goto_3c
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 249
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 252
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$status(I)V

    goto :goto_5e

    .line 250
    :cond_56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'status\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_5e
    :goto_5e
    const-string v3, "shipments"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 256
    const-string v3, "shipments"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 257
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$shipments(Lio/realm/RealmList;)V

    goto :goto_98

    .line 259
    :cond_72
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 260
    const-string v3, "shipments"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 261
    .local v3, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_80
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_98

    .line 262
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v5

    .line 263
    .local v5, "item":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v5    # "item":Lcom/digikala/dms/model/domain/Shipment;
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 267
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_98
    :goto_98
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/Batch;
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

    .line 274
    new-instance v0, Lcom/digikala/dms/model/domain/Batch;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/Batch;-><init>()V

    .line 275
    .local v0, "obj":Lcom/digikala/dms/model/domain/Batch;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    .line 276
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 277
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 278
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "name":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    .line 281
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2e

    .line 282
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_93

    .line 284
    :cond_2e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 285
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_93

    .line 287
    :cond_35
    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 288
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_4d

    .line 289
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$status(I)V

    goto :goto_93

    .line 291
    :cond_4d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 292
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'status\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 294
    :cond_58
    const-string v3, "shipments"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 295
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_6f

    .line 296
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 297
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$shipments(Lio/realm/RealmList;)V

    goto :goto_93

    .line 299
    :cond_6f
    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmSet$shipments(Lio/realm/RealmList;)V

    .line 300
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 301
    :goto_7a
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 302
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v3

    .line 303
    .local v3, "item":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v1}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v3    # "item":Lcom/digikala/dms/model/domain/Shipment;
    goto :goto_7a

    .line 305
    :cond_8c
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_93

    .line 308
    :cond_90
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 310
    .end local v2    # "name":Ljava/lang/String;
    :goto_93
    goto/16 :goto_b

    .line 311
    :cond_95
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 312
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Batch;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 216
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 224
    const-string v0, "Batch"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J
    .registers 23
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Batch;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 369
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

    .line 370
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 372
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 373
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 374
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    .line 375
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 376
    .local v11, "rowIndex":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v16

    .line 378
    .local v16, "realmGet$id":Ljava/lang/String;
    if-eqz v16, :cond_7b

    .line 379
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    const/16 v17, 0x0

    move-wide v4, v13

    move-wide v8, v11

    move-object/from16 v10, v16

    move-wide/from16 v18, v11

    .end local v11    # "rowIndex":J
    .local v18, "rowIndex":J
    move/from16 v11, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7d

    .line 381
    .end local v18    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    :cond_7b
    move-wide/from16 v18, v11

    .end local v11    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :goto_7d
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$status()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 383
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v4

    .line 384
    .local v4, "shipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    if-eqz v4, :cond_cc

    .line 385
    new-instance v5, Lio/realm/internal/OsList;

    move-wide/from16 v6, v18

    .end local v18    # "rowIndex":J
    .local v6, "rowIndex":J
    invoke-virtual {v3, v6, v7}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v8

    iget-wide v9, v15, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->shipmentsIndex:J

    invoke-direct {v5, v8, v9, v10}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 386
    .local v5, "shipmentsOsList":Lio/realm/internal/OsList;
    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ce

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/Shipment;

    .line 387
    .local v9, "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 388
    .local v10, "cacheItemIndexshipments":Ljava/lang/Long;
    if-nez v10, :cond_c4

    .line 389
    invoke-static {v0, v9, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 391
    :cond_c4
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lio/realm/internal/OsList;->addRow(J)V

    .line 392
    .end local v9    # "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    .end local v10    # "cacheItemIndexshipments":Ljava/lang/Long;
    goto :goto_a8

    .line 394
    .end local v5    # "shipmentsOsList":Lio/realm/internal/OsList;
    .end local v6    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :cond_cc
    move-wide/from16 v6, v18

    .end local v18    # "rowIndex":J
    .restart local v6    # "rowIndex":J
    :cond_ce
    return-wide v6
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

    .line 398
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 399
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 400
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    .line 401
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    const/4 v3, 0x0

    .line 402
    .local v3, "object":Lcom/digikala/dms/model/domain/Batch;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 403
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/Batch;

    .line 404
    .end local v3    # "object":Lcom/digikala/dms/model/domain/Batch;
    .local v15, "object":Lcom/digikala/dms/model/domain/Batch;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 405
    goto/16 :goto_e9

    .line 407
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

    .line 408
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

    .line 409
    goto/16 :goto_e9

    .line 411
    :cond_73
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 412
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v16

    .line 414
    .local v16, "realmGet$id":Ljava/lang/String;
    if-eqz v16, :cond_97

    .line 415
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    const/16 v17, 0x0

    move-wide v3, v12

    move-wide v7, v10

    move-object/from16 v9, v16

    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .local v18, "rowIndex":J
    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_99

    .line 417
    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_97
    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :goto_99
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$status()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 419
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v3

    .line 420
    .local v3, "shipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    if-eqz v3, :cond_e8

    .line 421
    new-instance v4, Lio/realm/internal/OsList;

    move-wide/from16 v5, v18

    .end local v18    # "rowIndex":J
    .local v5, "rowIndex":J
    invoke-virtual {v2, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    iget-wide v8, v14, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->shipmentsIndex:J

    invoke-direct {v4, v7, v8, v9}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 422
    .local v4, "shipmentsOsList":Lio/realm/internal/OsList;
    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/Shipment;

    .line 423
    .local v8, "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 424
    .local v9, "cacheItemIndexshipments":Ljava/lang/Long;
    if-nez v9, :cond_e0

    .line 425
    invoke-static {v0, v8, v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 427
    :cond_e0
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lio/realm/internal/OsList;->addRow(J)V

    .line 428
    .end local v8    # "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    .end local v9    # "cacheItemIndexshipments":Ljava/lang/Long;
    goto :goto_c4

    .line 430
    .end local v3    # "shipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    .end local v4    # "shipmentsOsList":Lio/realm/internal/OsList;
    .end local v5    # "rowIndex":J
    .end local v16    # "realmGet$id":Ljava/lang/String;
    :cond_e8
    nop

    .line 401
    :goto_e9
    move-object v3, v15

    goto/16 :goto_1c

    .line 431
    .end local v15    # "object":Lcom/digikala/dms/model/domain/Batch;
    .local v3, "object":Lcom/digikala/dms/model/domain/Batch;
    :cond_ec
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J
    .registers 26
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Batch;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 434
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

    .line 435
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 437
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 438
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 439
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    .line 440
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 441
    .local v11, "rowIndex":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v16

    .line 443
    .local v16, "realmGet$id":Ljava/lang/String;
    if-eqz v16, :cond_7b

    .line 444
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    const/16 v17, 0x0

    move-wide v4, v13

    move-wide v8, v11

    move-object/from16 v10, v16

    move-wide/from16 v18, v11

    .end local v11    # "rowIndex":J
    .local v18, "rowIndex":J
    move/from16 v11, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_86

    .line 446
    .end local v18    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    :cond_7b
    move-wide/from16 v18, v11

    .end local v11    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 448
    :goto_86
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$status()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 450
    new-instance v4, Lio/realm/internal/OsList;

    move-wide/from16 v5, v18

    .end local v18    # "rowIndex":J
    .local v5, "rowIndex":J
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    iget-wide v8, v15, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->shipmentsIndex:J

    invoke-direct {v4, v7, v8, v9}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 451
    .local v4, "shipmentsOsList":Lio/realm/internal/OsList;
    move-object v7, v1

    check-cast v7, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v7}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v7

    .line 452
    .local v7, "shipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    if-eqz v7, :cond_ef

    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4}, Lio/realm/internal/OsList;->size()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_ef

    .line 454
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v8

    .line 455
    .local v8, "objects":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_bf
    if-ge v9, v8, :cond_ea

    .line 456
    invoke-virtual {v7, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/digikala/dms/model/domain/Shipment;

    .line 457
    .local v10, "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 458
    .local v11, "cacheItemIndexshipments":Ljava/lang/Long;
    if-nez v11, :cond_d7

    .line 459
    invoke-static {v0, v10, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 461
    :cond_d7
    move-wide/from16 v20, v13

    .end local v13    # "tableNativePtr":J
    .local v20, "tableNativePtr":J
    int-to-long v12, v9

    move-object/from16 v22, v15

    .end local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    .local v22, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4, v12, v13, v14, v15}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 455
    .end local v10    # "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    .end local v11    # "cacheItemIndexshipments":Ljava/lang/Long;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v13, v20

    move-object/from16 v15, v22

    goto :goto_bf

    .line 463
    .end local v8    # "objects":I
    .end local v9    # "i":I
    .end local v20    # "tableNativePtr":J
    .end local v22    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    .restart local v13    # "tableNativePtr":J
    .restart local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    :cond_ea
    move-wide/from16 v20, v13

    move-object/from16 v22, v15

    .end local v13    # "tableNativePtr":J
    .end local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    .restart local v20    # "tableNativePtr":J
    .restart local v22    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    goto :goto_120

    .line 464
    .end local v20    # "tableNativePtr":J
    .end local v22    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    .restart local v13    # "tableNativePtr":J
    .restart local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    :cond_ef
    move-wide/from16 v20, v13

    move-object/from16 v22, v15

    .end local v13    # "tableNativePtr":J
    .end local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    .restart local v20    # "tableNativePtr":J
    .restart local v22    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    invoke-virtual {v4}, Lio/realm/internal/OsList;->removeAll()V

    .line 465
    if-eqz v7, :cond_120

    .line 466
    invoke-virtual {v7}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_fc
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_120

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/Shipment;

    .line 467
    .local v9, "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 468
    .local v10, "cacheItemIndexshipments":Ljava/lang/Long;
    if-nez v10, :cond_118

    .line 469
    invoke-static {v0, v9, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 471
    :cond_118
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lio/realm/internal/OsList;->addRow(J)V

    .line 472
    .end local v9    # "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    .end local v10    # "cacheItemIndexshipments":Ljava/lang/Long;
    goto :goto_fc

    .line 476
    :cond_120
    :goto_120
    return-wide v5
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

    .line 480
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 481
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 482
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    .line 483
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    const/4 v3, 0x0

    .line 484
    .local v3, "object":Lcom/digikala/dms/model/domain/Batch;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_144

    .line 485
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/Batch;

    .line 486
    .end local v3    # "object":Lcom/digikala/dms/model/domain/Batch;
    .local v15, "object":Lcom/digikala/dms/model/domain/Batch;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 487
    nop

    .line 483
    :goto_30
    move-wide/from16 v22, v12

    goto/16 :goto_13f

    .line 489
    :cond_34
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_75

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_75

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

    if-eqz v3, :cond_75

    .line 490
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

    .line 491
    goto :goto_30

    .line 493
    :cond_75
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 494
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v16

    .line 496
    .local v16, "realmGet$id":Ljava/lang/String;
    if-eqz v16, :cond_99

    .line 497
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    const/16 v17, 0x0

    move-wide v3, v12

    move-wide v7, v10

    move-object/from16 v9, v16

    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .local v18, "rowIndex":J
    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a4

    .line 499
    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_99
    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 501
    :goto_a4
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$status()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 503
    new-instance v3, Lio/realm/internal/OsList;

    move-wide/from16 v4, v18

    .end local v18    # "rowIndex":J
    .local v4, "rowIndex":J
    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v6

    iget-wide v7, v14, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->shipmentsIndex:J

    invoke-direct {v3, v6, v7, v8}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 504
    .local v3, "shipmentsOsList":Lio/realm/internal/OsList;
    move-object v6, v15

    check-cast v6, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;

    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v6

    .line 505
    .local v6, "shipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    if-eqz v6, :cond_10d

    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v3}, Lio/realm/internal/OsList;->size()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_10d

    .line 507
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v7

    .line 508
    .local v7, "objectCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_dd
    if-ge v8, v7, :cond_108

    .line 509
    invoke-virtual {v6, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/Shipment;

    .line 510
    .local v9, "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 511
    .local v10, "cacheItemIndexshipments":Ljava/lang/Long;
    if-nez v10, :cond_f5

    .line 512
    invoke-static {v0, v9, v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 514
    :cond_f5
    move-wide/from16 v20, v4

    .end local v4    # "rowIndex":J
    .local v20, "rowIndex":J
    int-to-long v4, v8

    move-wide/from16 v22, v12

    .end local v12    # "tableNativePtr":J
    .local v22, "tableNativePtr":J
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v4, v5, v11, v12}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 508
    .end local v9    # "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    .end local v10    # "cacheItemIndexshipments":Ljava/lang/Long;
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v4, v20

    move-wide/from16 v12, v22

    goto :goto_dd

    .line 516
    .end local v7    # "objectCount":I
    .end local v8    # "i":I
    .end local v20    # "rowIndex":J
    .end local v22    # "tableNativePtr":J
    .restart local v4    # "rowIndex":J
    .restart local v12    # "tableNativePtr":J
    :cond_108
    move-wide/from16 v20, v4

    move-wide/from16 v22, v12

    .end local v4    # "rowIndex":J
    .end local v12    # "tableNativePtr":J
    .restart local v20    # "rowIndex":J
    .restart local v22    # "tableNativePtr":J
    goto :goto_13e

    .line 517
    .end local v20    # "rowIndex":J
    .end local v22    # "tableNativePtr":J
    .restart local v4    # "rowIndex":J
    .restart local v12    # "tableNativePtr":J
    :cond_10d
    move-wide/from16 v20, v4

    move-wide/from16 v22, v12

    .end local v4    # "rowIndex":J
    .end local v12    # "tableNativePtr":J
    .restart local v20    # "rowIndex":J
    .restart local v22    # "tableNativePtr":J
    invoke-virtual {v3}, Lio/realm/internal/OsList;->removeAll()V

    .line 518
    if-eqz v6, :cond_13e

    .line 519
    invoke-virtual {v6}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/Shipment;

    .line 520
    .local v5, "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 521
    .local v7, "cacheItemIndexshipments":Ljava/lang/Long;
    if-nez v7, :cond_136

    .line 522
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 524
    :cond_136
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lio/realm/internal/OsList;->addRow(J)V

    .line 525
    .end local v5    # "shipmentsItem":Lcom/digikala/dms/model/domain/Shipment;
    .end local v7    # "cacheItemIndexshipments":Ljava/lang/Long;
    goto :goto_11a

    .line 529
    .end local v3    # "shipmentsOsList":Lio/realm/internal/OsList;
    .end local v6    # "shipmentsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    .end local v16    # "realmGet$id":Ljava/lang/String;
    .end local v20    # "rowIndex":J
    :cond_13e
    :goto_13e
    nop

    .line 483
    .end local v22    # "tableNativePtr":J
    .restart local v12    # "tableNativePtr":J
    :goto_13f
    move-object v3, v15

    move-wide/from16 v12, v22

    .end local v12    # "tableNativePtr":J
    .restart local v22    # "tableNativePtr":J
    goto/16 :goto_1c

    .line 530
    .end local v15    # "object":Lcom/digikala/dms/model/domain/Batch;
    .end local v22    # "tableNativePtr":J
    .local v3, "object":Lcom/digikala/dms/model/domain/Batch;
    .restart local v12    # "tableNativePtr":J
    :cond_144
    move-wide/from16 v22, v12

    .end local v12    # "tableNativePtr":J
    .restart local v22    # "tableNativePtr":J
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 614
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 615
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 616
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;

    .line 618
    .local v2, "aBatch":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 620
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

    .line 622
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 623
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 624
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

    .line 626
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 628
    :cond_76
    return v0

    .line 615
    .end local v2    # "aBatch":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;
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

    .line 601
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 605
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 606
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

    .line 607
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 608
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 609
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 82
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 83
    return-void

    .line 85
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 86
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    .line 87
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 88
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 89
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 90
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 91
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 92
    return-void
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 4

    .line 97
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 98
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

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

    .line 596
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$shipments()Lio/realm/RealmList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 150
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->shipmentsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_10

    .line 151
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->shipmentsRealmList:Lio/realm/RealmList;

    return-object v0

    .line 153
    :cond_10
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->shipmentsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 154
    .local v0, "osList":Lio/realm/internal/OsList;
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lcom/digikala/dms/model/domain/Shipment;

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->shipmentsRealmList:Lio/realm/RealmList;

    .line 155
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->shipmentsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$status()I
    .registers 4

    .line 127
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 128
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 104
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 105
    return-void

    .line 107
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 108
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 109
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 110
    return-void

    .line 112
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 113
    return-void

    .line 116
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 117
    if-nez p1, :cond_55

    .line 118
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 119
    return-void

    .line 121
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 122
    return-void
.end method

.method public realmSet$shipments(Lio/realm/RealmList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "value":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 162
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 163
    return-void

    .line 165
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "shipments"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 166
    return-void

    .line 169
    :cond_20
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 170
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 171
    .local v0, "realm":Lio/realm/Realm;
    move-object v1, p1

    .line 172
    .local v1, "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    move-object p1, v2

    .line 173
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    .line 174
    .local v3, "item":Lcom/digikala/dms/model/domain/Shipment;
    if-eqz v3, :cond_58

    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_58

    .line 177
    :cond_50
    invoke-virtual {v0, v3}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 175
    :cond_58
    :goto_58
    invoke-virtual {p1, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v3    # "item":Lcom/digikala/dms/model/domain/Shipment;
    :goto_5b
    goto :goto_3b

    .line 183
    .end local v0    # "realm":Lio/realm/Realm;
    .end local v1    # "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    :cond_5c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 184
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->shipmentsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 186
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

    .line 187
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 188
    .local v2, "objects":I
    nop

    .local v1, "i":I
    :goto_88
    if-ge v1, v2, :cond_ab

    .line 189
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    .line 190
    .local v3, "linkedObject":Lcom/digikala/dms/model/domain/Shipment;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 191
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

    .line 188
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/Shipment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 193
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_ab
    goto :goto_d9

    .line 194
    :cond_ac
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 195
    if-nez p1, :cond_b2

    .line 196
    return-void

    .line 198
    :cond_b2
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 199
    .restart local v2    # "objects":I
    nop

    .restart local v1    # "i":I
    :goto_b7
    if-ge v1, v2, :cond_d9

    .line 200
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    .line 201
    .restart local v3    # "linkedObject":Lcom/digikala/dms/model/domain/Shipment;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 202
    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addRow(J)V

    .line 199
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/Shipment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 205
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_d9
    :goto_d9
    return-void
.end method

.method public realmSet$status(I)V
    .registers 11
    .param p1, "value"    # I

    .line 133
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 134
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 135
    return-void

    .line 137
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 138
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 139
    return-void

    .line 142
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 143
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 575
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 576
    const-string v0, "Invalid object"

    return-object v0

    .line 578
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Batch = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string/jumbo v1, "{status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->realmGet$status()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string/jumbo v1, "{shipments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, "RealmList<Shipment>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_BatchRealmProxy.BatchColumnInfo (io.realm.com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_BatchRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BatchColumnInfo"
.end annotation


# instance fields
.field idIndex:J

.field shipmentsIndex:J

.field statusIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 51
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 52
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 43
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 44
    const-string v0, "Batch"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 45
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    .line 46
    const-string v1, "status"

    const-string v2, "status"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    .line 47
    const-string v1, "shipments"

    const-string v2, "shipments"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->shipmentsIndex:J

    .line 48
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 57
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 62
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    .line 63
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    .line 64
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->idIndex:J

    .line 65
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->statusIndex:J

    .line 66
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->shipmentsIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;->shipmentsIndex:J

    .line 67
    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_BatchRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_BatchRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_BatchRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "Batch"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
