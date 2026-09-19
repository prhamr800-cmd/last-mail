###### Class io.realm.com_digikala_dms_model_domain_CourierRealmProxy (io.realm.com_digikala_dms_model_domain_CourierRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;
.super Lcom/digikala/dms/model/domain/Courier;
.source "com_digikala_dms_model_domain_CourierRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/Courier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 88
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/Courier;-><init>()V

    .line 94
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 95
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Courier;
    .registers 12
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/Courier;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Courier;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/Courier;"
        }
    .end annotation

    .line 601
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 602
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 603
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    return-object v1

    .line 607
    :cond_c
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    .line 608
    .local v1, "realmObject":Lcom/digikala/dms/model/domain/Courier;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    .line 611
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    .line 613
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 614
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 615
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$userName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$userName(Ljava/lang/String;)V

    .line 616
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$avatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$avatarUrl(Ljava/lang/String;)V

    .line 618
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v4

    .line 619
    .local v4, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    const/4 v5, 0x0

    if-nez v4, :cond_4c

    .line 620
    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    goto :goto_5f

    .line 622
    :cond_4c
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 623
    .local v6, "cachedistributionCenter":Lcom/digikala/dms/model/domain/DistributionCenter;
    if-eqz v6, :cond_58

    .line 624
    invoke-interface {v3, v6}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    goto :goto_5f

    .line 626
    :cond_58
    invoke-static {p0, v4, p2, p3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v7

    invoke-interface {v3, v7}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    .line 630
    .end local v6    # "cachedistributionCenter":Lcom/digikala/dms/model/domain/DistributionCenter;
    :goto_5f
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$batch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v6

    .line 631
    .local v6, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    if-nez v6, :cond_69

    .line 632
    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    goto :goto_7c

    .line 634
    :cond_69
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/Batch;

    .line 635
    .local v5, "cachebatch":Lcom/digikala/dms/model/domain/Batch;
    if-eqz v5, :cond_75

    .line 636
    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    goto :goto_7c

    .line 638
    :cond_75
    invoke-static {p0, v6, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v7

    invoke-interface {v3, v7}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    .line 641
    .end local v5    # "cachebatch":Lcom/digikala/dms/model/domain/Batch;
    :goto_7c
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isLoggedIn()Z

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$isLoggedIn(Z)V

    .line 642
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isBatchFinalized()Z

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$isBatchFinalized(Z)V

    .line 643
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$notificationToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$notificationToken(Ljava/lang/String;)V

    .line 644
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Courier;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/Courier;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Courier;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/Courier;"
        }
    .end annotation

    .line 582
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

    .line 583
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 584
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 587
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 588
    return-object p1

    .line 585
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 592
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 593
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 594
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    return-object v2

    .line 597
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Courier;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 406
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/Courier;IILjava/util/Map;)Lcom/digikala/dms/model/domain/Courier;
    .registers 10
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/Courier;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/Courier;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/Courier;"
        }
    .end annotation

    .line 898
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_7c

    if-nez p0, :cond_5

    goto :goto_7c

    .line 901
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 903
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 904
    new-instance v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-direct {v1}, Lcom/digikala/dms/model/domain/Courier;-><init>()V

    .line 905
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/domain/Courier;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 908
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/Courier;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 909
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    return-object v1

    .line 911
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    .line 912
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/Courier;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 914
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    .line 915
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    .line 916
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 917
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 918
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$userName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$userName(Ljava/lang/String;)V

    .line 919
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$avatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$avatarUrl(Ljava/lang/String;)V

    .line 922
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5, p2, p3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/DistributionCenter;IILjava/util/Map;)Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    .line 925
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$batch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/Batch;IILjava/util/Map;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    .line 926
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isLoggedIn()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$isLoggedIn(Z)V

    .line 927
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isBatchFinalized()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$isBatchFinalized(Z)V

    .line 928
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$notificationToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$notificationToken(Ljava/lang/String;)V

    .line 930
    return-object v1

    .line 899
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/Courier;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;
    :cond_7c
    :goto_7c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 388
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "Courier"

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 389
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v5, "id"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 390
    const-string v5, "name"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 391
    const-string/jumbo v5, "userName"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 392
    const-string v5, "avatarUrl"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 393
    const-string v1, "distributionCenter"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v3, "DistributionCenter"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 394
    const-string v1, "batch"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v3, "Batch"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 395
    const-string v5, "isLoggedIn"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 396
    const-string v5, "isBatchFinalized"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 397
    const-string v5, "notificationToken"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 398
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/Courier;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "distributionCenter"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 422
    const-string v1, "distributionCenter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_13
    const-string v1, "batch"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 425
    const-string v1, "batch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_20
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    .line 429
    .local v1, "obj":Lcom/digikala/dms/model/domain/Courier;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    .line 430
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4a

    .line 431
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 432
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_4a

    .line 434
    :cond_41
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 437
    :cond_4a
    :goto_4a
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 438
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 439
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_67

    .line 441
    :cond_5e
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 444
    :cond_67
    :goto_67
    const-string/jumbo v3, "userName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 445
    const-string/jumbo v3, "userName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 446
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$userName(Ljava/lang/String;)V

    goto :goto_87

    .line 448
    :cond_7d
    const-string/jumbo v3, "userName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$userName(Ljava/lang/String;)V

    .line 451
    :cond_87
    :goto_87
    const-string v3, "avatarUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 452
    const-string v3, "avatarUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 453
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$avatarUrl(Ljava/lang/String;)V

    goto :goto_a4

    .line 455
    :cond_9b
    const-string v3, "avatarUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$avatarUrl(Ljava/lang/String;)V

    .line 458
    :cond_a4
    :goto_a4
    const-string v3, "distributionCenter"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 459
    const-string v3, "distributionCenter"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 460
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    goto :goto_c5

    .line 462
    :cond_b8
    const-string v3, "distributionCenter"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v3

    .line 463
    .local v3, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    .line 466
    .end local v3    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    :cond_c5
    :goto_c5
    const-string v3, "batch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 467
    const-string v3, "batch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 468
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    goto :goto_e6

    .line 470
    :cond_d9
    const-string v3, "batch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v3

    .line 471
    .local v3, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    .line 474
    .end local v3    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    :cond_e6
    :goto_e6
    const-string v3, "isLoggedIn"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 475
    const-string v3, "isLoggedIn"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_100

    .line 478
    const-string v3, "isLoggedIn"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$isLoggedIn(Z)V

    goto :goto_108

    .line 476
    :cond_100
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'isLoggedIn\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    :cond_108
    :goto_108
    const-string v3, "isBatchFinalized"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 482
    const-string v3, "isBatchFinalized"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_122

    .line 485
    const-string v3, "isBatchFinalized"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$isBatchFinalized(Z)V

    goto :goto_12a

    .line 483
    :cond_122
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'isBatchFinalized\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 488
    :cond_12a
    :goto_12a
    const-string v3, "notificationToken"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_147

    .line 489
    const-string v3, "notificationToken"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 490
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$notificationToken(Ljava/lang/String;)V

    goto :goto_147

    .line 492
    :cond_13e
    const-string v3, "notificationToken"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$notificationToken(Ljava/lang/String;)V

    .line 495
    :cond_147
    :goto_147
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/Courier;
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

    .line 502
    new-instance v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/Courier;-><init>()V

    .line 503
    .local v0, "obj":Lcom/digikala/dms/model/domain/Courier;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    .line 504
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 505
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_146

    .line 506
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "name":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 509
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2f

    .line 510
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto/16 :goto_144

    .line 512
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 513
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto/16 :goto_144

    .line 515
    :cond_37
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 516
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_50

    .line 517
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto/16 :goto_144

    .line 519
    :cond_50
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 520
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto/16 :goto_144

    .line 522
    :cond_58
    const-string/jumbo v3, "userName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 523
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_72

    .line 524
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$userName(Ljava/lang/String;)V

    goto/16 :goto_144

    .line 526
    :cond_72
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 527
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$userName(Ljava/lang/String;)V

    goto/16 :goto_144

    .line 529
    :cond_7a
    const-string v3, "avatarUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 530
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_93

    .line 531
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$avatarUrl(Ljava/lang/String;)V

    goto/16 :goto_144

    .line 533
    :cond_93
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 534
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$avatarUrl(Ljava/lang/String;)V

    goto/16 :goto_144

    .line 536
    :cond_9b
    const-string v3, "distributionCenter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 537
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_b3

    .line 538
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 539
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    goto/16 :goto_144

    .line 541
    :cond_b3
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v3

    .line 542
    .local v3, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    .line 543
    .end local v3    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    goto/16 :goto_144

    .line 544
    :cond_bc
    const-string v3, "batch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 545
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_d4

    .line 546
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 547
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    goto/16 :goto_144

    .line 549
    :cond_d4
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v3

    .line 550
    .local v3, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    .line 551
    .end local v3    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    goto :goto_144

    .line 552
    :cond_dc
    const-string v3, "isLoggedIn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 553
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_f4

    .line 554
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$isLoggedIn(Z)V

    goto :goto_144

    .line 556
    :cond_f4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 557
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'isLoggedIn\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 559
    :cond_ff
    const-string v3, "isBatchFinalized"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 560
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_117

    .line 561
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$isBatchFinalized(Z)V

    goto :goto_144

    .line 563
    :cond_117
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 564
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'isBatchFinalized\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 566
    :cond_122
    const-string v3, "notificationToken"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    .line 567
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_13a

    .line 568
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$notificationToken(Ljava/lang/String;)V

    goto :goto_144

    .line 570
    :cond_13a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 571
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmSet$notificationToken(Ljava/lang/String;)V

    goto :goto_144

    .line 574
    :cond_141
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 576
    .end local v2    # "name":Ljava/lang/String;
    :goto_144
    goto/16 :goto_b

    .line 577
    :cond_146
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 578
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 402
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 410
    const-string v0, "Courier"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;Ljava/util/Map;)J
    .registers 29
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/Courier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Courier;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 648
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

    .line 649
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 651
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 652
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 653
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    .line 654
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 655
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    .line 657
    .local v18, "realmGet$id":Ljava/lang/String;
    if-eqz v18, :cond_76

    .line 658
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v18

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 660
    :cond_76
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v19

    .line 661
    .local v19, "realmGet$name":Ljava/lang/String;
    if-eqz v19, :cond_8a

    .line 662
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v19

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 664
    :cond_8a
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$userName()Ljava/lang/String;

    move-result-object v20

    .line 665
    .local v20, "realmGet$userName":Ljava/lang/String;
    if-eqz v20, :cond_9e

    .line 666
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v20

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 668
    :cond_9e
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$avatarUrl()Ljava/lang/String;

    move-result-object v21

    .line 669
    .local v21, "realmGet$avatarUrl":Ljava/lang/String;
    if-eqz v21, :cond_b2

    .line 670
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v21

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 673
    :cond_b2
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v12

    .line 674
    .local v12, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    if-eqz v12, :cond_e0

    .line 675
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 676
    .local v4, "cachedistributionCenter":Ljava/lang/Long;
    if-nez v4, :cond_cb

    .line 677
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 679
    .end local v4    # "cachedistributionCenter":Ljava/lang/Long;
    .local v22, "cachedistributionCenter":Ljava/lang/Long;
    :cond_cb
    move-object/from16 v22, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v23, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v24, v12

    .end local v12    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .local v24, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    move/from16 v12, v23

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_e2

    .line 682
    .end local v22    # "cachedistributionCenter":Ljava/lang/Long;
    .end local v24    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .restart local v12    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    :cond_e0
    move-object/from16 v24, v12

    .end local v12    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .restart local v24    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    :goto_e2
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$batch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v12

    .line 683
    .local v12, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    if-eqz v12, :cond_110

    .line 684
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 685
    .local v4, "cachebatch":Ljava/lang/Long;
    if-nez v4, :cond_fb

    .line 686
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 688
    .end local v4    # "cachebatch":Ljava/lang/Long;
    .local v22, "cachebatch":Ljava/lang/Long;
    :cond_fb
    move-object/from16 v22, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v23, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v25, v12

    .end local v12    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .local v25, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    move/from16 v12, v23

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_112

    .line 690
    .end local v22    # "cachebatch":Ljava/lang/Long;
    .end local v25    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .restart local v12    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    :cond_110
    move-object/from16 v25, v12

    .end local v12    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .restart local v25    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    :goto_112
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isLoggedIn()Z

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 691
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isBatchFinalized()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 692
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$notificationToken()Ljava/lang/String;

    move-result-object v12

    .line 693
    .local v12, "realmGet$notificationToken":Ljava/lang/String;
    if-eqz v12, :cond_142

    .line 694
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object v10, v12

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 696
    :cond_142
    return-wide v16
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 28
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

    .line 700
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 701
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 702
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    .line 703
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;
    const/4 v3, 0x0

    .line 704
    .local v3, "object":Lcom/digikala/dms/model/domain/Courier;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 705
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/domain/Courier;

    .line 706
    .end local v3    # "object":Lcom/digikala/dms/model/domain/Courier;
    .local v14, "object":Lcom/digikala/dms/model/domain/Courier;
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 707
    goto/16 :goto_158

    .line 709
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

    .line 710
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

    .line 711
    goto/16 :goto_158

    .line 713
    :cond_73
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 714
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v17

    .line 716
    .local v17, "realmGet$id":Ljava/lang/String;
    if-eqz v17, :cond_91

    .line 717
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 719
    :cond_91
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v18

    .line 720
    .local v18, "realmGet$name":Ljava/lang/String;
    if-eqz v18, :cond_a4

    .line 721
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 723
    :cond_a4
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$userName()Ljava/lang/String;

    move-result-object v19

    .line 724
    .local v19, "realmGet$userName":Ljava/lang/String;
    if-eqz v19, :cond_b7

    .line 725
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 727
    :cond_b7
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$avatarUrl()Ljava/lang/String;

    move-result-object v20

    .line 728
    .local v20, "realmGet$avatarUrl":Ljava/lang/String;
    if-eqz v20, :cond_ca

    .line 729
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 732
    :cond_ca
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v10

    .line 733
    .local v10, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    if-eqz v10, :cond_f7

    .line 734
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 735
    .local v3, "cachedistributionCenter":Ljava/lang/Long;
    if-nez v3, :cond_e3

    .line 736
    invoke-static {v0, v10, v1}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 738
    .end local v3    # "cachedistributionCenter":Ljava/lang/Long;
    .local v21, "cachedistributionCenter":Ljava/lang/Long;
    :cond_e3
    move-object/from16 v21, v3

    iget-wide v4, v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v22, 0x0

    move-object v3, v2

    move-wide v6, v15

    move-object/from16 v23, v10

    .end local v10    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .local v23, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    move/from16 v10, v22

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    goto :goto_f9

    .line 741
    .end local v21    # "cachedistributionCenter":Ljava/lang/Long;
    .end local v23    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .restart local v10    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    :cond_f7
    move-object/from16 v23, v10

    .end local v10    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .restart local v23    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    :goto_f9
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$batch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v10

    .line 742
    .local v10, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    if-eqz v10, :cond_126

    .line 743
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 744
    .local v3, "cachebatch":Ljava/lang/Long;
    if-nez v3, :cond_112

    .line 745
    invoke-static {v0, v10, v1}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 747
    .end local v3    # "cachebatch":Ljava/lang/Long;
    .local v21, "cachebatch":Ljava/lang/Long;
    :cond_112
    move-object/from16 v21, v3

    iget-wide v4, v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v22, 0x0

    move-object v3, v2

    move-wide v6, v15

    move-object/from16 v24, v10

    .end local v10    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .local v24, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    move/from16 v10, v22

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    goto :goto_128

    .line 749
    .end local v21    # "cachebatch":Ljava/lang/Long;
    .end local v24    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .restart local v10    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    :cond_126
    move-object/from16 v24, v10

    .end local v10    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .restart local v24    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    :goto_128
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isLoggedIn()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 750
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isBatchFinalized()Z

    move-result v9

    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 751
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$notificationToken()Ljava/lang/String;

    move-result-object v21

    .line 752
    .local v21, "realmGet$notificationToken":Ljava/lang/String;
    if-eqz v21, :cond_157

    .line 753
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 755
    .end local v15    # "rowIndex":J
    .end local v17    # "realmGet$id":Ljava/lang/String;
    .end local v18    # "realmGet$name":Ljava/lang/String;
    .end local v19    # "realmGet$userName":Ljava/lang/String;
    .end local v20    # "realmGet$avatarUrl":Ljava/lang/String;
    .end local v21    # "realmGet$notificationToken":Ljava/lang/String;
    .end local v23    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .end local v24    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    :cond_157
    nop

    .line 703
    :goto_158
    move-object v3, v14

    goto/16 :goto_1c

    .line 756
    .end local v14    # "object":Lcom/digikala/dms/model/domain/Courier;
    .local v3, "object":Lcom/digikala/dms/model/domain/Courier;
    :cond_15b
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;Ljava/util/Map;)J
    .registers 29
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/Courier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Courier;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 759
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

    .line 760
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 762
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 763
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 764
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    .line 765
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 766
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    .line 768
    .local v18, "realmGet$id":Ljava/lang/String;
    if-eqz v18, :cond_77

    .line 769
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v18

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_80

    .line 771
    :cond_77
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 773
    :goto_80
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v19

    .line 774
    .local v19, "realmGet$name":Ljava/lang/String;
    if-eqz v19, :cond_95

    .line 775
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v19

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9e

    .line 777
    :cond_95
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 779
    :goto_9e
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$userName()Ljava/lang/String;

    move-result-object v20

    .line 780
    .local v20, "realmGet$userName":Ljava/lang/String;
    if-eqz v20, :cond_b3

    .line 781
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v20

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_bc

    .line 783
    :cond_b3
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 785
    :goto_bc
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$avatarUrl()Ljava/lang/String;

    move-result-object v21

    .line 786
    .local v21, "realmGet$avatarUrl":Ljava/lang/String;
    if-eqz v21, :cond_d1

    .line 787
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v10, v21

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_da

    .line 789
    :cond_d1
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 792
    :goto_da
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v12

    .line 793
    .local v12, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    if-eqz v12, :cond_108

    .line 794
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 795
    .local v4, "cachedistributionCenter":Ljava/lang/Long;
    if-nez v4, :cond_f3

    .line 796
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 798
    .end local v4    # "cachedistributionCenter":Ljava/lang/Long;
    .local v22, "cachedistributionCenter":Ljava/lang/Long;
    :cond_f3
    move-object/from16 v22, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v23, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v24, v12

    .end local v12    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .local v24, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    move/from16 v12, v23

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 799
    .end local v22    # "cachedistributionCenter":Ljava/lang/Long;
    goto :goto_112

    .line 800
    .end local v24    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .restart local v12    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    :cond_108
    move-object/from16 v24, v12

    .end local v12    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .restart local v24    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 803
    :goto_112
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$batch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v12

    .line 804
    .local v12, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    if-eqz v12, :cond_140

    .line 805
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 806
    .local v4, "cachebatch":Ljava/lang/Long;
    if-nez v4, :cond_12b

    .line 807
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 809
    .end local v4    # "cachebatch":Ljava/lang/Long;
    .local v22, "cachebatch":Ljava/lang/Long;
    :cond_12b
    move-object/from16 v22, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v23, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v25, v12

    .end local v12    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .local v25, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    move/from16 v12, v23

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 810
    .end local v22    # "cachebatch":Ljava/lang/Long;
    goto :goto_14a

    .line 811
    .end local v25    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .restart local v12    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    :cond_140
    move-object/from16 v25, v12

    .end local v12    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .restart local v25    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 813
    :goto_14a
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isLoggedIn()Z

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 814
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isBatchFinalized()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 815
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$notificationToken()Ljava/lang/String;

    move-result-object v12

    .line 816
    .local v12, "realmGet$notificationToken":Ljava/lang/String;
    if-eqz v12, :cond_17b

    .line 817
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object v10, v12

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_184

    .line 819
    :cond_17b
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 821
    :goto_184
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

    .line 825
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 826
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 827
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    .line 828
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;
    const/4 v3, 0x0

    .line 829
    .local v3, "object":Lcom/digikala/dms/model/domain/Courier;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a4

    .line 830
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/Courier;

    .line 831
    .end local v3    # "object":Lcom/digikala/dms/model/domain/Courier;
    .local v15, "object":Lcom/digikala/dms/model/domain/Courier;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 832
    goto/16 :goto_1a1

    .line 834
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

    .line 835
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

    .line 836
    goto/16 :goto_1a1

    .line 838
    :cond_73
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 839
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    .line 841
    .local v18, "realmGet$id":Ljava/lang/String;
    if-eqz v18, :cond_93

    .line 842
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9c

    .line 844
    :cond_93
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 846
    :goto_9c
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v19

    .line 847
    .local v19, "realmGet$name":Ljava/lang/String;
    if-eqz v19, :cond_b1

    .line 848
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ba

    .line 850
    :cond_b1
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 852
    :goto_ba
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$userName()Ljava/lang/String;

    move-result-object v20

    .line 853
    .local v20, "realmGet$userName":Ljava/lang/String;
    if-eqz v20, :cond_cf

    .line 854
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d8

    .line 856
    :cond_cf
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 858
    :goto_d8
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$avatarUrl()Ljava/lang/String;

    move-result-object v21

    .line 859
    .local v21, "realmGet$avatarUrl":Ljava/lang/String;
    if-eqz v21, :cond_ed

    .line 860
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f6

    .line 862
    :cond_ed
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 865
    :goto_f6
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v11

    .line 866
    .local v11, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    if-eqz v11, :cond_124

    .line 867
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 868
    .local v3, "cachedistributionCenter":Ljava/lang/Long;
    if-nez v3, :cond_10f

    .line 869
    invoke-static {v0, v11, v1}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 871
    .end local v3    # "cachedistributionCenter":Ljava/lang/Long;
    .local v22, "cachedistributionCenter":Ljava/lang/Long;
    :cond_10f
    move-object/from16 v22, v3

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/16 v23, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v24, v11

    .end local v11    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .local v24, "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    move/from16 v11, v23

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 872
    .end local v22    # "cachedistributionCenter":Ljava/lang/Long;
    goto :goto_12e

    .line 873
    .end local v24    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .restart local v11    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    :cond_124
    move-object/from16 v24, v11

    .end local v11    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .restart local v24    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 876
    :goto_12e
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$batch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v11

    .line 877
    .local v11, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    if-eqz v11, :cond_15c

    .line 878
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 879
    .local v3, "cachebatch":Ljava/lang/Long;
    if-nez v3, :cond_147

    .line 880
    invoke-static {v0, v11, v1}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 882
    .end local v3    # "cachebatch":Ljava/lang/Long;
    .local v22, "cachebatch":Ljava/lang/Long;
    :cond_147
    move-object/from16 v22, v3

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/16 v23, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v25, v11

    .end local v11    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .local v25, "batchObj":Lcom/digikala/dms/model/domain/Batch;
    move/from16 v11, v23

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 883
    .end local v22    # "cachebatch":Ljava/lang/Long;
    goto :goto_166

    .line 884
    .end local v25    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .restart local v11    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    :cond_15c
    move-object/from16 v25, v11

    .end local v11    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    .restart local v25    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 886
    :goto_166
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isLoggedIn()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 887
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$isBatchFinalized()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 888
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;->realmGet$notificationToken()Ljava/lang/String;

    move-result-object v11

    .line 889
    .local v11, "realmGet$notificationToken":Ljava/lang/String;
    if-eqz v11, :cond_197

    .line 890
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1a0

    .line 892
    :cond_197
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 894
    .end local v11    # "realmGet$notificationToken":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$id":Ljava/lang/String;
    .end local v19    # "realmGet$name":Ljava/lang/String;
    .end local v20    # "realmGet$userName":Ljava/lang/String;
    .end local v21    # "realmGet$avatarUrl":Ljava/lang/String;
    .end local v24    # "distributionCenterObj":Lcom/digikala/dms/model/domain/DistributionCenter;
    .end local v25    # "batchObj":Lcom/digikala/dms/model/domain/Batch;
    :goto_1a0
    nop

    .line 828
    :goto_1a1
    move-object v3, v15

    goto/16 :goto_1c

    .line 895
    .end local v15    # "object":Lcom/digikala/dms/model/domain/Courier;
    .local v3, "object":Lcom/digikala/dms/model/domain/Courier;
    :cond_1a4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 999
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1000
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 1001
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;

    .line 1003
    .local v2, "aCourier":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1004
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1005
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

    .line 1007
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1008
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1009
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

    .line 1011
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 1013
    :cond_76
    return v0

    .line 1000
    .end local v2    # "aCourier":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;
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

    .line 986
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 990
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 991
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

    .line 992
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 993
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 994
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 99
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 100
    return-void

    .line 102
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 103
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    .line 104
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 105
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 106
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 107
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 108
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 109
    return-void
