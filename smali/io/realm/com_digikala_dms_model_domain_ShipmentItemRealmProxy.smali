###### Class io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxy (io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;
.super Lcom/digikala/dms/model/domain/ShipmentItem;
.source "com_digikala_dms_model_domain_ShipmentItemRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private SerialItemListRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private batchItemsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;"
        }
    .end annotation
.end field

.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 88
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;-><init>()V

    .line 96
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 97
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ShipmentItem;
    .registers 14
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/ShipmentItem;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/ShipmentItem;"
        }
    .end annotation

    .line 609
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 610
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 611
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    return-object v1

    .line 615
    :cond_c
    const-class v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 616
    .local v1, "realmObject":Lcom/digikala/dms/model/domain/ShipmentItem;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    .line 619
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    .line 621
    .local v4, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 622
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    .line 623
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$brandName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$brandName(Ljava/lang/String;)V

    .line 624
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$totalCount()I

    move-result v5

    invoke-interface {v4, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$totalCount(I)V

    .line 625
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$amountPerQuantity()I

    move-result v5

    invoke-interface {v4, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$amountPerQuantity(I)V

    .line 627
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v5

    .line 628
    .local v5, "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    if-eqz v5, :cond_78

    .line 629
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v6

    .line 630
    .local v6, "batchItemsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    invoke-virtual {v6}, Lio/realm/RealmList;->clear()V

    .line 631
    nop

    .local v3, "i":I
    :goto_56
    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v7

    if-ge v3, v7, :cond_78

    .line 632
    invoke-virtual {v5, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/BatchItem;

    .line 633
    .local v7, "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/BatchItem;

    .line 634
    .local v8, "cachebatchItems":Lcom/digikala/dms/model/domain/BatchItem;
    if-eqz v8, :cond_6e

    .line 635
    invoke-virtual {v6, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 637
    :cond_6e
    invoke-static {p0, v7, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BatchItem;

    move-result-object v9

    invoke-virtual {v6, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v7    # "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    .end local v8    # "cachebatchItems":Lcom/digikala/dms/model/domain/BatchItem;
    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 642
    .end local v3    # "i":I
    .end local v6    # "batchItemsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    :cond_78
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v3

    invoke-interface {v4, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$SerialItemList(Lio/realm/RealmList;)V

    .line 643
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    .line 644
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v3

    invoke-interface {v4, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$rejectReasonId(I)V

    .line 645
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ShipmentItem;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/ShipmentItem;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/ShipmentItem;"
        }
    .end annotation

    .line 590
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

    .line 591
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 592
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 595
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 596
    return-object p1

    .line 593
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 600
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 601
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 602
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/ShipmentItem;

    return-object v2

    .line 605
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ShipmentItem;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 418
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/ShipmentItem;IILjava/util/Map;)Lcom/digikala/dms/model/domain/ShipmentItem;
    .registers 14
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/ShipmentItem;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/ShipmentItem;"
        }
    .end annotation

    .line 933
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    const/4 v0, 0x0

    if-gt p1, p2, :cond_a2

    if-nez p0, :cond_7

    goto/16 :goto_a2

    .line 936
    :cond_7
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 938
    .local v1, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v1, :cond_1d

    .line 939
    new-instance v2, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-direct {v2}, Lcom/digikala/dms/model/domain/ShipmentItem;-><init>()V

    .line 940
    .local v2, "unmanagedObject":Lcom/digikala/dms/model/domain/ShipmentItem;
    new-instance v3, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v3, p1, v2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 943
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/ShipmentItem;
    :cond_1d
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_26

    .line 944
    iget-object v0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    return-object v0

    .line 946
    :cond_26
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 947
    .restart local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/ShipmentItem;
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 949
    :goto_2c
    move-object v3, v2

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    .line 950
    .local v3, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
    move-object v4, p0

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    .line 951
    .local v4, "realmSource":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 952
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    .line 953
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$brandName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$brandName(Ljava/lang/String;)V

    .line 954
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$totalCount()I

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$totalCount(I)V

    .line 955
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$amountPerQuantity()I

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$amountPerQuantity(I)V

    .line 958
    if-ne p1, p2, :cond_5b

    .line 959
    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$batchItems(Lio/realm/RealmList;)V

    goto :goto_80

    .line 961
    :cond_5b
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v0

    .line 962
    .local v0, "managedbatchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    new-instance v5, Lio/realm/RealmList;

    invoke-direct {v5}, Lio/realm/RealmList;-><init>()V

    .line 963
    .local v5, "unmanagedbatchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$batchItems(Lio/realm/RealmList;)V

    .line 964
    add-int/lit8 v6, p1, 0x1

    .line 965
    .local v6, "nextDepth":I
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v7

    .line 966
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6e
    if-ge v8, v7, :cond_80

    .line 967
    invoke-virtual {v0, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-static {v9, v6, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/BatchItem;IILjava/util/Map;)Lcom/digikala/dms/model/domain/BatchItem;

    move-result-object v9

    .line 968
    .local v9, "item":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-virtual {v5, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 966
    .end local v9    # "item":Lcom/digikala/dms/model/domain/BatchItem;
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    .line 972
    .end local v0    # "managedbatchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .end local v5    # "unmanagedbatchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .end local v6    # "nextDepth":I
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_80
    :goto_80
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$SerialItemList(Lio/realm/RealmList;)V

    .line 973
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v0

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/realm/RealmList;->addAll(Ljava/util/Collection;)Z

    .line 974
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    .line 975
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v0

    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$rejectReasonId(I)V

    .line 977
    return-object v2

    .line 934
    .end local v1    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v3    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
    .end local v4    # "realmSource":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
    :cond_a2
    :goto_a2
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 400
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "ShipmentItem"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 401
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v5, "OrderItemId"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 402
    const-string v5, "description"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 403
    const-string v5, "brandName"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 404
    const-string/jumbo v5, "totalCount"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 405
    const-string v5, "amountPerQuantity"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 406
    const-string v1, "batchItems"

    sget-object v3, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v4, "BatchItem"

    invoke-virtual {v0, v1, v3, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 407
    const-string v1, "SerialItemList"

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v0, v1, v3, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedValueListProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Z)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 408
    const-string v5, "BasketId"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 409
    const-string v5, "rejectReasonId"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 410
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/ShipmentItem;
    .registers 11
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "batchItems"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 434
    const-string v1, "batchItems"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_13
    const-string v1, "SerialItemList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 437
    const-string v1, "SerialItemList"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_20
    const-class v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 441
    .local v1, "obj":Lcom/digikala/dms/model/domain/ShipmentItem;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    .line 442
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
    const-string v3, "OrderItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4a

    .line 443
    const-string v3, "OrderItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 444
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    goto :goto_4a

    .line 446
    :cond_41
    const-string v3, "OrderItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 449
    :cond_4a
    :goto_4a
    const-string v3, "description"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 450
    const-string v3, "description"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 451
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    goto :goto_67

    .line 453
    :cond_5e
    const-string v3, "description"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    .line 456
    :cond_67
    :goto_67
    const-string v3, "brandName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 457
    const-string v3, "brandName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 458
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$brandName(Ljava/lang/String;)V

    goto :goto_84

    .line 460
    :cond_7b
    const-string v3, "brandName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$brandName(Ljava/lang/String;)V

    .line 463
    :cond_84
    :goto_84
    const-string/jumbo v3, "totalCount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 464
    const-string/jumbo v3, "totalCount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a1

    .line 467
    const-string/jumbo v3, "totalCount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$totalCount(I)V

    goto :goto_a9

    .line 465
    :cond_a1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'totalCount\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 470
    :cond_a9
    :goto_a9
    const-string v3, "amountPerQuantity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 471
    const-string v3, "amountPerQuantity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c3

    .line 474
    const-string v3, "amountPerQuantity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$amountPerQuantity(I)V

    goto :goto_cb

    .line 472
    :cond_c3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'amountPerQuantity\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 477
    :cond_cb
    :goto_cb
    const-string v3, "batchItems"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 478
    const-string v3, "batchItems"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 479
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$batchItems(Lio/realm/RealmList;)V

    goto :goto_105

    .line 481
    :cond_df
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 482
    const-string v3, "batchItems"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 483
    .local v3, "array":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_ed
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_105

    .line 484
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {p0, v6, p2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/BatchItem;

    move-result-object v6

    .line 485
    .local v6, "item":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v6    # "item":Lcom/digikala/dms/model/domain/BatchItem;
    add-int/lit8 v5, v5, 0x1

    goto :goto_ed

    .line 489
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_105
    :goto_105
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v3

    const-string v5, "SerialItemList"

    invoke-static {v3, p1, v5}, Lio/realm/ProxyUtils;->setRealmListWithJsonObject(Lio/realm/RealmList;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 490
    const-string v3, "BasketId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 491
    const-string v3, "BasketId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 492
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    goto :goto_12b

    .line 494
    :cond_122
    const-string v3, "BasketId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    .line 497
    :cond_12b
    :goto_12b
    const-string v3, "rejectReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 498
    const-string v3, "rejectReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_145

    .line 501
    const-string v3, "rejectReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$rejectReasonId(I)V

    goto :goto_14d

    .line 499
    :cond_145
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'rejectReasonId\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 504
    :cond_14d
    :goto_14d
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/ShipmentItem;
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

    .line 511
    new-instance v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;-><init>()V

    .line 512
    .local v0, "obj":Lcom/digikala/dms/model/domain/ShipmentItem;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    .line 513
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 514
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_154

    .line 515
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "name":Ljava/lang/String;
    const-string v3, "OrderItemId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 518
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2f

    .line 519
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    goto/16 :goto_152

    .line 521
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 522
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    goto/16 :goto_152

    .line 524
    :cond_37
    const-string v3, "description"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 525
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_50

    .line 526
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    goto/16 :goto_152

    .line 528
    :cond_50
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 529
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    goto/16 :goto_152

    .line 531
    :cond_58
    const-string v3, "brandName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 532
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_71

    .line 533
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$brandName(Ljava/lang/String;)V

    goto/16 :goto_152

    .line 535
    :cond_71
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 536
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$brandName(Ljava/lang/String;)V

    goto/16 :goto_152

    .line 538
    :cond_79
    const-string/jumbo v3, "totalCount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 539
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_93

    .line 540
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$totalCount(I)V

    goto/16 :goto_152

    .line 542
    :cond_93
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 543
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'totalCount\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 545
    :cond_9e
    const-string v3, "amountPerQuantity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 546
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_b7

    .line 547
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$amountPerQuantity(I)V

    goto/16 :goto_152

    .line 549
    :cond_b7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 550
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'amountPerQuantity\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 552
    :cond_c2
    const-string v3, "batchItems"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 553
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_da

    .line 554
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 555
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$batchItems(Lio/realm/RealmList;)V

    goto/16 :goto_152

    .line 557
    :cond_da
    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$batchItems(Lio/realm/RealmList;)V

    .line 558
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 559
    :goto_e5
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 560
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/BatchItem;

    move-result-object v3

    .line 561
    .local v3, "item":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 562
    .end local v3    # "item":Lcom/digikala/dms/model/domain/BatchItem;
    goto :goto_e5

    .line 563
    :cond_f7
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_152

    .line 565
    :cond_fb
    const-string v3, "SerialItemList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 566
    const-class v3, Ljava/lang/String;

    invoke-static {v3, p1}, Lio/realm/ProxyUtils;->createRealmListWithJsonStream(Ljava/lang/Class;Landroid/util/JsonReader;)Lio/realm/RealmList;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$SerialItemList(Lio/realm/RealmList;)V

    goto :goto_152

    .line 567
    :cond_10d
    const-string v3, "BasketId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 568
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_125

    .line 569
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    goto :goto_152

    .line 571
    :cond_125
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 572
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    goto :goto_152

    .line 574
    :cond_12c
    const-string v3, "rejectReasonId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 575
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_144

    .line 576
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmSet$rejectReasonId(I)V

    goto :goto_152

    .line 578
    :cond_144
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 579
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'rejectReasonId\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 582
    :cond_14f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 584
    .end local v2    # "name":Ljava/lang/String;
    :goto_152
    goto/16 :goto_b

    .line 585
    :cond_154
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 586
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/ShipmentItem;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 414
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 422
    const-string v0, "ShipmentItem"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J
    .registers 28
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/ShipmentItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 649
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

    .line 650
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 652
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 653
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 654
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    .line 655
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 656
    .local v11, "rowIndex":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v16

    .line 658
    .local v16, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v16, :cond_7b

    .line 659
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

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

    .line 661
    .end local v18    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    :cond_7b
    move-wide/from16 v18, v11

    .end local v11    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :goto_7d
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v17

    .line 662
    .local v17, "realmGet$description":Ljava/lang/String;
    if-eqz v17, :cond_91

    .line 663
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 665
    :cond_91
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$brandName()Ljava/lang/String;

    move-result-object v20

    .line 666
    .local v20, "realmGet$brandName":Ljava/lang/String;
    if-eqz v20, :cond_a5

    .line 667
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v20

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 669
    :cond_a5
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$totalCount()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 670
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$amountPerQuantity()I

    move-result v4

    int-to-long v10, v4

    move-wide v4, v13

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 672
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v21

    .line 673
    .local v21, "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    if-eqz v21, :cond_102

    .line 674
    new-instance v4, Lio/realm/internal/OsList;

    move-wide/from16 v11, v18

    .end local v18    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    invoke-virtual {v3, v11, v12}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->batchItemsIndex:J

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 675
    .local v4, "batchItemsOsList":Lio/realm/internal/OsList;
    invoke-virtual/range {v21 .. v21}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_de
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_104

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/BatchItem;

    .line 676
    .local v6, "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 677
    .local v7, "cacheItemIndexbatchItems":Ljava/lang/Long;
    if-nez v7, :cond_fa

    .line 678
    invoke-static {v0, v6, v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 680
    :cond_fa
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lio/realm/internal/OsList;->addRow(J)V

    .line 681
    .end local v6    # "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    .end local v7    # "cacheItemIndexbatchItems":Ljava/lang/Long;
    goto :goto_de

    .line 684
    .end local v4    # "batchItemsOsList":Lio/realm/internal/OsList;
    .end local v11    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :cond_102
    move-wide/from16 v11, v18

    .end local v18    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    :cond_104
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v18

    .line 685
    .local v18, "SerialItemListList":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    if-eqz v18, :cond_132

    .line 686
    new-instance v4, Lio/realm/internal/OsList;

    invoke-virtual {v3, v11, v12}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->SerialItemListIndex:J

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 687
    .local v4, "SerialItemListOsList":Lio/realm/internal/OsList;
    invoke-virtual/range {v18 .. v18}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_132

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 688
    .local v6, "SerialItemListItem":Ljava/lang/String;
    if-nez v6, :cond_12e

    .line 689
    invoke-virtual {v4}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_131

    .line 691
    :cond_12e
    invoke-virtual {v4, v6}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    .line 693
    .end local v6    # "SerialItemListItem":Ljava/lang/String;
    :goto_131
    goto :goto_11c

    .line 695
    .end local v4    # "SerialItemListOsList":Lio/realm/internal/OsList;
    :cond_132
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v19

    .line 696
    .local v19, "realmGet$BasketId":Ljava/lang/String;
    if-eqz v19, :cond_14b

    .line 697
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    const/16 v22, 0x0

    move-wide v4, v13

    move-wide v8, v11

    move-object/from16 v10, v19

    move-wide/from16 v23, v11

    .end local v11    # "rowIndex":J
    .local v23, "rowIndex":J
    move/from16 v11, v22

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_14d

    .line 699
    .end local v23    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    :cond_14b
    move-wide/from16 v23, v11

    .end local v11    # "rowIndex":J
    .restart local v23    # "rowIndex":J
    :goto_14d
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v23

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 700
    return-wide v23
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

    .line 704
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 705
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 706
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    .line 707
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    const/4 v3, 0x0

    .line 708
    .local v3, "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 709
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 710
    .end local v3    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .local v15, "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 711
    goto/16 :goto_17b

    .line 713
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

    .line 714
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

    .line 715
    goto/16 :goto_17b

    .line 717
    :cond_73
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 718
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v16

    .line 720
    .local v16, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v16, :cond_97

    .line 721
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

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

    .line 723
    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_97
    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :goto_99
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v17

    .line 724
    .local v17, "realmGet$description":Ljava/lang/String;
    if-eqz v17, :cond_ad

    .line 725
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 727
    :cond_ad
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$brandName()Ljava/lang/String;

    move-result-object v20

    .line 728
    .local v20, "realmGet$brandName":Ljava/lang/String;
    if-eqz v20, :cond_c1

    .line 729
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 731
    :cond_c1
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$totalCount()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 732
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$amountPerQuantity()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 734
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v21

    .line 735
    .local v21, "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    if-eqz v21, :cond_11e

    .line 736
    new-instance v3, Lio/realm/internal/OsList;

    move-wide/from16 v10, v18

    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    invoke-virtual {v2, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->batchItemsIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 737
    .local v3, "batchItemsOsList":Lio/realm/internal/OsList;
    invoke-virtual/range {v21 .. v21}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_fa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_120

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BatchItem;

    .line 738
    .local v5, "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 739
    .local v6, "cacheItemIndexbatchItems":Ljava/lang/Long;
    if-nez v6, :cond_116

    .line 740
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 742
    :cond_116
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lio/realm/internal/OsList;->addRow(J)V

    .line 743
    .end local v5    # "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    .end local v6    # "cacheItemIndexbatchItems":Ljava/lang/Long;
    goto :goto_fa

    .line 746
    .end local v3    # "batchItemsOsList":Lio/realm/internal/OsList;
    .end local v10    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :cond_11e
    move-wide/from16 v10, v18

    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_120
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v18

    .line 747
    .local v18, "SerialItemListList":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    if-eqz v18, :cond_14e

    .line 748
    new-instance v3, Lio/realm/internal/OsList;

    invoke-virtual {v2, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->SerialItemListIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 749
    .local v3, "SerialItemListOsList":Lio/realm/internal/OsList;
    invoke-virtual/range {v18 .. v18}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_138
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 750
    .local v5, "SerialItemListItem":Ljava/lang/String;
    if-nez v5, :cond_14a

    .line 751
    invoke-virtual {v3}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_14d

    .line 753
    :cond_14a
    invoke-virtual {v3, v5}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    .line 755
    .end local v5    # "SerialItemListItem":Ljava/lang/String;
    :goto_14d
    goto :goto_138

    .line 757
    .end local v3    # "SerialItemListOsList":Lio/realm/internal/OsList;
    :cond_14e
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v19

    .line 758
    .local v19, "realmGet$BasketId":Ljava/lang/String;
    if-eqz v19, :cond_167

    .line 759
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    const/16 v22, 0x0

    move-wide v3, v12

    move-wide v7, v10

    move-object/from16 v9, v19

    move-wide/from16 v23, v10

    .end local v10    # "rowIndex":J
    .local v23, "rowIndex":J
    move/from16 v10, v22

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_169

    .line 761
    .end local v23    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_167
    move-wide/from16 v23, v10

    .end local v10    # "rowIndex":J
    .restart local v23    # "rowIndex":J
    :goto_169
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v23

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 762
    .end local v16    # "realmGet$OrderItemId":Ljava/lang/String;
    .end local v17    # "realmGet$description":Ljava/lang/String;
    .end local v18    # "SerialItemListList":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    .end local v19    # "realmGet$BasketId":Ljava/lang/String;
    .end local v20    # "realmGet$brandName":Ljava/lang/String;
    .end local v21    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .end local v23    # "rowIndex":J
    nop

    .line 707
    :goto_17b
    move-object v3, v15

    goto/16 :goto_1c

    .line 763
    .end local v15    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .local v3, "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    :cond_17e
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J
    .registers 30
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/ShipmentItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 766
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

    .line 767
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 769
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 770
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 771
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    .line 772
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 773
    .local v11, "rowIndex":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v16

    .line 775
    .local v16, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v16, :cond_7b

    .line 776
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

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

    .line 778
    .end local v18    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    :cond_7b
    move-wide/from16 v18, v11

    .end local v11    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 780
    :goto_86
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v17

    .line 781
    .local v17, "realmGet$description":Ljava/lang/String;
    if-eqz v17, :cond_9b

    .line 782
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a4

    .line 784
    :cond_9b
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 786
    :goto_a4
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$brandName()Ljava/lang/String;

    move-result-object v20

    .line 787
    .local v20, "realmGet$brandName":Ljava/lang/String;
    if-eqz v20, :cond_b9

    .line 788
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v20

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c2

    .line 790
    :cond_b9
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 792
    :goto_c2
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$totalCount()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 793
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$amountPerQuantity()I

    move-result v4

    int-to-long v10, v4

    move-wide v4, v13

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 795
    new-instance v4, Lio/realm/internal/OsList;

    move-wide/from16 v11, v18

    .end local v18    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    invoke-virtual {v3, v11, v12}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->batchItemsIndex:J

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    move-object v10, v4

    .line 796
    .local v10, "batchItemsOsList":Lio/realm/internal/OsList;
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v8

    .line 797
    .local v8, "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    if-eqz v8, :cond_13e

    invoke-virtual {v8}, Lio/realm/RealmList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v10}, Lio/realm/internal/OsList;->size()J

    move-result-wide v6

    cmp-long v9, v4, v6

    if-nez v9, :cond_13e

    .line 799
    invoke-virtual {v8}, Lio/realm/RealmList;->size()I

    move-result v4

    .line 800
    .local v4, "objects":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10a
    if-ge v5, v4, :cond_139

    .line 801
    invoke-virtual {v8, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/BatchItem;

    .line 802
    .local v6, "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 803
    .local v7, "cacheItemIndexbatchItems":Ljava/lang/Long;
    if-nez v7, :cond_122

    .line 804
    invoke-static {v0, v6, v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 806
    :cond_122
    move-wide/from16 v21, v13

    .end local v13    # "tableNativePtr":J
    .local v21, "tableNativePtr":J
    int-to-long v13, v5

    move-object/from16 v23, v3

    move/from16 v24, v4

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v4    # "objects":I
    .local v23, "table":Lio/realm/internal/Table;
    .local v24, "objects":I
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v10, v13, v14, v3, v4}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 800
    .end local v6    # "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    .end local v7    # "cacheItemIndexbatchItems":Ljava/lang/Long;
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v13, v21

    move-object/from16 v3, v23

    move/from16 v4, v24

    goto :goto_10a

    .line 808
    .end local v5    # "i":I
    .end local v21    # "tableNativePtr":J
    .end local v23    # "table":Lio/realm/internal/Table;
    .end local v24    # "objects":I
    .restart local v3    # "table":Lio/realm/internal/Table;
    .restart local v13    # "tableNativePtr":J
    :cond_139
    move-object/from16 v23, v3

    move-wide/from16 v21, v13

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v13    # "tableNativePtr":J
    .restart local v21    # "tableNativePtr":J
    .restart local v23    # "table":Lio/realm/internal/Table;
    goto :goto_16f

    .line 809
    .end local v21    # "tableNativePtr":J
    .end local v23    # "table":Lio/realm/internal/Table;
    .restart local v3    # "table":Lio/realm/internal/Table;
    .restart local v13    # "tableNativePtr":J
    :cond_13e
    move-object/from16 v23, v3

    move-wide/from16 v21, v13

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v13    # "tableNativePtr":J
    .restart local v21    # "tableNativePtr":J
    .restart local v23    # "table":Lio/realm/internal/Table;
    invoke-virtual {v10}, Lio/realm/internal/OsList;->removeAll()V

    .line 810
    if-eqz v8, :cond_16f

    .line 811
    invoke-virtual {v8}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/BatchItem;

    .line 812
    .local v4, "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 813
    .local v5, "cacheItemIndexbatchItems":Ljava/lang/Long;
    if-nez v5, :cond_167

    .line 814
    invoke-static {v0, v4, v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 816
    :cond_167
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Lio/realm/internal/OsList;->addRow(J)V

    .line 817
    .end local v4    # "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    .end local v5    # "cacheItemIndexbatchItems":Ljava/lang/Long;
    goto :goto_14b

    .line 822
    :cond_16f
    :goto_16f
    new-instance v3, Lio/realm/internal/OsList;

    move-object/from16 v13, v23

    .end local v23    # "table":Lio/realm/internal/Table;
    .local v13, "table":Lio/realm/internal/Table;
    invoke-virtual {v13, v11, v12}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->SerialItemListIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 823
    .local v3, "SerialItemListOsList":Lio/realm/internal/OsList;
    invoke-virtual {v3}, Lio/realm/internal/OsList;->removeAll()V

    .line 824
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v14

    .line 825
    .local v14, "SerialItemListList":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    if-eqz v14, :cond_1a2

    .line 826
    invoke-virtual {v14}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 827
    .local v5, "SerialItemListItem":Ljava/lang/String;
    if-nez v5, :cond_19e

    .line 828
    invoke-virtual {v3}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_1a1

    .line 830
    :cond_19e
    invoke-virtual {v3, v5}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    .line 832
    .end local v5    # "SerialItemListItem":Ljava/lang/String;
    :goto_1a1
    goto :goto_18c

    .line 835
    :cond_1a2
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v18

    .line 836
    .local v18, "realmGet$BasketId":Ljava/lang/String;
    if-eqz v18, :cond_1c0

    .line 837
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    const/16 v19, 0x0

    move-wide/from16 v4, v21

    move-object/from16 v23, v8

    .end local v8    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .local v23, "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    move-wide v8, v11

    move-object/from16 v24, v10

    .end local v10    # "batchItemsOsList":Lio/realm/internal/OsList;
    .local v24, "batchItemsOsList":Lio/realm/internal/OsList;
    move-object/from16 v10, v18

    move-wide/from16 v25, v11

    .end local v11    # "rowIndex":J
    .local v25, "rowIndex":J
    move/from16 v11, v19

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1d0

    .line 839
    .end local v23    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .end local v24    # "batchItemsOsList":Lio/realm/internal/OsList;
    .end local v25    # "rowIndex":J
    .restart local v8    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .restart local v10    # "batchItemsOsList":Lio/realm/internal/OsList;
    .restart local v11    # "rowIndex":J
    :cond_1c0
    move-object/from16 v23, v8

    move-object/from16 v24, v10

    move-wide/from16 v25, v11

    .end local v8    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .end local v10    # "batchItemsOsList":Lio/realm/internal/OsList;
    .end local v11    # "rowIndex":J
    .restart local v23    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .restart local v24    # "batchItemsOsList":Lio/realm/internal/OsList;
    .restart local v25    # "rowIndex":J
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    const/4 v10, 0x0

    move-wide/from16 v4, v21

    move-wide/from16 v8, v25

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 841
    :goto_1d0
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide/from16 v4, v21

    move-wide/from16 v8, v25

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 842
    return-wide v25
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 30
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

    .line 846
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 847
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 848
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    .line 849
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    const/4 v3, 0x0

    .line 850
    .local v3, "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_212

    .line 851
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 852
    .end local v3    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .local v15, "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 853
    nop

    .line 849
    :goto_30
    move-wide/from16 v21, v12

    move-object v12, v14

    move-object/from16 v24, v15

    goto/16 :goto_20b

    .line 855
    :cond_37
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_78

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_78

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

    if-eqz v3, :cond_78

    .line 856
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

    .line 857
    goto :goto_30

    .line 859
    :cond_78
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 860
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v16

    .line 862
    .local v16, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v16, :cond_9c

    .line 863
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    const/16 v17, 0x0

    move-wide v3, v12

    move-wide v7, v10

    move-object/from16 v9, v16

    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .local v18, "rowIndex":J
    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a7

    .line 865
    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_9c
    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 867
    :goto_a7
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v17

    .line 868
    .local v17, "realmGet$description":Ljava/lang/String;
    if-eqz v17, :cond_bc

    .line 869
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c5

    .line 871
    :cond_bc
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 873
    :goto_c5
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$brandName()Ljava/lang/String;

    move-result-object v20

    .line 874
    .local v20, "realmGet$brandName":Ljava/lang/String;
    if-eqz v20, :cond_da

    .line 875
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e3

    .line 877
    :cond_da
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 879
    :goto_e3
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$totalCount()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 880
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$amountPerQuantity()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 882
    new-instance v3, Lio/realm/internal/OsList;

    move-wide/from16 v10, v18

    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    invoke-virtual {v2, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->batchItemsIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    move-object v9, v3

    .line 883
    .local v9, "batchItemsOsList":Lio/realm/internal/OsList;
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v7

    .line 884
    .local v7, "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    if-eqz v7, :cond_161

    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v9}, Lio/realm/internal/OsList;->size()J

    move-result-wide v5

    cmp-long v8, v3, v5

    if-nez v8, :cond_161

    .line 886
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v3

    .line 887
    .local v3, "objectCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12b
    if-ge v4, v3, :cond_15a

    .line 888
    invoke-virtual {v7, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BatchItem;

    .line 889
    .local v5, "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 890
    .local v6, "cacheItemIndexbatchItems":Ljava/lang/Long;
    if-nez v6, :cond_143

    .line 891
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 893
    :cond_143
    move-wide/from16 v21, v12

    .end local v12    # "tableNativePtr":J
    .local v21, "tableNativePtr":J
    int-to-long v12, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .end local v15    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .local v23, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .local v24, "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v9, v12, v13, v14, v15}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 887
    .end local v5    # "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    .end local v6    # "cacheItemIndexbatchItems":Ljava/lang/Long;
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v12, v21

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    goto :goto_12b

    .line 895
    .end local v3    # "objectCount":I
    .end local v4    # "i":I
    .end local v21    # "tableNativePtr":J
    .end local v23    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .end local v24    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .restart local v12    # "tableNativePtr":J
    .restart local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .restart local v15    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    :cond_15a
    move-wide/from16 v21, v12

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .end local v12    # "tableNativePtr":J
    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .end local v15    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .restart local v21    # "tableNativePtr":J
    .restart local v23    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .restart local v24    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    goto :goto_194

    .line 896
    .end local v21    # "tableNativePtr":J
    .end local v23    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .end local v24    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .restart local v12    # "tableNativePtr":J
    .restart local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .restart local v15    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    :cond_161
    move-wide/from16 v21, v12

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .end local v12    # "tableNativePtr":J
    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .end local v15    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .restart local v21    # "tableNativePtr":J
    .restart local v23    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .restart local v24    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-virtual {v9}, Lio/realm/internal/OsList;->removeAll()V

    .line 897
    if-eqz v7, :cond_194

    .line 898
    invoke-virtual {v7}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_170
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_194

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/BatchItem;

    .line 899
    .local v4, "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 900
    .local v5, "cacheItemIndexbatchItems":Ljava/lang/Long;
    if-nez v5, :cond_18c

    .line 901
    invoke-static {v0, v4, v1}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 903
    :cond_18c
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lio/realm/internal/OsList;->addRow(J)V

    .line 904
    .end local v4    # "batchItemsItem":Lcom/digikala/dms/model/domain/BatchItem;
    .end local v5    # "cacheItemIndexbatchItems":Ljava/lang/Long;
    goto :goto_170

    .line 909
    :cond_194
    :goto_194
    new-instance v3, Lio/realm/internal/OsList;

    invoke-virtual {v2, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    move-object/from16 v12, v23

    .end local v23    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .local v12, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->SerialItemListIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    move-object v13, v3

    .line 910
    .local v13, "SerialItemListOsList":Lio/realm/internal/OsList;
    invoke-virtual {v13}, Lio/realm/internal/OsList;->removeAll()V

    .line 911
    move-object/from16 v3, v24

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v14

    .line 912
    .local v14, "SerialItemListList":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    if-eqz v14, :cond_1c9

    .line 913
    invoke-virtual {v14}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 914
    .local v4, "SerialItemListItem":Ljava/lang/String;
    if-nez v4, :cond_1c5

    .line 915
    invoke-virtual {v13}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_1c8

    .line 917
    :cond_1c5
    invoke-virtual {v13, v4}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    .line 919
    .end local v4    # "SerialItemListItem":Ljava/lang/String;
    :goto_1c8
    goto :goto_1b3

    .line 922
    :cond_1c9
    move-object/from16 v3, v24

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v15

    .line 923
    .local v15, "realmGet$BasketId":Ljava/lang/String;
    if-eqz v15, :cond_1e7

    .line 924
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    const/16 v18, 0x0

    move-wide/from16 v3, v21

    move-object/from16 v19, v7

    .end local v7    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .local v19, "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    move-wide v7, v10

    move-object/from16 v23, v9

    .end local v9    # "batchItemsOsList":Lio/realm/internal/OsList;
    .local v23, "batchItemsOsList":Lio/realm/internal/OsList;
    move-object v9, v15

    move-wide/from16 v25, v10

    .end local v10    # "rowIndex":J
    .local v25, "rowIndex":J
    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1f7

    .line 926
    .end local v19    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .end local v23    # "batchItemsOsList":Lio/realm/internal/OsList;
    .end local v25    # "rowIndex":J
    .restart local v7    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .restart local v9    # "batchItemsOsList":Lio/realm/internal/OsList;
    .restart local v10    # "rowIndex":J
    :cond_1e7
    move-object/from16 v19, v7

    move-object/from16 v23, v9

    move-wide/from16 v25, v10

    .end local v7    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .end local v9    # "batchItemsOsList":Lio/realm/internal/OsList;
    .end local v10    # "rowIndex":J
    .restart local v19    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .restart local v23    # "batchItemsOsList":Lio/realm/internal/OsList;
    .restart local v25    # "rowIndex":J
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    const/4 v9, 0x0

    move-wide/from16 v3, v21

    move-wide/from16 v7, v25

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 928
    :goto_1f7
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    move-object/from16 v3, v24

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide/from16 v3, v21

    move-wide/from16 v7, v25

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 929
    .end local v13    # "SerialItemListOsList":Lio/realm/internal/OsList;
    .end local v14    # "SerialItemListList":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    .end local v15    # "realmGet$BasketId":Ljava/lang/String;
    .end local v16    # "realmGet$OrderItemId":Ljava/lang/String;
    .end local v17    # "realmGet$description":Ljava/lang/String;
    .end local v19    # "batchItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .end local v20    # "realmGet$brandName":Ljava/lang/String;
    .end local v23    # "batchItemsOsList":Lio/realm/internal/OsList;
    .end local v25    # "rowIndex":J
    nop

    .line 849
    .end local v21    # "tableNativePtr":J
    .end local v24    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .local v12, "tableNativePtr":J
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .local v15, "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    :goto_20b
    move-object v14, v12

    move-wide/from16 v12, v21

    move-object/from16 v3, v24

    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .end local v15    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .local v12, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .restart local v21    # "tableNativePtr":J
    .restart local v24    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    goto/16 :goto_1c

    .line 930
    .end local v21    # "tableNativePtr":J
    .end local v24    # "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .local v3, "object":Lcom/digikala/dms/model/domain/ShipmentItem;
    .local v12, "tableNativePtr":J
    .restart local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    :cond_212
    move-wide/from16 v21, v12

    move-object v12, v14

    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .local v12, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    .restart local v21    # "tableNativePtr":J
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 1046
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1047
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 1048
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;

    .line 1050
    .local v2, "aShipmentItem":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1051
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1052
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

    .line 1054
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1055
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1056
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

    .line 1058
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 1060
    :cond_76
    return v0

    .line 1047
    .end local v2    # "aShipmentItem":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;
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

    .line 1033
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1035
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 1037
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 1038
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

    .line 1039
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 1040
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 1041
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 101
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 102
    return-void

    .line 104
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 105
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    .line 106
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 107
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 108
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 109
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 110
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 111
    return-void
.end method

.method public realmGet$BasketId()Ljava/lang/String;
    .registers 4

    .line 350
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 351
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$OrderItemId()Ljava/lang/String;
    .registers 4

    .line 116
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 117
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$SerialItemList()Lio/realm/RealmList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 312
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->SerialItemListRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_10

    .line 313
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->SerialItemListRealmList:Lio/realm/RealmList;

    return-object v0

    .line 315
    :cond_10
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->SerialItemListIndex:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 316
    .local v0, "osList":Lio/realm/internal/OsList;
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->SerialItemListRealmList:Lio/realm/RealmList;

    .line 317
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->SerialItemListRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$amountPerQuantity()I
    .registers 4

    .line 228
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 229
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$batchItems()Lio/realm/RealmList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 251
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->batchItemsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_10

    .line 252
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->batchItemsRealmList:Lio/realm/RealmList;

    return-object v0

    .line 254
    :cond_10
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->batchItemsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 255
    .local v0, "osList":Lio/realm/internal/OsList;
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lcom/digikala/dms/model/domain/BatchItem;

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->batchItemsRealmList:Lio/realm/RealmList;

    .line 256
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->batchItemsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$brandName()Ljava/lang/String;
    .registers 4

    .line 176
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 177
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$description()Ljava/lang/String;
    .registers 4

    .line 146
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 147
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

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

    .line 1028
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$rejectReasonId()I
    .registers 4

    .line 380
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 381
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$totalCount()I
    .registers 4

    .line 206
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 207
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmSet$BasketId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 357
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 358
    return-void

    .line 360
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 361
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 362
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 363
    return-void

    .line 365
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 366
    return-void

    .line 369
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 370
    if-nez p1, :cond_55

    .line 371
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 372
    return-void

    .line 374
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 375
    return-void
.end method

.method public realmSet$OrderItemId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 123
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 124
    return-void

    .line 126
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 127
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 128
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 129
    return-void

    .line 131
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 132
    return-void

    .line 135
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 136
    if-nez p1, :cond_55

    .line 137
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 138
    return-void

    .line 140
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 141
    return-void
.end method

.method public realmSet$SerialItemList(Lio/realm/RealmList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p1, "value":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 324
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 325
    return-void

    .line 327
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "SerialItemList"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 328
    return-void

    .line 332
    :cond_20
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 333
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->SerialItemListIndex:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 334
    .local v0, "osList":Lio/realm/internal/OsList;
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 335
    if-nez p1, :cond_3f

    .line 336
    return-void

    .line 338
    :cond_3f
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 339
    .local v2, "item":Ljava/lang/String;
    if-nez v2, :cond_55

    .line 340
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_58

    .line 342
    :cond_55
    invoke-virtual {v0, v2}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    .line 344
    .end local v2    # "item":Ljava/lang/String;
    :goto_58
    goto :goto_43

    .line 345
    :cond_59
    return-void
.end method

.method public realmSet$amountPerQuantity(I)V
    .registers 11
    .param p1, "value"    # I

    .line 234
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 235
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 236
    return-void

    .line 238
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 239
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 240
    return-void

    .line 243
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 244
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 245
    return-void
.end method

.method public realmSet$batchItems(Lio/realm/RealmList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p1, "value":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 263
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 264
    return-void

    .line 266
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "batchItems"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 267
    return-void

    .line 270
    :cond_20
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 271
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 272
    .local v0, "realm":Lio/realm/Realm;
    move-object v1, p1

    .line 273
    .local v1, "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    move-object p1, v2

    .line 274
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/BatchItem;

    .line 275
    .local v3, "item":Lcom/digikala/dms/model/domain/BatchItem;
    if-eqz v3, :cond_58

    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_58

    .line 278
    :cond_50
    invoke-virtual {v0, v3}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 276
    :cond_58
    :goto_58
    invoke-virtual {p1, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v3    # "item":Lcom/digikala/dms/model/domain/BatchItem;
    :goto_5b
    goto :goto_3b

    .line 284
    .end local v0    # "realm":Lio/realm/Realm;
    .end local v1    # "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    :cond_5c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 285
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->batchItemsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 287
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

    .line 288
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 289
    .local v2, "objects":I
    nop

    .local v1, "i":I
    :goto_88
    if-ge v1, v2, :cond_ab

    .line 290
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/BatchItem;

    .line 291
    .local v3, "linkedObject":Lcom/digikala/dms/model/domain/BatchItem;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 292
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

    .line 289
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/BatchItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 294
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_ab
    goto :goto_d9

    .line 295
    :cond_ac
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 296
    if-nez p1, :cond_b2

    .line 297
    return-void

    .line 299
    :cond_b2
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 300
    .restart local v2    # "objects":I
    nop

    .restart local v1    # "i":I
    :goto_b7
    if-ge v1, v2, :cond_d9

    .line 301
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/BatchItem;

    .line 302
    .restart local v3    # "linkedObject":Lcom/digikala/dms/model/domain/BatchItem;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 303
    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addRow(J)V

    .line 300
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/BatchItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 306
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_d9
    :goto_d9
    return-void
.end method

.method public realmSet$brandName(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 183
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 184
    return-void

    .line 186
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 187
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 188
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 189
    return-void

    .line 191
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 192
    return-void

    .line 195
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 196
    if-nez p1, :cond_55

    .line 197
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 198
    return-void

    .line 200
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 201
    return-void
.end method

.method public realmSet$description(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 153
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 154
    return-void

    .line 156
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 157
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 158
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 159
    return-void

    .line 161
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 162
    return-void

    .line 165
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 166
    if-nez p1, :cond_55

    .line 167
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 168
    return-void

    .line 170
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 171
    return-void
.end method

.method public realmSet$rejectReasonId(I)V
    .registers 11
    .param p1, "value"    # I

    .line 386
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 387
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 388
    return-void

    .line 390
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 391
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 392
    return-void

    .line 395
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 396
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 397
    return-void
.end method

.method public realmSet$totalCount(I)V
    .registers 11
    .param p1, "value"    # I

    .line 212
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 213
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 214
    return-void

    .line 216
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 217
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 218
    return-void

    .line 221
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 222
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 983
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 984
    const-string v0, "Invalid object"

    return-object v0

    .line 986
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShipmentItem = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{OrderItemId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    const-string/jumbo v1, "{description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$description()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$description()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, "null"

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string/jumbo v1, "{brandName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$brandName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$brandName()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    :cond_63
    const-string v1, "null"

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const-string/jumbo v1, "{totalCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$totalCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1001
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string/jumbo v1, "{amountPerQuantity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$amountPerQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1005
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    const-string/jumbo v1, "{batchItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v1, "RealmList<BatchItem>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    const-string/jumbo v1, "{SerialItemList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    const-string v1, "RealmList<String>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    const-string/jumbo v1, "{BasketId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_100

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v1

    goto :goto_102

    :cond_100
    const-string v1, "null"

    :goto_102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    const-string/jumbo v1, "{rejectReasonId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->realmGet$rejectReasonId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1021
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_ShipmentItemRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "ShipmentItem"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxy.ShipmentItemColumnInfo (io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_ShipmentItemRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShipmentItemColumnInfo"
.end annotation


# instance fields
.field BasketIdIndex:J

.field OrderItemIdIndex:J

.field SerialItemListIndex:J

.field amountPerQuantityIndex:J

.field batchItemsIndex:J

.field brandNameIndex:J

.field descriptionIndex:J

.field rejectReasonIdIndex:J

.field totalCountIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 63
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 64
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

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
    const-string v0, "ShipmentItem"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 51
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "OrderItemId"

    const-string v2, "OrderItemId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    .line 52
    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    .line 53
    const-string v1, "brandName"

    const-string v2, "brandName"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    .line 54
    const-string/jumbo v1, "totalCount"

    const-string/jumbo v2, "totalCount"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    .line 55
    const-string v1, "amountPerQuantity"

    const-string v2, "amountPerQuantity"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    .line 56
    const-string v1, "batchItems"

    const-string v2, "batchItems"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->batchItemsIndex:J

    .line 57
    const-string v1, "SerialItemList"

    const-string v2, "SerialItemList"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->SerialItemListIndex:J

    .line 58
    const-string v1, "BasketId"

    const-string v2, "BasketId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    .line 59
    const-string v1, "rejectReasonId"

    const-string v2, "rejectReasonId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    .line 60
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 69
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 74
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    .line 75
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    .line 76
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->OrderItemIdIndex:J

    .line 77
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->descriptionIndex:J

    .line 78
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->brandNameIndex:J

    .line 79
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->totalCountIndex:J

    .line 80
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->amountPerQuantityIndex:J

    .line 81
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->batchItemsIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->batchItemsIndex:J

    .line 82
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->SerialItemListIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->SerialItemListIndex:J

    .line 83
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->BasketIdIndex:J

    .line 84
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;->rejectReasonIdIndex:J

    .line 85
    return-void
.end method
