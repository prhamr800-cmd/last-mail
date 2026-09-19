###### Class io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxy (io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;
.super Lcom/digikala/dms/model/domain/DistributionCenter;
.source "com_digikala_dms_model_domain_DistributionCenterRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/DistributionCenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/DistributionCenter;-><init>()V

    .line 79
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 80
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/DistributionCenter;
    .registers 11
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/DistributionCenter;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/DistributionCenter;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/DistributionCenter;"
        }
    .end annotation

    .line 353
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 354
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 355
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    return-object v1

    .line 359
    :cond_c
    const-class v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 360
    .local v1, "realmObject":Lcom/digikala/dms/model/domain/DistributionCenter;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    .line 363
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    .line 365
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$id()I

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$id(I)V

    .line 366
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 367
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$managerName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$managerName(Ljava/lang/String;)V

    .line 369
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v4

    .line 370
    .local v4, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    if-nez v4, :cond_45

    .line 371
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_58

    .line 373
    :cond_45
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/LatLong;

    .line 374
    .local v5, "cachelatLong":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v5, :cond_51

    .line 375
    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_58

    .line 377
    :cond_51
    invoke-static {p0, v4, p2, p3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v6

    invoke-interface {v3, v6}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 380
    .end local v5    # "cachelatLong":Lcom/digikala/dms/model/domain/LatLong;
    :goto_58
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/DistributionCenter;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/DistributionCenter;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/DistributionCenter;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/DistributionCenter;"
        }
    .end annotation

    .line 334
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

    .line 335
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 336
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 339
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 340
    return-object p1

    .line 337
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 345
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 346
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/DistributionCenter;

    return-object v2

    .line 349
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 233
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/DistributionCenter;IILjava/util/Map;)Lcom/digikala/dms/model/domain/DistributionCenter;
    .registers 10
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/DistributionCenter;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/DistributionCenter;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/DistributionCenter;"
        }
    .end annotation

    .line 530
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_53

    if-nez p0, :cond_5

    goto :goto_53

    .line 533
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 535
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 536
    new-instance v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-direct {v1}, Lcom/digikala/dms/model/domain/DistributionCenter;-><init>()V

    .line 537
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/domain/DistributionCenter;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 540
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/DistributionCenter;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 541
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    return-object v1

    .line 543
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 544
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/DistributionCenter;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 546
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    .line 547
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    .line 548
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$id()I

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$id(I)V

    .line 549
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 550
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$managerName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$managerName(Ljava/lang/String;)V

    .line 553
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5, p2, p3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/LatLong;IILjava/util/Map;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 555
    return-object v1

    .line 531
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/DistributionCenter;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;
    :cond_53
    :goto_53
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 220
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "DistributionCenter"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 221
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v5, "id"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 222
    const-string/jumbo v5, "title"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 223
    const-string v5, "managerName"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 224
    const-string v1, "latLong"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v3, "LatLong"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 225
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/DistributionCenter;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "latLong"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 249
    const-string v2, "latLong"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_13
    const-class v2, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {p0, v2, v1, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 253
    .local v1, "obj":Lcom/digikala/dms/model/domain/DistributionCenter;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    .line 254
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 255
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 258
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$id(I)V

    goto :goto_40

    .line 256
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_40
    :goto_40
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_61

    .line 262
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 263
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_61

    .line 265
    :cond_57
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 268
    :cond_61
    :goto_61
    const-string v3, "managerName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 269
    const-string v3, "managerName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 270
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$managerName(Ljava/lang/String;)V

    goto :goto_7e

    .line 272
    :cond_75
    const-string v3, "managerName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$managerName(Ljava/lang/String;)V

    .line 275
    :cond_7e
    :goto_7e
    const-string v3, "latLong"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 276
    const-string v3, "latLong"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 277
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_9f

    .line 279
    :cond_92
    const-string v3, "latLong"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v3

    .line 280
    .local v3, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 283
    .end local v3    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_9f
    :goto_9f
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/DistributionCenter;
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

    .line 290
    new-instance v0, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/DistributionCenter;-><init>()V

    .line 291
    .local v0, "obj":Lcom/digikala/dms/model/domain/DistributionCenter;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    .line 292
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 293
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 294
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "name":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 297
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_2e

    .line 298
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$id(I)V

    goto/16 :goto_9b

    .line 300
    :cond_2e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 301
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 303
    :cond_39
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5a

    .line 304
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_53

    .line 305
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_9b

    .line 307
    :cond_53
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 308
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_9b

    .line 310
    :cond_5a
    const-string v3, "managerName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 311
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_72

    .line 312
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$managerName(Ljava/lang/String;)V

    goto :goto_9b

    .line 314
    :cond_72
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 315
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$managerName(Ljava/lang/String;)V

    goto :goto_9b

    .line 317
    :cond_79
    const-string v3, "latLong"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 318
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_90

    .line 319
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 320
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_9b

    .line 322
    :cond_90
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v3

    .line 323
    .local v3, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 324
    .end local v3    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    goto :goto_9b

    .line 326
    :cond_98
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 328
    .end local v2    # "name":Ljava/lang/String;
    :goto_9b
    goto/16 :goto_b

    .line 329
    :cond_9d
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 330
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/DistributionCenter;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 229
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 237
    const-string v0, "DistributionCenter"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J
    .registers 26
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/DistributionCenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/DistributionCenter;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 384
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

    .line 385
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 387
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 388
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 389
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    .line 390
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 391
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$id()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 393
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v18

    .line 394
    .local v18, "realmGet$title":Ljava/lang/String;
    if-eqz v18, :cond_87

    .line 395
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v18

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 397
    :cond_87
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$managerName()Ljava/lang/String;

    move-result-object v19

    .line 398
    .local v19, "realmGet$managerName":Ljava/lang/String;
    if-eqz v19, :cond_9b

    .line 399
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v19

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 402
    :cond_9b
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 403
    .local v12, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_c9

    .line 404
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 405
    .local v4, "cachelatLong":Ljava/lang/Long;
    if-nez v4, :cond_b4

    .line 406
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 408
    .end local v4    # "cachelatLong":Ljava/lang/Long;
    .local v20, "cachelatLong":Ljava/lang/Long;
    :cond_b4
    move-object/from16 v20, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v21, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v22, v12

    .end local v12    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v22, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v12, v21

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_cb

    .line 410
    .end local v20    # "cachelatLong":Ljava/lang/Long;
    .end local v22    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v12    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_c9
    move-object/from16 v22, v12

    .end local v12    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v22    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :goto_cb
    return-wide v16
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 25
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

    .line 414
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 415
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 416
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    .line 417
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;
    const/4 v3, 0x0

    .line 418
    .local v3, "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 419
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 420
    .end local v3    # "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    .local v15, "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 421
    goto/16 :goto_e4

    .line 423
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

    .line 424
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

    .line 425
    goto/16 :goto_e4

    .line 427
    :cond_73
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 428
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 430
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v11

    .line 431
    .local v11, "realmGet$title":Ljava/lang/String;
    if-eqz v11, :cond_a2

    .line 432
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 434
    :cond_a2
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$managerName()Ljava/lang/String;

    move-result-object v18

    .line 435
    .local v18, "realmGet$managerName":Ljava/lang/String;
    if-eqz v18, :cond_b6

    .line 436
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 439
    :cond_b6
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v10

    .line 440
    .local v10, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v10, :cond_e3

    .line 441
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 442
    .local v3, "cachelatLong":Ljava/lang/Long;
    if-nez v3, :cond_cf

    .line 443
    invoke-static {v0, v10, v1}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 445
    .end local v3    # "cachelatLong":Ljava/lang/Long;
    .local v19, "cachelatLong":Ljava/lang/Long;
    :cond_cf
    move-object/from16 v19, v3

    iget-wide v4, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v20, 0x0

    move-object v3, v2

    move-wide/from16 v6, v16

    move-object/from16 v21, v10

    .end local v10    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v21, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v10, v20

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 447
    .end local v11    # "realmGet$title":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$managerName":Ljava/lang/String;
    .end local v19    # "cachelatLong":Ljava/lang/Long;
    .end local v21    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_e3
    nop

    .line 417
    :goto_e4
    move-object v3, v15

    goto/16 :goto_1c

    .line 448
    .end local v15    # "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    .local v3, "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    :cond_e7
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J
    .registers 26
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/DistributionCenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/DistributionCenter;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 451
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

    .line 452
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 454
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 455
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 456
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    .line 457
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 458
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$id()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 460
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v18

    .line 461
    .local v18, "realmGet$title":Ljava/lang/String;
    if-eqz v18, :cond_88

    .line 462
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v18

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_91

    .line 464
    :cond_88
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 466
    :goto_91
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$managerName()Ljava/lang/String;

    move-result-object v19

    .line 467
    .local v19, "realmGet$managerName":Ljava/lang/String;
    if-eqz v19, :cond_a6

    .line 468
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v19

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_af

    .line 470
    :cond_a6
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 473
    :goto_af
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 474
    .local v12, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_dd

    .line 475
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 476
    .local v4, "cachelatLong":Ljava/lang/Long;
    if-nez v4, :cond_c8

    .line 477
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 479
    .end local v4    # "cachelatLong":Ljava/lang/Long;
    .local v20, "cachelatLong":Ljava/lang/Long;
    :cond_c8
    move-object/from16 v20, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v21, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v22, v12

    .end local v12    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v22, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v12, v21

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 480
    .end local v20    # "cachelatLong":Ljava/lang/Long;
    goto :goto_e7

    .line 481
    .end local v22    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v12    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_dd
    move-object/from16 v22, v12

    .end local v12    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v22    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 483
    :goto_e7
    return-wide v16
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

    .line 487
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 488
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 489
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    .line 490
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;
    const/4 v3, 0x0

    .line 491
    .local v3, "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_107

    .line 492
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 493
    .end local v3    # "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    .local v15, "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 494
    goto/16 :goto_104

    .line 496
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

    .line 497
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

    .line 498
    goto/16 :goto_104

    .line 500
    :cond_73
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 501
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 503
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v18

    .line 504
    .local v18, "realmGet$title":Ljava/lang/String;
    if-eqz v18, :cond_a4

    .line 505
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ad

    .line 507
    :cond_a4
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 509
    :goto_ad
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$managerName()Ljava/lang/String;

    move-result-object v19

    .line 510
    .local v19, "realmGet$managerName":Ljava/lang/String;
    if-eqz v19, :cond_c2

    .line 511
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_cb

    .line 513
    :cond_c2
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 516
    :goto_cb
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;->realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v11

    .line 517
    .local v11, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v11, :cond_f9

    .line 518
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 519
    .local v3, "cachelatLong":Ljava/lang/Long;
    if-nez v3, :cond_e4

    .line 520
    invoke-static {v0, v11, v1}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 522
    .end local v3    # "cachelatLong":Ljava/lang/Long;
    .local v20, "cachelatLong":Ljava/lang/Long;
    :cond_e4
    move-object/from16 v20, v3

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/16 v21, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v22, v11

    .end local v11    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v22, "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v11, v21

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 523
    .end local v20    # "cachelatLong":Ljava/lang/Long;
    goto :goto_103

    .line 524
    .end local v22    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v11    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_f9
    move-object/from16 v22, v11

    .end local v11    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v22    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 526
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$title":Ljava/lang/String;
    .end local v19    # "realmGet$managerName":Ljava/lang/String;
    .end local v22    # "latLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :goto_103
    nop

    .line 490
    :goto_104
    move-object v3, v15

    goto/16 :goto_1c

    .line 527
    .end local v15    # "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    .local v3, "object":Lcom/digikala/dms/model/domain/DistributionCenter;
    :cond_107
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 604
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 605
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 606
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;

    .line 608
    .local v2, "aDistributionCenter":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 610
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

    .line 612
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 613
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 614
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

    .line 616
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 618
    :cond_76
    return v0

    .line 605
    .end local v2    # "aDistributionCenter":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;
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

    .line 591
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 595
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 596
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

    .line 597
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 598
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 599
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 84
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    .line 89
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 90
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 91
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 92
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 93
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 94
    return-void
.end method

.method public realmGet$id()I
    .registers 4

    .line 99
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 100
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;
    .registers 8

    .line 180
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 181
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/model/domain/LatLong;

    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v3, v3, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/LatLong;

    return-object v0
.end method

.method public realmGet$managerName()Ljava/lang/String;
    .registers 4

    .line 151
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 152
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

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

    .line 586
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .registers 4

    .line 121
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 122
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$id(I)V
    .registers 11
    .param p1, "value"    # I

    .line 105
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 106
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 107
    return-void

    .line 109
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 110
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 111
    return-void

    .line 114
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 115
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 116
    return-void
.end method

.method public realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 12
    .param p1, "value"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 189
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 190
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 191
    return-void

    .line 193
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "latLong"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 194
    return-void

    .line 196
    :cond_20
    if-eqz p1, :cond_37

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 197
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/digikala/dms/model/domain/LatLong;

    .line 199
    :cond_37
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 200
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_47

    .line 202
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 203
    return-void

    .line 205
    :cond_47
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 206
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v3, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

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

    .line 207
    return-void

    .line 210
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_6c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 211
    if-nez p1, :cond_85

    .line 212
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 213
    return-void

    .line 215
    :cond_85
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 216
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    move-object v3, p1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    .line 217
    return-void
.end method

.method public realmSet$managerName(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 158
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 159
    return-void

    .line 161
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 162
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 163
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 164
    return-void

    .line 166
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 167
    return-void

    .line 170
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 171
    if-nez p1, :cond_55

    .line 172
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 173
    return-void

    .line 175
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 176
    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 128
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 129
    return-void

    .line 131
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 132
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 133
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 134
    return-void

    .line 136
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 137
    return-void

    .line 140
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 141
    if-nez p1, :cond_55

    .line 142
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 143
    return-void

    .line 145
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 561
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 562
    const-string v0, "Invalid object"

    return-object v0

    .line 564
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DistributionCenter = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->realmGet$id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string/jumbo v1, "{title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_39
    const-string v1, "null"

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string/jumbo v1, "{managerName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->realmGet$managerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->realmGet$managerName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    :cond_5a
    const-string v1, "null"

    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string/jumbo v1, "{latLong:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v1

    if-eqz v1, :cond_79

    const-string v1, "LatLong"

    goto :goto_7b

    :cond_79
    const-string v1, "null"

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_DistributionCenterRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "DistributionCenter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxy.DistributionCenterColumnInfo (io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_DistributionCenterRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistributionCenterColumnInfo"
.end annotation


# instance fields
.field idIndex:J

.field latLongIndex:J

.field managerNameIndex:J

.field titleIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 53
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 54
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

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
    const-string v0, "DistributionCenter"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 46
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    .line 47
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    .line 48
    const-string v1, "managerName"

    const-string v2, "managerName"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    .line 49
    const-string v1, "latLong"

    const-string v2, "latLong"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    .line 50
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 59
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 64
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    .line 65
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    .line 66
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->idIndex:J

    .line 67
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->titleIndex:J

    .line 68
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->managerNameIndex:J

    .line 69
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;->latLongIndex:J

    .line 70
    return-void
.end method