.end method

.method public realmGet$avatarUrl()Ljava/lang/String;
    .registers 4

    .line 204
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 205
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$batch()Lcom/digikala/dms/model/domain/Batch;
    .registers 8

    .line 274
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 275
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/model/domain/Batch;

    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v3, v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Batch;

    return-object v0
.end method

.method public realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;
    .registers 8

    .line 233
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 234
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/model/domain/DistributionCenter;

    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v3, v3, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/DistributionCenter;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 4

    .line 114
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 115
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isBatchFinalized()Z
    .registers 4

    .line 338
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 339
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isLoggedIn()Z
    .registers 4

    .line 316
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 317
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 4

    .line 144
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 145
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$notificationToken()Ljava/lang/String;
    .registers 4

    .line 360
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 361
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

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

    .line 981
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$userName()Ljava/lang/String;
    .registers 4

    .line 174
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 175
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$avatarUrl(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 211
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 212
    return-void

    .line 214
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 215
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 216
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 217
    return-void

    .line 219
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 220
    return-void

    .line 223
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 224
    if-nez p1, :cond_55

    .line 225
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 226
    return-void

    .line 228
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 229
    return-void
.end method

.method public realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V
    .registers 12
    .param p1, "value"    # Lcom/digikala/dms/model/domain/Batch;

    .line 283
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 284
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 285
    return-void

    .line 287
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "batch"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 288
    return-void

    .line 290
    :cond_20
    if-eqz p1, :cond_37

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 291
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/digikala/dms/model/domain/Batch;

    .line 293
    :cond_37
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 294
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_47

    .line 296
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 297
    return-void

    .line 299
    :cond_47
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 300
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v3, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

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

    .line 301
    return-void

    .line 304
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_6c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 305
    if-nez p1, :cond_85

    .line 306
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 307
    return-void

    .line 309
    :cond_85
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 310
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    move-object v3, p1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    .line 311
    return-void
.end method

.method public realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V
    .registers 12
    .param p1, "value"    # Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 242
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 243
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 244
    return-void

    .line 246
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "distributionCenter"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 247
    return-void

    .line 249
    :cond_20
    if-eqz p1, :cond_37

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 250
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 252
    :cond_37
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 253
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_47

    .line 255
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 256
    return-void

    .line 258
    :cond_47
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 259
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v3, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

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

    .line 260
    return-void

    .line 263
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_6c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 264
    if-nez p1, :cond_85

    .line 265
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 266
    return-void

    .line 268
    :cond_85
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 269
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    move-object v3, p1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    .line 270
    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 121
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 122
    return-void

    .line 124
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 125
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 126
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 127
    return-void

    .line 129
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 130
    return-void

    .line 133
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 134
    if-nez p1, :cond_55

    .line 135
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 136
    return-void

    .line 138
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 139
    return-void
.end method

.method public realmSet$isBatchFinalized(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 344
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 345
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 346
    return-void

    .line 348
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 349
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 350
    return-void

    .line 353
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 354
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 355
    return-void
.end method

.method public realmSet$isLoggedIn(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 322
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 323
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 324
    return-void

    .line 326
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 327
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 328
    return-void

    .line 331
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 332
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 333
    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 151
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 152
    return-void

    .line 154
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 155
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 156
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 157
    return-void

    .line 159
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 160
    return-void

    .line 163
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 164
    if-nez p1, :cond_55

    .line 165
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 166
    return-void

    .line 168
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 169
    return-void
.end method

.method public realmSet$notificationToken(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 367
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 368
    return-void

    .line 370
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 371
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 372
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 373
    return-void

    .line 375
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 376
    return-void

    .line 379
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 380
    if-nez p1, :cond_55

    .line 381
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 382
    return-void

    .line 384
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 385
    return-void
.end method

.method public realmSet$userName(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 181
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 182
    return-void

    .line 184
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 185
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 186
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 187
    return-void

    .line 189
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 190
    return-void

    .line 193
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 194
    if-nez p1, :cond_55

    .line 195
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 196
    return-void

    .line 198
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 936
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 937
    const-string v0, "Invalid object"

    return-object v0

    .line 939
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Courier = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 940
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    const-string/jumbo v1, "{name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, "null"

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    const-string/jumbo v1, "{userName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$userName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$userName()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    :cond_63
    const-string v1, "null"

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const-string/jumbo v1, "{avatarUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$avatarUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$avatarUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_86

    :cond_84
    const-string v1, "null"

    :goto_86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    const-string/jumbo v1, "{distributionCenter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v1

    if-eqz v1, :cond_a3

    const-string v1, "DistributionCenter"

    goto :goto_a5

    :cond_a3
    const-string v1, "null"

    :goto_a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    const-string/jumbo v1, "{batch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$batch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v1

    if-eqz v1, :cond_c2

    const-string v1, "Batch"

    goto :goto_c4

    :cond_c2
    const-string v1, "null"

    :goto_c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string/jumbo v1, "{isLoggedIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$isLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 966
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    const-string/jumbo v1, "{isBatchFinalized:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$isBatchFinalized()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 970
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    const-string/jumbo v1, "{notificationToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$notificationToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_113

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->realmGet$notificationToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_115

    :cond_113
    const-string v1, "null"

    :goto_115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_CourierRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_CourierRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_CourierRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "Courier"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_CourierRealmProxy.CourierColumnInfo (io.realm.com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_CourierRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CourierColumnInfo"
.end annotation


# instance fields
.field avatarUrlIndex:J

.field batchIndex:J

.field distributionCenterIndex:J

.field idIndex:J

.field isBatchFinalizedIndex:J

.field isLoggedInIndex:J

.field nameIndex:J

.field notificationTokenIndex:J

.field userNameIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 63
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 64
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 65
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 49
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 50
    const-string v0, "Courier"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 51
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    .line 52
    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    .line 53
    const-string/jumbo v1, "userName"

    const-string/jumbo v2, "userName"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    .line 54
    const-string v1, "avatarUrl"

    const-string v2, "avatarUrl"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    .line 55
    const-string v1, "distributionCenter"

    const-string v2, "distributionCenter"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    .line 56
    const-string v1, "batch"

    const-string v2, "batch"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    .line 57
    const-string v1, "isLoggedIn"

    const-string v2, "isLoggedIn"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    .line 58
    const-string v1, "isBatchFinalized"

    const-string v2, "isBatchFinalized"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    .line 59
    const-string v1, "notificationToken"

    const-string v2, "notificationToken"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    .line 60
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 69
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 74
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    .line 75
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    .line 76
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->idIndex:J

    .line 77
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->nameIndex:J

    .line 78
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->userNameIndex:J

    .line 79
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->avatarUrlIndex:J

    .line 80
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->distributionCenterIndex:J

    .line 81
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->batchIndex:J

    .line 82
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isLoggedInIndex:J

    .line 83
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->isBatchFinalizedIndex:J

    .line 84
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;->notificationTokenIndex:J

    .line 85
    return-void
.end method
