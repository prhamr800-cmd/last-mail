###### Class io.realm.com_digikala_dms_model_domain_ShipmentRealmProxy (io.realm.com_digikala_dms_model_domain_ShipmentRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;
.super Lcom/digikala/dms/model/domain/Shipment;
.source "com_digikala_dms_model_domain_ShipmentRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private basketItemsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;"
        }
    .end annotation
.end field

.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private returnedProductsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation
.end field

.field private shippingCostConfigRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShippingCostConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 154
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/Shipment;-><init>()V

    .line 163
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 164
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Shipment;
    .registers 22
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/Shipment;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Shipment;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/Shipment;"
        }
    .end annotation

    .line 1764
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    .line 1765
    .local v4, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v4, :cond_14

    .line 1766
    move-object v5, v4

    check-cast v5, Lcom/digikala/dms/model/domain/Shipment;

    return-object v5

    .line 1770
    :cond_14
    const-class v5, Lcom/digikala/dms/model/domain/Shipment;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/Shipment;

    .line 1771
    .local v5, "realmObject":Lcom/digikala/dms/model/domain/Shipment;
    move-object v6, v5

    check-cast v6, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    move-object v6, v1

    check-cast v6, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    .line 1774
    .local v6, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
    move-object v8, v5

    check-cast v8, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    .line 1776
    .local v8, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$orderId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$orderId(Ljava/lang/String;)V

    .line 1777
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$podCode()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$podCode(Ljava/lang/String;)V

    .line 1778
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardTypeId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardTypeId(Ljava/lang/String;)V

    .line 1779
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardNumber()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardNumber(Ljava/lang/String;)V

    .line 1780
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$comment(Ljava/lang/String;)V

    .line 1781
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$invoiceId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$invoiceId(Ljava/lang/String;)V

    .line 1782
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$isFmcg()Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$isFmcg(Ljava/lang/Boolean;)V

    .line 1783
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$autoRefundable()Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$autoRefundable(Ljava/lang/Boolean;)V

    .line 1784
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$priority()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$priority(Ljava/lang/String;)V

    .line 1785
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$paymentStatus()I

    move-result v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$paymentStatus(I)V

    .line 1786
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$payableAmount()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$payableAmount(J)V

    .line 1787
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$remainingAmount()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$remainingAmount(J)V

    .line 1788
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerName(Ljava/lang/String;)V

    .line 1789
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerPhoneNo()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerPhoneNo(Ljava/lang/String;)V

    .line 1790
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientName(Ljava/lang/String;)V

    .line 1791
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientPhoneNo()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientPhoneNo(Ljava/lang/String;)V

    .line 1792
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryTime()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryTime(Ljava/lang/String;)V

    .line 1793
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryAddress()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryAddress(Ljava/lang/String;)V

    .line 1795
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v9

    .line 1796
    .local v9, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    const/4 v10, 0x0

    if-nez v9, :cond_b6

    .line 1797
    invoke-interface {v8, v10}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_c9

    .line 1799
    :cond_b6
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/digikala/dms/model/domain/LatLong;

    .line 1800
    .local v11, "cachedeliveryLatLong":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v11, :cond_c2

    .line 1801
    invoke-interface {v8, v11}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_c9

    .line 1803
    :cond_c2
    invoke-static {v0, v9, v2, v3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    invoke-interface {v8, v12}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 1806
    .end local v11    # "cachedeliveryLatLong":Lcom/digikala/dms/model/domain/LatLong;
    :goto_c9
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$PaymentMethod()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$PaymentMethod(Ljava/lang/String;)V

    .line 1807
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$FinalPayableAmount()Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$FinalPayableAmount(Ljava/lang/Long;)V

    .line 1808
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$status()I

    move-result v11

    invoke-interface {v8, v11}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$status(I)V

    .line 1810
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v11

    .line 1811
    .local v11, "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    if-eqz v11, :cond_10f

    .line 1812
    invoke-interface {v8}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v12

    .line 1813
    .local v12, "basketItemsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    invoke-virtual {v12}, Lio/realm/RealmList;->clear()V

    .line 1814
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_ec
    invoke-virtual {v11}, Lio/realm/RealmList;->size()I

    move-result v14

    if-ge v13, v14, :cond_10f

    .line 1815
    invoke-virtual {v11, v13}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/digikala/dms/model/domain/BasketItems;

    .line 1816
    .local v14, "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/digikala/dms/model/domain/BasketItems;

    .line 1817
    .local v15, "cachebasketItems":Lcom/digikala/dms/model/domain/BasketItems;
    if-eqz v15, :cond_104

    .line 1818
    invoke-virtual {v12, v15}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 1820
    :cond_104
    invoke-static {v0, v14, v2, v3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BasketItems;

    move-result-object v7

    invoke-virtual {v12, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1814
    .end local v14    # "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v15    # "cachebasketItems":Lcom/digikala/dms/model/domain/BasketItems;
    :goto_10b
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_ec

    .line 1826
    .end local v12    # "basketItemsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v13    # "i":I
    :cond_10f
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v7

    .line 1827
    .local v7, "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    if-eqz v7, :cond_140

    .line 1828
    invoke-interface {v8}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v12

    .line 1829
    .local v12, "shippingCostConfigRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    invoke-virtual {v12}, Lio/realm/RealmList;->clear()V

    .line 1830
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_11d
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v14

    if-ge v13, v14, :cond_140

    .line 1831
    invoke-virtual {v7, v13}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 1832
    .local v14, "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 1833
    .local v15, "cacheshippingCostConfig":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    if-eqz v15, :cond_135

    .line 1834
    invoke-virtual {v12, v15}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_13c

    .line 1836
    :cond_135
    invoke-static {v0, v14, v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ShippingCostConfig;

    move-result-object v10

    invoke-virtual {v12, v10}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1830
    .end local v14    # "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    .end local v15    # "cacheshippingCostConfig":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    :goto_13c
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_11d

    .line 1841
    .end local v12    # "shippingCostConfigRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .end local v13    # "i":I
    :cond_140
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketCount()I

    move-result v10

    invoke-interface {v8, v10}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$basketCount(I)V

    .line 1842
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v10

    invoke-interface {v8, v10}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$rejectReasonId(I)V

    .line 1843
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$tupleIsSyncedWithServer()Z

    move-result v10

    invoke-interface {v8, v10}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$tupleIsSyncedWithServer(Z)V

    .line 1844
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$signature()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$signature(Ljava/lang/String;)V

    .line 1845
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmTime()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmTime(Ljava/lang/String;)V

    .line 1847
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v10

    .line 1848
    .local v10, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    if-nez v10, :cond_16e

    .line 1849
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_181

    .line 1851
    :cond_16e
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/digikala/dms/model/domain/LatLong;

    .line 1852
    .local v12, "cacheconfirmLocation":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_17a

    .line 1853
    invoke-interface {v8, v12}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_181

    .line 1855
    :cond_17a
    invoke-static {v0, v10, v2, v3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v13

    invoke-interface {v8, v13}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 1859
    .end local v12    # "cacheconfirmLocation":Lcom/digikala/dms/model/domain/LatLong;
    :goto_181
    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v12

    .line 1860
    .local v12, "returnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    if-eqz v12, :cond_1ba

    .line 1861
    invoke-interface {v8}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v13

    .line 1862
    .local v13, "returnedProductsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    invoke-virtual {v13}, Lio/realm/RealmList;->clear()V

    .line 1863
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_190
    move/from16 v14, v16

    .end local v16    # "i":I
    .local v14, "i":I
    invoke-virtual {v12}, Lio/realm/RealmList;->size()I

    move-result v15

    if-ge v14, v15, :cond_1ba

    .line 1864
    invoke-virtual {v12, v14}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/digikala/dms/model/design/SerialItems;

    .line 1865
    .local v15, "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    .line 1866
    .local v1, "cachereturnedProducts":Lcom/digikala/dms/model/design/SerialItems;
    if-eqz v1, :cond_1ac

    .line 1867
    invoke-virtual {v13, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1b5

    .line 1869
    :cond_1ac
    move-object/from16 v17, v1

    .end local v1    # "cachereturnedProducts":Lcom/digikala/dms/model/design/SerialItems;
    .local v17, "cachereturnedProducts":Lcom/digikala/dms/model/design/SerialItems;
    invoke-static {v0, v15, v2, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;ZLjava/util/Map;)Lcom/digikala/dms/model/design/SerialItems;

    move-result-object v1

    invoke-virtual {v13, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1863
    .end local v15    # "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    .end local v17    # "cachereturnedProducts":Lcom/digikala/dms/model/design/SerialItems;
    :goto_1b5
    add-int/lit8 v16, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_190

    .line 1874
    .end local v13    # "returnedProductsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    .end local v14    # "i":I
    :cond_1ba
    return-object v5
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Shipment;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/Shipment;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Shipment;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/Shipment;"
        }
    .end annotation

    .line 1745
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

    .line 1746
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 1747
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 1750
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1751
    return-object p1

    .line 1748
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1754
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1755
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 1756
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 1757
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    return-object v2

    .line 1760
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 1219
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/Shipment;IILjava/util/Map;)Lcom/digikala/dms/model/domain/Shipment;
    .registers 16
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/Shipment;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/Shipment;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/Shipment;"
        }
    .end annotation

    .line 2662
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    const/4 v0, 0x0

    if-gt p1, p2, :cond_185

    if-nez p0, :cond_7

    goto/16 :goto_185

    .line 2665
    :cond_7
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 2667
    .local v1, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v1, :cond_1d

    .line 2668
    new-instance v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-direct {v2}, Lcom/digikala/dms/model/domain/Shipment;-><init>()V

    .line 2669
    .local v2, "unmanagedObject":Lcom/digikala/dms/model/domain/Shipment;
    new-instance v3, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v3, p1, v2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 2672
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/Shipment;
    :cond_1d
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_26

    .line 2673
    iget-object v0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    return-object v0

    .line 2675
    :cond_26
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    .line 2676
    .restart local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/Shipment;
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 2678
    :goto_2c
    move-object v3, v2

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    .line 2679
    .local v3, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
    move-object v4, p0

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    .line 2680
    .local v4, "realmSource":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$orderId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$orderId(Ljava/lang/String;)V

    .line 2681
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$podCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$podCode(Ljava/lang/String;)V

    .line 2682
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardTypeId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardTypeId(Ljava/lang/String;)V

    .line 2683
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardNumber(Ljava/lang/String;)V

    .line 2684
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$comment(Ljava/lang/String;)V

    .line 2685
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$invoiceId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$invoiceId(Ljava/lang/String;)V

    .line 2686
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$isFmcg()Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$isFmcg(Ljava/lang/Boolean;)V

    .line 2687
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$autoRefundable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$autoRefundable(Ljava/lang/Boolean;)V

    .line 2688
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$priority()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$priority(Ljava/lang/String;)V

    .line 2689
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$paymentStatus()I

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$paymentStatus(I)V

    .line 2690
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$payableAmount()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$payableAmount(J)V

    .line 2691
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$remainingAmount()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$remainingAmount(J)V

    .line 2692
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerName(Ljava/lang/String;)V

    .line 2693
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerPhoneNo()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerPhoneNo(Ljava/lang/String;)V

    .line 2694
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientName(Ljava/lang/String;)V

    .line 2695
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientPhoneNo()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientPhoneNo(Ljava/lang/String;)V

    .line 2696
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryTime()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryTime(Ljava/lang/String;)V

    .line 2697
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryAddress(Ljava/lang/String;)V

    .line 2700
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6, p2, p3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/LatLong;IILjava/util/Map;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 2701
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$PaymentMethod()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$PaymentMethod(Ljava/lang/String;)V

    .line 2702
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$FinalPayableAmount()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$FinalPayableAmount(Ljava/lang/Long;)V

    .line 2703
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$status()I

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$status(I)V

    .line 2706
    const/4 v5, 0x0

    if-ne p1, p2, :cond_d9

    .line 2707
    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$basketItems(Lio/realm/RealmList;)V

    goto :goto_fe

    .line 2709
    :cond_d9
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v6

    .line 2710
    .local v6, "managedbasketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    new-instance v7, Lio/realm/RealmList;

    invoke-direct {v7}, Lio/realm/RealmList;-><init>()V

    .line 2711
    .local v7, "unmanagedbasketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    invoke-interface {v3, v7}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$basketItems(Lio/realm/RealmList;)V

    .line 2712
    add-int/lit8 v8, p1, 0x1

    .line 2713
    .local v8, "nextDepth":I
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v9

    .line 2714
    .local v9, "size":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_ec
    if-ge v10, v9, :cond_fe

    .line 2715
    invoke-virtual {v6, v10}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-static {v11, v8, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/BasketItems;IILjava/util/Map;)Lcom/digikala/dms/model/domain/BasketItems;

    move-result-object v11

    .line 2716
    .local v11, "item":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-virtual {v7, v11}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 2714
    .end local v11    # "item":Lcom/digikala/dms/model/domain/BasketItems;
    add-int/lit8 v10, v10, 0x1

    goto :goto_ec

    .line 2721
    .end local v6    # "managedbasketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v7    # "unmanagedbasketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v8    # "nextDepth":I
    .end local v9    # "size":I
    .end local v10    # "i":I
    :cond_fe
    :goto_fe
    if-ne p1, p2, :cond_104

    .line 2722
    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$shippingCostConfig(Lio/realm/RealmList;)V

    goto :goto_129

    .line 2724
    :cond_104
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v6

    .line 2725
    .local v6, "managedshippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    new-instance v7, Lio/realm/RealmList;

    invoke-direct {v7}, Lio/realm/RealmList;-><init>()V

    .line 2726
    .local v7, "unmanagedshippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    invoke-interface {v3, v7}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$shippingCostConfig(Lio/realm/RealmList;)V

    .line 2727
    add-int/lit8 v8, p1, 0x1

    .line 2728
    .restart local v8    # "nextDepth":I
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v9

    .line 2729
    .restart local v9    # "size":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_117
    if-ge v10, v9, :cond_129

    .line 2730
    invoke-virtual {v6, v10}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-static {v11, v8, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/ShippingCostConfig;IILjava/util/Map;)Lcom/digikala/dms/model/domain/ShippingCostConfig;

    move-result-object v11

    .line 2731
    .local v11, "item":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-virtual {v7, v11}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 2729
    .end local v11    # "item":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    add-int/lit8 v10, v10, 0x1

    goto :goto_117

    .line 2734
    .end local v6    # "managedshippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .end local v7    # "unmanagedshippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .end local v8    # "nextDepth":I
    .end local v9    # "size":I
    .end local v10    # "i":I
    :cond_129
    :goto_129
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketCount()I

    move-result v6

    invoke-interface {v3, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$basketCount(I)V

    .line 2735
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v6

    invoke-interface {v3, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$rejectReasonId(I)V

    .line 2736
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$tupleIsSyncedWithServer()Z

    move-result v6

    invoke-interface {v3, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$tupleIsSyncedWithServer(Z)V

    .line 2737
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$signature()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$signature(Ljava/lang/String;)V

    .line 2738
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmTime()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmTime(Ljava/lang/String;)V

    .line 2741
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-static {v6, v7, p2, p3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/LatLong;IILjava/util/Map;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v6

    invoke-interface {v3, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 2744
    if-ne p1, p2, :cond_15f

    .line 2745
    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$returnedProducts(Lio/realm/RealmList;)V

    goto :goto_184

    .line 2747
    :cond_15f
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v0

    .line 2748
    .local v0, "managedreturnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    new-instance v6, Lio/realm/RealmList;

    invoke-direct {v6}, Lio/realm/RealmList;-><init>()V

    .line 2749
    .local v6, "unmanagedreturnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    invoke-interface {v3, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$returnedProducts(Lio/realm/RealmList;)V

    .line 2750
    add-int/lit8 v7, p1, 0x1

    .line 2751
    .local v7, "nextDepth":I
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v8

    .line 2752
    .local v8, "size":I
    nop

    .local v5, "i":I
    :goto_172
    if-ge v5, v8, :cond_184

    .line 2753
    invoke-virtual {v0, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/design/SerialItems;

    invoke-static {v9, v7, p2, p3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/design/SerialItems;IILjava/util/Map;)Lcom/digikala/dms/model/design/SerialItems;

    move-result-object v9

    .line 2754
    .local v9, "item":Lcom/digikala/dms/model/design/SerialItems;
    invoke-virtual {v6, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 2752
    .end local v9    # "item":Lcom/digikala/dms/model/design/SerialItems;
    add-int/lit8 v5, v5, 0x1

    goto :goto_172

    .line 2758
    .end local v0    # "managedreturnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    .end local v5    # "i":I
    .end local v6    # "unmanagedreturnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    .end local v7    # "nextDepth":I
    .end local v8    # "size":I
    :cond_184
    :goto_184
    return-object v2

    .line 2663
    .end local v1    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/Shipment;
    .end local v3    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
    .end local v4    # "realmSource":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
    :cond_185
    :goto_185
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 1179
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "Shipment"

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 1180
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v5, "orderId"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1181
    const-string v5, "podCode"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1182
    const-string v5, "cardTypeId"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1183
    const-string v5, "cardNumber"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1184
    const-string v5, "comment"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1185
    const-string v5, "invoiceId"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1186
    const-string v5, "isFmcg"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1187
    const-string v5, "autoRefundable"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1188
    const-string v5, "priority"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1189
    const-string v5, "paymentStatus"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1190
    const-string v5, "payableAmount"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1191
    const-string v5, "remainingAmount"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1192
    const-string v5, "customerName"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1193
    const-string v5, "customerPhoneNo"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1194
    const-string v5, "recipientName"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1195
    const-string v5, "recipientPhoneNo"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1196
    const-string v5, "deliveryTime"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1197
    const-string v5, "deliveryAddress"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1198
    const-string v1, "deliveryLatLong"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v3, "LatLong"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1199
    const-string v5, "PaymentMethod"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1200
    const-string v5, "FinalPayableAmount"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1201
    const-string v5, "status"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1202
    const-string v1, "basketItems"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "BasketItems"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1203
    const-string v1, "shippingCostConfig"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "ShippingCostConfig"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1204
    const-string v5, "basketCount"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1205
    const-string v5, "rejectReasonId"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1206
    const-string/jumbo v5, "tupleIsSyncedWithServer"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1207
    const-string v5, "signature"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1208
    const-string v5, "confirmTime"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1209
    const-string v1, "confirmLocation"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v3, "LatLong"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1210
    const-string v1, "returnedProducts"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "SerialItems"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 1211
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/Shipment;
    .registers 12
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1234
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "deliveryLatLong"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1235
    const-string v1, "deliveryLatLong"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_13
    const-string v1, "basketItems"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1238
    const-string v1, "basketItems"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_20
    const-string v1, "shippingCostConfig"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1241
    const-string v1, "shippingCostConfig"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_2d
    const-string v1, "confirmLocation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1244
    const-string v1, "confirmLocation"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    :cond_3a
    const-string v1, "returnedProducts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1247
    const-string v1, "returnedProducts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    :cond_47
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 1251
    .local v1, "obj":Lcom/digikala/dms/model/domain/Shipment;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    .line 1252
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
    const-string v3, "orderId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_71

    .line 1253
    const-string v3, "orderId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1254
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$orderId(Ljava/lang/String;)V

    goto :goto_71

    .line 1256
    :cond_68
    const-string v3, "orderId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$orderId(Ljava/lang/String;)V

    .line 1259
    :cond_71
    :goto_71
    const-string v3, "podCode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 1260
    const-string v3, "podCode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1261
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$podCode(Ljava/lang/String;)V

    goto :goto_8e

    .line 1263
    :cond_85
    const-string v3, "podCode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$podCode(Ljava/lang/String;)V

    .line 1266
    :cond_8e
    :goto_8e
    const-string v3, "cardTypeId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1267
    const-string v3, "cardTypeId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 1268
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardTypeId(Ljava/lang/String;)V

    goto :goto_ab

    .line 1270
    :cond_a2
    const-string v3, "cardTypeId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardTypeId(Ljava/lang/String;)V

    .line 1273
    :cond_ab
    :goto_ab
    const-string v3, "cardNumber"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 1274
    const-string v3, "cardNumber"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 1275
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardNumber(Ljava/lang/String;)V

    goto :goto_c8

    .line 1277
    :cond_bf
    const-string v3, "cardNumber"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardNumber(Ljava/lang/String;)V

    .line 1280
    :cond_c8
    :goto_c8
    const-string v3, "comment"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 1281
    const-string v3, "comment"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 1282
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$comment(Ljava/lang/String;)V

    goto :goto_e5

    .line 1284
    :cond_dc
    const-string v3, "comment"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$comment(Ljava/lang/String;)V

    .line 1287
    :cond_e5
    :goto_e5
    const-string v3, "invoiceId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 1288
    const-string v3, "invoiceId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 1289
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$invoiceId(Ljava/lang/String;)V

    goto :goto_102

    .line 1291
    :cond_f9
    const-string v3, "invoiceId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$invoiceId(Ljava/lang/String;)V

    .line 1294
    :cond_102
    :goto_102
    const-string v3, "isFmcg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 1295
    const-string v3, "isFmcg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 1296
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$isFmcg(Ljava/lang/Boolean;)V

    goto :goto_123

    .line 1298
    :cond_116
    const-string v3, "isFmcg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$isFmcg(Ljava/lang/Boolean;)V

    .line 1301
    :cond_123
    :goto_123
    const-string v3, "autoRefundable"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_144

    .line 1302
    const-string v3, "autoRefundable"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 1303
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$autoRefundable(Ljava/lang/Boolean;)V

    goto :goto_144

    .line 1305
    :cond_137
    const-string v3, "autoRefundable"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$autoRefundable(Ljava/lang/Boolean;)V

    .line 1308
    :cond_144
    :goto_144
    const-string v3, "priority"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_161

    .line 1309
    const-string v3, "priority"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 1310
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$priority(Ljava/lang/String;)V

    goto :goto_161

    .line 1312
    :cond_158
    const-string v3, "priority"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$priority(Ljava/lang/String;)V

    .line 1315
    :cond_161
    :goto_161
    const-string v3, "paymentStatus"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 1316
    const-string v3, "paymentStatus"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17b

    .line 1319
    const-string v3, "paymentStatus"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$paymentStatus(I)V

    goto :goto_183

    .line 1317
    :cond_17b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'paymentStatus\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1322
    :cond_183
    :goto_183
    const-string v3, "payableAmount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 1323
    const-string v3, "payableAmount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19d

    .line 1326
    const-string v3, "payableAmount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$payableAmount(J)V

    goto :goto_1a5

    .line 1324
    :cond_19d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'payableAmount\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1329
    :cond_1a5
    :goto_1a5
    const-string v3, "remainingAmount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c7

    .line 1330
    const-string v3, "remainingAmount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1bf

    .line 1333
    const-string v3, "remainingAmount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$remainingAmount(J)V

    goto :goto_1c7

    .line 1331
    :cond_1bf
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'remainingAmount\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1336
    :cond_1c7
    :goto_1c7
    const-string v3, "customerName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e4

    .line 1337
    const-string v3, "customerName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1db

    .line 1338
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerName(Ljava/lang/String;)V

    goto :goto_1e4

    .line 1340
    :cond_1db
    const-string v3, "customerName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerName(Ljava/lang/String;)V

    .line 1343
    :cond_1e4
    :goto_1e4
    const-string v3, "customerPhoneNo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_201

    .line 1344
    const-string v3, "customerPhoneNo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 1345
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerPhoneNo(Ljava/lang/String;)V

    goto :goto_201

    .line 1347
    :cond_1f8
    const-string v3, "customerPhoneNo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerPhoneNo(Ljava/lang/String;)V

    .line 1350
    :cond_201
    :goto_201
    const-string v3, "recipientName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21e

    .line 1351
    const-string v3, "recipientName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_215

    .line 1352
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientName(Ljava/lang/String;)V

    goto :goto_21e

    .line 1354
    :cond_215
    const-string v3, "recipientName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientName(Ljava/lang/String;)V

    .line 1357
    :cond_21e
    :goto_21e
    const-string v3, "recipientPhoneNo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23b

    .line 1358
    const-string v3, "recipientPhoneNo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_232

    .line 1359
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientPhoneNo(Ljava/lang/String;)V

    goto :goto_23b

    .line 1361
    :cond_232
    const-string v3, "recipientPhoneNo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientPhoneNo(Ljava/lang/String;)V

    .line 1364
    :cond_23b
    :goto_23b
    const-string v3, "deliveryTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_258

    .line 1365
    const-string v3, "deliveryTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24f

    .line 1366
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryTime(Ljava/lang/String;)V

    goto :goto_258

    .line 1368
    :cond_24f
    const-string v3, "deliveryTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryTime(Ljava/lang/String;)V

    .line 1371
    :cond_258
    :goto_258
    const-string v3, "deliveryAddress"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_275

    .line 1372
    const-string v3, "deliveryAddress"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26c

    .line 1373
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryAddress(Ljava/lang/String;)V

    goto :goto_275

    .line 1375
    :cond_26c
    const-string v3, "deliveryAddress"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryAddress(Ljava/lang/String;)V

    .line 1378
    :cond_275
    :goto_275
    const-string v3, "deliveryLatLong"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_296

    .line 1379
    const-string v3, "deliveryLatLong"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_289

    .line 1380
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_296

    .line 1382
    :cond_289
    const-string v3, "deliveryLatLong"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v3

    .line 1383
    .local v3, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 1386
    .end local v3    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_296
    :goto_296
    const-string v3, "PaymentMethod"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b3

    .line 1387
    const-string v3, "PaymentMethod"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2aa

    .line 1388
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$PaymentMethod(Ljava/lang/String;)V

    goto :goto_2b3

    .line 1390
    :cond_2aa
    const-string v3, "PaymentMethod"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$PaymentMethod(Ljava/lang/String;)V

    .line 1393
    :cond_2b3
    :goto_2b3
    const-string v3, "FinalPayableAmount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d4

    .line 1394
    const-string v3, "FinalPayableAmount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c7

    .line 1395
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$FinalPayableAmount(Ljava/lang/Long;)V

    goto :goto_2d4

    .line 1397
    :cond_2c7
    const-string v3, "FinalPayableAmount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$FinalPayableAmount(Ljava/lang/Long;)V

    .line 1400
    :cond_2d4
    :goto_2d4
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f6

    .line 1401
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2ee

    .line 1404
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$status(I)V

    goto :goto_2f6

    .line 1402
    :cond_2ee
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'status\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1407
    :cond_2f6
    :goto_2f6
    const-string v3, "basketItems"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_331

    .line 1408
    const-string v3, "basketItems"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30b

    .line 1409
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$basketItems(Lio/realm/RealmList;)V

    goto :goto_331

    .line 1411
    :cond_30b
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 1412
    const-string v3, "basketItems"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1413
    .local v3, "array":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_319
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_331

    .line 1414
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/BasketItems;

    move-result-object v7

    .line 1415
    .local v7, "item":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1413
    .end local v7    # "item":Lcom/digikala/dms/model/domain/BasketItems;
    add-int/lit8 v6, v6, 0x1

    goto :goto_319

    .line 1419
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v6    # "i":I
    :cond_331
    :goto_331
    const-string v3, "shippingCostConfig"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36b

    .line 1420
    const-string v3, "shippingCostConfig"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_345

    .line 1421
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$shippingCostConfig(Lio/realm/RealmList;)V

    goto :goto_36b

    .line 1423
    :cond_345
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 1424
    const-string v3, "shippingCostConfig"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1425
    .restart local v3    # "array":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_353
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_36b

    .line 1426
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/ShippingCostConfig;

    move-result-object v7

    .line 1427
    .local v7, "item":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1425
    .end local v7    # "item":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    add-int/lit8 v6, v6, 0x1

    goto :goto_353

    .line 1431
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v6    # "i":I
    :cond_36b
    :goto_36b
    const-string v3, "basketCount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38d

    .line 1432
    const-string v3, "basketCount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_385

    .line 1435
    const-string v3, "basketCount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$basketCount(I)V

    goto :goto_38d

    .line 1433
    :cond_385
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'basketCount\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1438
    :cond_38d
    :goto_38d
    const-string v3, "rejectReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3af

    .line 1439
    const-string v3, "rejectReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a7

    .line 1442
    const-string v3, "rejectReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$rejectReasonId(I)V

    goto :goto_3af

    .line 1440
    :cond_3a7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'rejectReasonId\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1445
    :cond_3af
    :goto_3af
    const-string/jumbo v3, "tupleIsSyncedWithServer"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d4

    .line 1446
    const-string/jumbo v3, "tupleIsSyncedWithServer"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3cc

    .line 1449
    const-string/jumbo v3, "tupleIsSyncedWithServer"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$tupleIsSyncedWithServer(Z)V

    goto :goto_3d4

    .line 1447
    :cond_3cc
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'tupleIsSyncedWithServer\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1452
    :cond_3d4
    :goto_3d4
    const-string v3, "signature"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f1

    .line 1453
    const-string v3, "signature"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e8

    .line 1454
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$signature(Ljava/lang/String;)V

    goto :goto_3f1

    .line 1456
    :cond_3e8
    const-string v3, "signature"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$signature(Ljava/lang/String;)V

    .line 1459
    :cond_3f1
    :goto_3f1
    const-string v3, "confirmTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40e

    .line 1460
    const-string v3, "confirmTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_405

    .line 1461
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmTime(Ljava/lang/String;)V

    goto :goto_40e

    .line 1463
    :cond_405
    const-string v3, "confirmTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmTime(Ljava/lang/String;)V

    .line 1466
    :cond_40e
    :goto_40e
    const-string v3, "confirmLocation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42f

    .line 1467
    const-string v3, "confirmLocation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_422

    .line 1468
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_42f

    .line 1470
    :cond_422
    const-string v3, "confirmLocation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v3

    .line 1471
    .local v3, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 1474
    .end local v3    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_42f
    :goto_42f
    const-string v3, "returnedProducts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46a

    .line 1475
    const-string v3, "returnedProducts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_443

    .line 1476
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$returnedProducts(Lio/realm/RealmList;)V

    goto :goto_46a

    .line 1478
    :cond_443
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 1479
    const-string v3, "returnedProducts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1480
    .local v3, "array":Lorg/json/JSONArray;
    nop

    .local v5, "i":I
    :goto_451
    move v4, v5

    .end local v5    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_46a

    .line 1481
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/SerialItems;

    move-result-object v5

    .line 1482
    .local v5, "item":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1480
    .end local v5    # "item":Lcom/digikala/dms/model/design/SerialItems;
    add-int/lit8 v5, v4, 0x1

    goto :goto_451

    .line 1486
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_46a
    :goto_46a
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/Shipment;
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

    .line 1493
    new-instance v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/Shipment;-><init>()V

    .line 1494
    .local v0, "obj":Lcom/digikala/dms/model/domain/Shipment;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    .line 1495
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 1496
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_481

    .line 1497
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 1499
    .local v2, "name":Ljava/lang/String;
    const-string v3, "orderId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 1500
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2f

    .line 1501
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$orderId(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1503
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1504
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$orderId(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1506
    :cond_37
    const-string v3, "podCode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1507
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_50

    .line 1508
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$podCode(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1510
    :cond_50
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1511
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$podCode(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1513
    :cond_58
    const-string v3, "cardTypeId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1514
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_71

    .line 1515
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardTypeId(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1517
    :cond_71
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1518
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardTypeId(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1520
    :cond_79
    const-string v3, "cardNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 1521
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_92

    .line 1522
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardNumber(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1524
    :cond_92
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1525
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$cardNumber(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1527
    :cond_9a
    const-string v3, "comment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 1528
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_b3

    .line 1529
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$comment(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1531
    :cond_b3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1532
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$comment(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1534
    :cond_bb
    const-string v3, "invoiceId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 1535
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_d4

    .line 1536
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$invoiceId(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1538
    :cond_d4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1539
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$invoiceId(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1541
    :cond_dc
    const-string v3, "isFmcg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 1542
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_f9

    .line 1543
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$isFmcg(Ljava/lang/Boolean;)V

    goto/16 :goto_47f

    .line 1545
    :cond_f9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1546
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$isFmcg(Ljava/lang/Boolean;)V

    goto/16 :goto_47f

    .line 1548
    :cond_101
    const-string v3, "autoRefundable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 1549
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_11e

    .line 1550
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$autoRefundable(Ljava/lang/Boolean;)V

    goto/16 :goto_47f

    .line 1552
    :cond_11e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1553
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$autoRefundable(Ljava/lang/Boolean;)V

    goto/16 :goto_47f

    .line 1555
    :cond_126
    const-string v3, "priority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_147

    .line 1556
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_13f

    .line 1557
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$priority(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1559
    :cond_13f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1560
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$priority(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1562
    :cond_147
    const-string v3, "paymentStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 1563
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_160

    .line 1564
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$paymentStatus(I)V

    goto/16 :goto_47f

    .line 1566
    :cond_160
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1567
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'paymentStatus\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1569
    :cond_16b
    const-string v3, "payableAmount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 1570
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_184

    .line 1571
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$payableAmount(J)V

    goto/16 :goto_47f

    .line 1573
    :cond_184
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1574
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'payableAmount\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1576
    :cond_18f
    const-string v3, "remainingAmount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 1577
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_1a8

    .line 1578
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$remainingAmount(J)V

    goto/16 :goto_47f

    .line 1580
    :cond_1a8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1581
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'remainingAmount\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1583
    :cond_1b3
    const-string v3, "customerName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d4

    .line 1584
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_1cc

    .line 1585
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerName(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1587
    :cond_1cc
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1588
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerName(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1590
    :cond_1d4
    const-string v3, "customerPhoneNo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f5

    .line 1591
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_1ed

    .line 1592
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerPhoneNo(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1594
    :cond_1ed
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1595
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$customerPhoneNo(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1597
    :cond_1f5
    const-string v3, "recipientName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 1598
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_20e

    .line 1599
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientName(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1601
    :cond_20e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1602
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientName(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1604
    :cond_216
    const-string v3, "recipientPhoneNo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_237

    .line 1605
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_22f

    .line 1606
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientPhoneNo(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1608
    :cond_22f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1609
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$recipientPhoneNo(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1611
    :cond_237
    const-string v3, "deliveryTime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_258

    .line 1612
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_250

    .line 1613
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryTime(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1615
    :cond_250
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1616
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryTime(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1618
    :cond_258
    const-string v3, "deliveryAddress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_279

    .line 1619
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_271

    .line 1620
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryAddress(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1622
    :cond_271
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1623
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryAddress(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1625
    :cond_279
    const-string v3, "deliveryLatLong"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29a

    .line 1626
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_291

    .line 1627
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1628
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V

    goto/16 :goto_47f

    .line 1630
    :cond_291
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v3

    .line 1631
    .local v3, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 1632
    .end local v3    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    goto/16 :goto_47f

    .line 1633
    :cond_29a
    const-string v3, "PaymentMethod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2bb

    .line 1634
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2b3

    .line 1635
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$PaymentMethod(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1637
    :cond_2b3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1638
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$PaymentMethod(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1640
    :cond_2bb
    const-string v3, "FinalPayableAmount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e0

    .line 1641
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2d8

    .line 1642
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$FinalPayableAmount(Ljava/lang/Long;)V

    goto/16 :goto_47f

    .line 1644
    :cond_2d8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1645
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$FinalPayableAmount(Ljava/lang/Long;)V

    goto/16 :goto_47f

    .line 1647
    :cond_2e0
    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_304

    .line 1648
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_2f9

    .line 1649
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$status(I)V

    goto/16 :goto_47f

    .line 1651
    :cond_2f9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1652
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'status\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1654
    :cond_304
    const-string v3, "basketItems"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33e

    .line 1655
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_31c

    .line 1656
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1657
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$basketItems(Lio/realm/RealmList;)V

    goto/16 :goto_47f

    .line 1659
    :cond_31c
    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$basketItems(Lio/realm/RealmList;)V

    .line 1660
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 1661
    :goto_327
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_339

    .line 1662
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/BasketItems;

    move-result-object v3

    .line 1663
    .local v3, "item":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1664
    .end local v3    # "item":Lcom/digikala/dms/model/domain/BasketItems;
    goto :goto_327

    .line 1665
    :cond_339
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_47f

    .line 1667
    :cond_33e
    const-string v3, "shippingCostConfig"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_378

    .line 1668
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_356

    .line 1669
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1670
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$shippingCostConfig(Lio/realm/RealmList;)V

    goto/16 :goto_47f

    .line 1672
    :cond_356
    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$shippingCostConfig(Lio/realm/RealmList;)V

    .line 1673
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 1674
    :goto_361
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_373

    .line 1675
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/ShippingCostConfig;

    move-result-object v3

    .line 1676
    .local v3, "item":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-interface {v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1677
    .end local v3    # "item":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    goto :goto_361

    .line 1678
    :cond_373
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_47f

    .line 1680
    :cond_378
    const-string v3, "basketCount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39c

    .line 1681
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_391

    .line 1682
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$basketCount(I)V

    goto/16 :goto_47f

    .line 1684
    :cond_391
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1685
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'basketCount\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1687
    :cond_39c
    const-string v3, "rejectReasonId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c0

    .line 1688
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_3b5

    .line 1689
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$rejectReasonId(I)V

    goto/16 :goto_47f

    .line 1691
    :cond_3b5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1692
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'rejectReasonId\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1694
    :cond_3c0
    const-string/jumbo v3, "tupleIsSyncedWithServer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e5

    .line 1695
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_3da

    .line 1696
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$tupleIsSyncedWithServer(Z)V

    goto/16 :goto_47f

    .line 1698
    :cond_3da
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1699
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'tupleIsSyncedWithServer\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1701
    :cond_3e5
    const-string v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_406

    .line 1702
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_3fe

    .line 1703
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$signature(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1705
    :cond_3fe
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1706
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$signature(Ljava/lang/String;)V

    goto/16 :goto_47f

    .line 1708
    :cond_406
    const-string v3, "confirmTime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    .line 1709
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_41e

    .line 1710
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmTime(Ljava/lang/String;)V

    goto :goto_47f

    .line 1712
    :cond_41e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1713
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmTime(Ljava/lang/String;)V

    goto :goto_47f

    .line 1715
    :cond_425
    const-string v3, "confirmLocation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_444

    .line 1716
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_43c

    .line 1717
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1718
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    goto :goto_47f

    .line 1720
    :cond_43c
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v3

    .line 1721
    .local v3, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 1722
    .end local v3    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    goto :goto_47f

    .line 1723
    :cond_444
    const-string v3, "returnedProducts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47c

    .line 1724
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_45b

    .line 1725
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1726
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$returnedProducts(Lio/realm/RealmList;)V

    goto :goto_47f

    .line 1728
    :cond_45b
    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmSet$returnedProducts(Lio/realm/RealmList;)V

    .line 1729
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 1730
    :goto_466
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_478

    .line 1731
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/SerialItems;

    move-result-object v3

    .line 1732
    .local v3, "item":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1733
    .end local v3    # "item":Lcom/digikala/dms/model/design/SerialItems;
    goto :goto_466

    .line 1734
    :cond_478
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_47f

    .line 1737
    :cond_47c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1739
    .end local v2    # "name":Ljava/lang/String;
    :goto_47f
    goto/16 :goto_b

    .line 1740
    :cond_481
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 1741
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 1215
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 1223
    const-string v0, "Shipment"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J
    .registers 46
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/Shipment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Shipment;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1878
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

    .line 1879
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 1881
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 1882
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 1883
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    .line 1884
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 1885
    .local v11, "rowIndex":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$orderId()Ljava/lang/String;

    move-result-object v16

    .line 1887
    .local v16, "realmGet$orderId":Ljava/lang/String;
    if-eqz v16, :cond_7b

    .line 1888
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

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

    .line 1890
    .end local v18    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    :cond_7b
    move-wide/from16 v18, v11

    .end local v11    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :goto_7d
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$podCode()Ljava/lang/String;

    move-result-object v17

    .line 1891
    .local v17, "realmGet$podCode":Ljava/lang/String;
    if-eqz v17, :cond_91

    .line 1892
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1894
    :cond_91
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardTypeId()Ljava/lang/String;

    move-result-object v20

    .line 1895
    .local v20, "realmGet$cardTypeId":Ljava/lang/String;
    if-eqz v20, :cond_a5

    .line 1896
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v20

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1898
    :cond_a5
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardNumber()Ljava/lang/String;

    move-result-object v21

    .line 1899
    .local v21, "realmGet$cardNumber":Ljava/lang/String;
    if-eqz v21, :cond_b9

    .line 1900
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v21

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1902
    :cond_b9
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object v22

    .line 1903
    .local v22, "realmGet$comment":Ljava/lang/String;
    if-eqz v22, :cond_cd

    .line 1904
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v22

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1906
    :cond_cd
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$invoiceId()Ljava/lang/String;

    move-result-object v23

    .line 1907
    .local v23, "realmGet$invoiceId":Ljava/lang/String;
    if-eqz v23, :cond_e1

    .line 1908
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v23

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1910
    :cond_e1
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$isFmcg()Ljava/lang/Boolean;

    move-result-object v24

    .line 1911
    .local v24, "realmGet$isFmcg":Ljava/lang/Boolean;
    if-eqz v24, :cond_f7

    .line 1912
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1914
    :cond_f7
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$autoRefundable()Ljava/lang/Boolean;

    move-result-object v25

    .line 1915
    .local v25, "realmGet$autoRefundable":Ljava/lang/Boolean;
    if-eqz v25, :cond_10d

    .line 1916
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1918
    :cond_10d
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$priority()Ljava/lang/String;

    move-result-object v26

    .line 1919
    .local v26, "realmGet$priority":Ljava/lang/String;
    if-eqz v26, :cond_121

    .line 1920
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v26

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1922
    :cond_121
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$paymentStatus()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1923
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$payableAmount()J

    move-result-wide v10

    move-wide v4, v13

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1924
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$remainingAmount()J

    move-result-wide v10

    move-wide v4, v13

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1925
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerName()Ljava/lang/String;

    move-result-object v27

    .line 1926
    .local v27, "realmGet$customerName":Ljava/lang/String;
    if-eqz v27, :cond_160

    .line 1927
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v27

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1929
    :cond_160
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerPhoneNo()Ljava/lang/String;

    move-result-object v28

    .line 1930
    .local v28, "realmGet$customerPhoneNo":Ljava/lang/String;
    if-eqz v28, :cond_174

    .line 1931
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v28

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1933
    :cond_174
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientName()Ljava/lang/String;

    move-result-object v29

    .line 1934
    .local v29, "realmGet$recipientName":Ljava/lang/String;
    if-eqz v29, :cond_188

    .line 1935
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v29

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1937
    :cond_188
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientPhoneNo()Ljava/lang/String;

    move-result-object v30

    .line 1938
    .local v30, "realmGet$recipientPhoneNo":Ljava/lang/String;
    if-eqz v30, :cond_19c

    .line 1939
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v30

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1941
    :cond_19c
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryTime()Ljava/lang/String;

    move-result-object v31

    .line 1942
    .local v31, "realmGet$deliveryTime":Ljava/lang/String;
    if-eqz v31, :cond_1b0

    .line 1943
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v31

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1945
    :cond_1b0
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryAddress()Ljava/lang/String;

    move-result-object v32

    .line 1946
    .local v32, "realmGet$deliveryAddress":Ljava/lang/String;
    if-eqz v32, :cond_1c4

    .line 1947
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v32

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1950
    :cond_1c4
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 1951
    .local v12, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_1f2

    .line 1952
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1953
    .local v4, "cachedeliveryLatLong":Ljava/lang/Long;
    if-nez v4, :cond_1dd

    .line 1954
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1956
    .end local v4    # "cachedeliveryLatLong":Ljava/lang/Long;
    .local v33, "cachedeliveryLatLong":Ljava/lang/Long;
    :cond_1dd
    move-object/from16 v33, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v34, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v35, v12

    .end local v12    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v35, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v12, v34

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_1f4

    .line 1958
    .end local v33    # "cachedeliveryLatLong":Ljava/lang/Long;
    .end local v35    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v12    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_1f2
    move-object/from16 v35, v12

    .end local v12    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v35    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :goto_1f4
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$PaymentMethod()Ljava/lang/String;

    move-result-object v33

    .line 1959
    .local v33, "realmGet$PaymentMethod":Ljava/lang/String;
    if-eqz v33, :cond_208

    .line 1960
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v33

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1962
    :cond_208
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$FinalPayableAmount()Ljava/lang/Long;

    move-result-object v34

    .line 1963
    .local v34, "realmGet$FinalPayableAmount":Ljava/lang/Number;
    if-eqz v34, :cond_21e

    .line 1964
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1966
    :cond_21e
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$status()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1968
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v36

    .line 1969
    .local v36, "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    if-eqz v36, :cond_26d

    .line 1970
    new-instance v4, Lio/realm/internal/OsList;

    move-wide/from16 v10, v18

    .end local v18    # "rowIndex":J
    .local v10, "rowIndex":J
    invoke-virtual {v3, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketItemsIndex:J

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1971
    .local v4, "basketItemsOsList":Lio/realm/internal/OsList;
    invoke-virtual/range {v36 .. v36}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_249
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/BasketItems;

    .line 1972
    .local v6, "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1973
    .local v7, "cacheItemIndexbasketItems":Ljava/lang/Long;
    if-nez v7, :cond_265

    .line 1974
    invoke-static {v0, v6, v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1976
    :cond_265
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lio/realm/internal/OsList;->addRow(J)V

    .line 1977
    .end local v6    # "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v7    # "cacheItemIndexbasketItems":Ljava/lang/Long;
    goto :goto_249

    .line 1980
    .end local v4    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v10    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :cond_26d
    move-wide/from16 v10, v18

    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_26f
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v18

    .line 1981
    .local v18, "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    if-eqz v18, :cond_2ab

    .line 1982
    new-instance v4, Lio/realm/internal/OsList;

    invoke-virtual {v3, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->shippingCostConfigIndex:J

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1983
    .local v4, "shippingCostConfigOsList":Lio/realm/internal/OsList;
    invoke-virtual/range {v18 .. v18}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_287
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2ab

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 1984
    .local v6, "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1985
    .local v7, "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    if-nez v7, :cond_2a3

    .line 1986
    invoke-static {v0, v6, v2}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1988
    :cond_2a3
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lio/realm/internal/OsList;->addRow(J)V

    .line 1989
    .end local v6    # "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    .end local v7    # "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    goto :goto_287

    .line 1991
    .end local v4    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    :cond_2ab
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketCount()I

    move-result v4

    int-to-long v8, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v37, v8

    move-wide v8, v10

    move-wide/from16 v39, v10

    .end local v10    # "rowIndex":J
    .local v39, "rowIndex":J
    move-wide/from16 v10, v37

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1992
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v4

    int-to-long v10, v4

    move-wide v4, v13

    move-wide/from16 v8, v39

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1993
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$tupleIsSyncedWithServer()Z

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1994
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$signature()Ljava/lang/String;

    move-result-object v19

    .line 1995
    .local v19, "realmGet$signature":Ljava/lang/String;
    if-eqz v19, :cond_2f3

    .line 1996
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v39

    move-object/from16 v10, v19

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1998
    :cond_2f3
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmTime()Ljava/lang/String;

    move-result-object v37

    .line 1999
    .local v37, "realmGet$confirmTime":Ljava/lang/String;
    if-eqz v37, :cond_307

    .line 2000
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v39

    move-object/from16 v10, v37

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2003
    :cond_307
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 2004
    .local v12, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_335

    .line 2005
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2006
    .local v4, "cacheconfirmLocation":Ljava/lang/Long;
    if-nez v4, :cond_320

    .line 2007
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2009
    .end local v4    # "cacheconfirmLocation":Ljava/lang/Long;
    .local v38, "cacheconfirmLocation":Ljava/lang/Long;
    :cond_320
    move-object/from16 v38, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v41, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v39

    move-object/from16 v42, v12

    .end local v12    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v42, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v12, v41

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_337

    .line 2012
    .end local v38    # "cacheconfirmLocation":Ljava/lang/Long;
    .end local v42    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v12    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_335
    move-object/from16 v42, v12

    .end local v12    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v42    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    :goto_337
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v4

    .line 2013
    .local v4, "returnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    if-eqz v4, :cond_375

    .line 2014
    new-instance v5, Lio/realm/internal/OsList;

    move-wide/from16 v6, v39

    .end local v39    # "rowIndex":J
    .local v6, "rowIndex":J
    invoke-virtual {v3, v6, v7}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v8

    iget-wide v9, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->returnedProductsIndex:J

    invoke-direct {v5, v8, v9, v10}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 2015
    .local v5, "returnedProductsOsList":Lio/realm/internal/OsList;
    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_351
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_377

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/design/SerialItems;

    .line 2016
    .local v9, "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 2017
    .local v10, "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    if-nez v10, :cond_36d

    .line 2018
    invoke-static {v0, v9, v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2020
    :cond_36d
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2021
    .end local v9    # "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    .end local v10    # "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    goto :goto_351

    .line 2023
    .end local v5    # "returnedProductsOsList":Lio/realm/internal/OsList;
    .end local v6    # "rowIndex":J
    .restart local v39    # "rowIndex":J
    :cond_375
    move-wide/from16 v6, v39

    .end local v39    # "rowIndex":J
    .restart local v6    # "rowIndex":J
    :cond_377
    return-wide v6
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 45
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

    .line 2027
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 2028
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 2029
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    .line 2030
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    const/4 v3, 0x0

    .line 2031
    .local v3, "object":Lcom/digikala/dms/model/domain/Shipment;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39d

    .line 2032
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/Shipment;

    .line 2033
    .end local v3    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .local v15, "object":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2034
    goto/16 :goto_396

    .line 2036
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

    .line 2037
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

    .line 2038
    goto/16 :goto_396

    .line 2040
    :cond_73
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 2041
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$orderId()Ljava/lang/String;

    move-result-object v16

    .line 2043
    .local v16, "realmGet$orderId":Ljava/lang/String;
    if-eqz v16, :cond_97

    .line 2044
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

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

    .line 2046
    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_97
    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :goto_99
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$podCode()Ljava/lang/String;

    move-result-object v17

    .line 2047
    .local v17, "realmGet$podCode":Ljava/lang/String;
    if-eqz v17, :cond_ad

    .line 2048
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2050
    :cond_ad
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardTypeId()Ljava/lang/String;

    move-result-object v20

    .line 2051
    .local v20, "realmGet$cardTypeId":Ljava/lang/String;
    if-eqz v20, :cond_c1

    .line 2052
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2054
    :cond_c1
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardNumber()Ljava/lang/String;

    move-result-object v21

    .line 2055
    .local v21, "realmGet$cardNumber":Ljava/lang/String;
    if-eqz v21, :cond_d5

    .line 2056
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2058
    :cond_d5
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object v22

    .line 2059
    .local v22, "realmGet$comment":Ljava/lang/String;
    if-eqz v22, :cond_e9

    .line 2060
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v22

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2062
    :cond_e9
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$invoiceId()Ljava/lang/String;

    move-result-object v23

    .line 2063
    .local v23, "realmGet$invoiceId":Ljava/lang/String;
    if-eqz v23, :cond_fd

    .line 2064
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v23

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2066
    :cond_fd
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$isFmcg()Ljava/lang/Boolean;

    move-result-object v24

    .line 2067
    .local v24, "realmGet$isFmcg":Ljava/lang/Boolean;
    if-eqz v24, :cond_113

    .line 2068
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2070
    :cond_113
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$autoRefundable()Ljava/lang/Boolean;

    move-result-object v25

    .line 2071
    .local v25, "realmGet$autoRefundable":Ljava/lang/Boolean;
    if-eqz v25, :cond_129

    .line 2072
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2074
    :cond_129
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$priority()Ljava/lang/String;

    move-result-object v26

    .line 2075
    .local v26, "realmGet$priority":Ljava/lang/String;
    if-eqz v26, :cond_13d

    .line 2076
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v26

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2078
    :cond_13d
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$paymentStatus()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2079
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$payableAmount()J

    move-result-wide v9

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2080
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$remainingAmount()J

    move-result-wide v9

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2081
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerName()Ljava/lang/String;

    move-result-object v27

    .line 2082
    .local v27, "realmGet$customerName":Ljava/lang/String;
    if-eqz v27, :cond_17c

    .line 2083
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v27

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2085
    :cond_17c
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerPhoneNo()Ljava/lang/String;

    move-result-object v28

    .line 2086
    .local v28, "realmGet$customerPhoneNo":Ljava/lang/String;
    if-eqz v28, :cond_190

    .line 2087
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v28

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2089
    :cond_190
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientName()Ljava/lang/String;

    move-result-object v29

    .line 2090
    .local v29, "realmGet$recipientName":Ljava/lang/String;
    if-eqz v29, :cond_1a4

    .line 2091
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v29

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2093
    :cond_1a4
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientPhoneNo()Ljava/lang/String;

    move-result-object v30

    .line 2094
    .local v30, "realmGet$recipientPhoneNo":Ljava/lang/String;
    if-eqz v30, :cond_1b8

    .line 2095
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v30

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2097
    :cond_1b8
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryTime()Ljava/lang/String;

    move-result-object v31

    .line 2098
    .local v31, "realmGet$deliveryTime":Ljava/lang/String;
    if-eqz v31, :cond_1cc

    .line 2099
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v31

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2101
    :cond_1cc
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryAddress()Ljava/lang/String;

    move-result-object v32

    .line 2102
    .local v32, "realmGet$deliveryAddress":Ljava/lang/String;
    if-eqz v32, :cond_1e0

    .line 2103
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v32

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2106
    :cond_1e0
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v11

    .line 2107
    .local v11, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v11, :cond_208

    .line 2108
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2109
    .local v3, "cachedeliveryLatLong":Ljava/lang/Long;
    if-nez v3, :cond_1f9

    .line 2110
    invoke-static {v0, v11, v1}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2112
    .end local v3    # "cachedeliveryLatLong":Ljava/lang/Long;
    .local v33, "cachedeliveryLatLong":Ljava/lang/Long;
    :cond_1f9
    move-object/from16 v33, v3

    iget-wide v4, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide/from16 v6, v18

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 2114
    .end local v33    # "cachedeliveryLatLong":Ljava/lang/Long;
    :cond_208
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$PaymentMethod()Ljava/lang/String;

    move-result-object v33

    .line 2115
    .local v33, "realmGet$PaymentMethod":Ljava/lang/String;
    if-eqz v33, :cond_21c

    .line 2116
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v33

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2118
    :cond_21c
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$FinalPayableAmount()Ljava/lang/Long;

    move-result-object v34

    .line 2119
    .local v34, "realmGet$FinalPayableAmount":Ljava/lang/Number;
    if-eqz v34, :cond_238

    .line 2120
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/16 v35, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v36, v11

    .end local v11    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v36, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v11, v35

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_23a

    .line 2122
    .end local v36    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v11    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_238
    move-object/from16 v36, v11

    .end local v11    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v36    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :goto_23a
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$status()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2124
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v35

    .line 2125
    .local v35, "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    if-eqz v35, :cond_289

    .line 2126
    new-instance v3, Lio/realm/internal/OsList;

    move-wide/from16 v9, v18

    .end local v18    # "rowIndex":J
    .local v9, "rowIndex":J
    invoke-virtual {v2, v9, v10}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketItemsIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 2127
    .local v3, "basketItemsOsList":Lio/realm/internal/OsList;
    invoke-virtual/range {v35 .. v35}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_265
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BasketItems;

    .line 2128
    .local v5, "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 2129
    .local v6, "cacheItemIndexbasketItems":Ljava/lang/Long;
    if-nez v6, :cond_281

    .line 2130
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2132
    :cond_281
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2133
    .end local v5    # "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v6    # "cacheItemIndexbasketItems":Ljava/lang/Long;
    goto :goto_265

    .line 2136
    .end local v3    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v9    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    :cond_289
    move-wide/from16 v9, v18

    .end local v18    # "rowIndex":J
    .restart local v9    # "rowIndex":J
    :cond_28b
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v18

    .line 2137
    .local v18, "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    if-eqz v18, :cond_2c7

    .line 2138
    new-instance v3, Lio/realm/internal/OsList;

    invoke-virtual {v2, v9, v10}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->shippingCostConfigIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 2139
    .local v3, "shippingCostConfigOsList":Lio/realm/internal/OsList;
    invoke-virtual/range {v18 .. v18}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 2140
    .local v5, "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 2141
    .local v6, "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    if-nez v6, :cond_2bf

    .line 2142
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2144
    :cond_2bf
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2145
    .end local v5    # "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    .end local v6    # "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    goto :goto_2a3

    .line 2147
    .end local v3    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    :cond_2c7
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketCount()I

    move-result v3

    int-to-long v7, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v37, v7

    move-wide v7, v9

    move-wide/from16 v39, v9

    .end local v9    # "rowIndex":J
    .local v39, "rowIndex":J
    move-wide/from16 v9, v37

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2148
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    move-wide/from16 v7, v39

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2149
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$tupleIsSyncedWithServer()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2150
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$signature()Ljava/lang/String;

    move-result-object v11

    .line 2151
    .local v11, "realmGet$signature":Ljava/lang/String;
    if-eqz v11, :cond_30e

    .line 2152
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v39

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2154
    :cond_30e
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmTime()Ljava/lang/String;

    move-result-object v19

    .line 2155
    .local v19, "realmGet$confirmTime":Ljava/lang/String;
    if-eqz v19, :cond_322

    .line 2156
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v39

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 2159
    :cond_322
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v10

    .line 2160
    .local v10, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v10, :cond_350

    .line 2161
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2162
    .local v3, "cacheconfirmLocation":Ljava/lang/Long;
    if-nez v3, :cond_33b

    .line 2163
    invoke-static {v0, v10, v1}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2165
    .end local v3    # "cacheconfirmLocation":Ljava/lang/Long;
    .local v37, "cacheconfirmLocation":Ljava/lang/Long;
    :cond_33b
    move-object/from16 v37, v3

    iget-wide v4, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v38, 0x0

    move-object v3, v2

    move-wide/from16 v6, v39

    move-object/from16 v41, v10

    .end local v10    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v41, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v10, v38

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    goto :goto_352

    .line 2168
    .end local v37    # "cacheconfirmLocation":Ljava/lang/Long;
    .end local v41    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v10    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_350
    move-object/from16 v41, v10

    .end local v10    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v41    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    :goto_352
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v3

    .line 2169
    .local v3, "returnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    if-eqz v3, :cond_395

    .line 2170
    new-instance v4, Lio/realm/internal/OsList;

    move-wide/from16 v5, v39

    .end local v39    # "rowIndex":J
    .local v5, "rowIndex":J
    invoke-virtual {v2, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    iget-wide v8, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->returnedProductsIndex:J

    invoke-direct {v4, v7, v8, v9}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 2171
    .local v4, "returnedProductsOsList":Lio/realm/internal/OsList;
    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_36c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_395

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/design/SerialItems;

    .line 2172
    .local v8, "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 2173
    .local v9, "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    if-nez v9, :cond_388

    .line 2174
    invoke-static {v0, v8, v1}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2176
    :cond_388
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2177
    .end local v8    # "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    .end local v9    # "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    nop

    .line 2171
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto :goto_36c

    .line 2179
    .end local v3    # "returnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    .end local v4    # "returnedProductsOsList":Lio/realm/internal/OsList;
    .end local v5    # "rowIndex":J
    .end local v11    # "realmGet$signature":Ljava/lang/String;
    .end local v16    # "realmGet$orderId":Ljava/lang/String;
    .end local v17    # "realmGet$podCode":Ljava/lang/String;
    .end local v18    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .end local v19    # "realmGet$confirmTime":Ljava/lang/String;
    .end local v20    # "realmGet$cardTypeId":Ljava/lang/String;
    .end local v21    # "realmGet$cardNumber":Ljava/lang/String;
    .end local v22    # "realmGet$comment":Ljava/lang/String;
    .end local v23    # "realmGet$invoiceId":Ljava/lang/String;
    .end local v24    # "realmGet$isFmcg":Ljava/lang/Boolean;
    .end local v25    # "realmGet$autoRefundable":Ljava/lang/Boolean;
    .end local v26    # "realmGet$priority":Ljava/lang/String;
    .end local v27    # "realmGet$customerName":Ljava/lang/String;
    .end local v28    # "realmGet$customerPhoneNo":Ljava/lang/String;
    .end local v29    # "realmGet$recipientName":Ljava/lang/String;
    .end local v30    # "realmGet$recipientPhoneNo":Ljava/lang/String;
    .end local v31    # "realmGet$deliveryTime":Ljava/lang/String;
    .end local v32    # "realmGet$deliveryAddress":Ljava/lang/String;
    .end local v33    # "realmGet$PaymentMethod":Ljava/lang/String;
    .end local v34    # "realmGet$FinalPayableAmount":Ljava/lang/Number;
    .end local v35    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v36    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .end local v41    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_395
    nop

    .line 2030
    :goto_396
    move-object v3, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto/16 :goto_1c

    .line 2180
    .end local v15    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .local v3, "object":Lcom/digikala/dms/model/domain/Shipment;
    :cond_39d
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J
    .registers 55
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/Shipment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/Shipment;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 2183
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

    .line 2184
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 2186
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 2187
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 2188
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    .line 2189
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 2190
    .local v11, "rowIndex":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$orderId()Ljava/lang/String;

    move-result-object v16

    .line 2192
    .local v16, "realmGet$orderId":Ljava/lang/String;
    if-eqz v16, :cond_7b

    .line 2193
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

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

    .line 2195
    .end local v18    # "rowIndex":J
    .restart local v11    # "rowIndex":J
    :cond_7b
    move-wide/from16 v18, v11

    .end local v11    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2197
    :goto_86
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$podCode()Ljava/lang/String;

    move-result-object v17

    .line 2198
    .local v17, "realmGet$podCode":Ljava/lang/String;
    if-eqz v17, :cond_9b

    .line 2199
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a4

    .line 2201
    :cond_9b
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2203
    :goto_a4
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardTypeId()Ljava/lang/String;

    move-result-object v20

    .line 2204
    .local v20, "realmGet$cardTypeId":Ljava/lang/String;
    if-eqz v20, :cond_b9

    .line 2205
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v20

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c2

    .line 2207
    :cond_b9
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2209
    :goto_c2
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardNumber()Ljava/lang/String;

    move-result-object v21

    .line 2210
    .local v21, "realmGet$cardNumber":Ljava/lang/String;
    if-eqz v21, :cond_d7

    .line 2211
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v21

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e0

    .line 2213
    :cond_d7
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2215
    :goto_e0
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object v22

    .line 2216
    .local v22, "realmGet$comment":Ljava/lang/String;
    if-eqz v22, :cond_f5

    .line 2217
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v22

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_fe

    .line 2219
    :cond_f5
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2221
    :goto_fe
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$invoiceId()Ljava/lang/String;

    move-result-object v23

    .line 2222
    .local v23, "realmGet$invoiceId":Ljava/lang/String;
    if-eqz v23, :cond_113

    .line 2223
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v23

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_11c

    .line 2225
    :cond_113
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2227
    :goto_11c
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$isFmcg()Ljava/lang/Boolean;

    move-result-object v24

    .line 2228
    .local v24, "realmGet$isFmcg":Ljava/lang/Boolean;
    if-eqz v24, :cond_133

    .line 2229
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_13c

    .line 2231
    :cond_133
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2233
    :goto_13c
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$autoRefundable()Ljava/lang/Boolean;

    move-result-object v25

    .line 2234
    .local v25, "realmGet$autoRefundable":Ljava/lang/Boolean;
    if-eqz v25, :cond_153

    .line 2235
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_15c

    .line 2237
    :cond_153
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2239
    :goto_15c
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$priority()Ljava/lang/String;

    move-result-object v26

    .line 2240
    .local v26, "realmGet$priority":Ljava/lang/String;
    if-eqz v26, :cond_171

    .line 2241
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v26

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_17a

    .line 2243
    :cond_171
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2245
    :goto_17a
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$paymentStatus()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2246
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$payableAmount()J

    move-result-wide v10

    move-wide v4, v13

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2247
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$remainingAmount()J

    move-result-wide v10

    move-wide v4, v13

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2248
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerName()Ljava/lang/String;

    move-result-object v27

    .line 2249
    .local v27, "realmGet$customerName":Ljava/lang/String;
    if-eqz v27, :cond_1ba

    .line 2250
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v27

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1c3

    .line 2252
    :cond_1ba
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2254
    :goto_1c3
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerPhoneNo()Ljava/lang/String;

    move-result-object v28

    .line 2255
    .local v28, "realmGet$customerPhoneNo":Ljava/lang/String;
    if-eqz v28, :cond_1d8

    .line 2256
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v28

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1e1

    .line 2258
    :cond_1d8
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2260
    :goto_1e1
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientName()Ljava/lang/String;

    move-result-object v29

    .line 2261
    .local v29, "realmGet$recipientName":Ljava/lang/String;
    if-eqz v29, :cond_1f6

    .line 2262
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v29

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1ff

    .line 2264
    :cond_1f6
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2266
    :goto_1ff
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientPhoneNo()Ljava/lang/String;

    move-result-object v30

    .line 2267
    .local v30, "realmGet$recipientPhoneNo":Ljava/lang/String;
    if-eqz v30, :cond_214

    .line 2268
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v30

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_21d

    .line 2270
    :cond_214
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2272
    :goto_21d
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryTime()Ljava/lang/String;

    move-result-object v31

    .line 2273
    .local v31, "realmGet$deliveryTime":Ljava/lang/String;
    if-eqz v31, :cond_232

    .line 2274
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v31

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_23b

    .line 2276
    :cond_232
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2278
    :goto_23b
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryAddress()Ljava/lang/String;

    move-result-object v32

    .line 2279
    .local v32, "realmGet$deliveryAddress":Ljava/lang/String;
    if-eqz v32, :cond_250

    .line 2280
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v32

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_259

    .line 2282
    :cond_250
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2285
    :goto_259
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 2286
    .local v12, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_287

    .line 2287
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2288
    .local v4, "cachedeliveryLatLong":Ljava/lang/Long;
    if-nez v4, :cond_272

    .line 2289
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2291
    .end local v4    # "cachedeliveryLatLong":Ljava/lang/Long;
    .local v33, "cachedeliveryLatLong":Ljava/lang/Long;
    :cond_272
    move-object/from16 v33, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v34, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v35, v12

    .end local v12    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v35, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v12, v34

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 2292
    .end local v33    # "cachedeliveryLatLong":Ljava/lang/Long;
    goto :goto_291

    .line 2293
    .end local v35    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v12    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_287
    move-object/from16 v35, v12

    .end local v12    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v35    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 2295
    :goto_291
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$PaymentMethod()Ljava/lang/String;

    move-result-object v33

    .line 2296
    .local v33, "realmGet$PaymentMethod":Ljava/lang/String;
    if-eqz v33, :cond_2a6

    .line 2297
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    move-object/from16 v10, v33

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2af

    .line 2299
    :cond_2a6
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2301
    :goto_2af
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$FinalPayableAmount()Ljava/lang/Long;

    move-result-object v34

    .line 2302
    .local v34, "realmGet$FinalPayableAmount":Ljava/lang/Number;
    if-eqz v34, :cond_2c6

    .line 2303
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_2cf

    .line 2305
    :cond_2c6
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2307
    :goto_2cf
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$status()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2309
    new-instance v4, Lio/realm/internal/OsList;

    move-wide/from16 v10, v18

    .end local v18    # "rowIndex":J
    .local v10, "rowIndex":J
    invoke-virtual {v3, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketItemsIndex:J

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    move-object v12, v4

    .line 2310
    .local v12, "basketItemsOsList":Lio/realm/internal/OsList;
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v8

    .line 2311
    .local v8, "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    const/16 v18, 0x0

    if-eqz v8, :cond_33f

    invoke-virtual {v8}, Lio/realm/RealmList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v12}, Lio/realm/internal/OsList;->size()J

    move-result-wide v6

    cmp-long v9, v4, v6

    if-nez v9, :cond_33f

    .line 2313
    invoke-virtual {v8}, Lio/realm/RealmList;->size()I

    move-result v4

    .line 2314
    .local v4, "objects":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30b
    if-ge v5, v4, :cond_33a

    .line 2315
    invoke-virtual {v8, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/BasketItems;

    .line 2316
    .local v6, "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 2317
    .local v7, "cacheItemIndexbasketItems":Ljava/lang/Long;
    if-nez v7, :cond_323

    .line 2318
    invoke-static {v0, v6, v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2320
    :cond_323
    move-wide/from16 v38, v13

    .end local v13    # "tableNativePtr":J
    .local v38, "tableNativePtr":J
    int-to-long v13, v5

    move-object/from16 v40, v3

    move/from16 v41, v4

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v4    # "objects":I
    .local v40, "table":Lio/realm/internal/Table;
    .local v41, "objects":I
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v12, v13, v14, v3, v4}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 2314
    .end local v6    # "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v7    # "cacheItemIndexbasketItems":Ljava/lang/Long;
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v13, v38

    move-object/from16 v3, v40

    move/from16 v4, v41

    goto :goto_30b

    .line 2322
    .end local v5    # "i":I
    .end local v38    # "tableNativePtr":J
    .end local v40    # "table":Lio/realm/internal/Table;
    .end local v41    # "objects":I
    .restart local v3    # "table":Lio/realm/internal/Table;
    .restart local v13    # "tableNativePtr":J
    :cond_33a
    move-object/from16 v40, v3

    move-wide/from16 v38, v13

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v13    # "tableNativePtr":J
    .restart local v38    # "tableNativePtr":J
    .restart local v40    # "table":Lio/realm/internal/Table;
    goto :goto_370

    .line 2323
    .end local v38    # "tableNativePtr":J
    .end local v40    # "table":Lio/realm/internal/Table;
    .restart local v3    # "table":Lio/realm/internal/Table;
    .restart local v13    # "tableNativePtr":J
    :cond_33f
    move-object/from16 v40, v3

    move-wide/from16 v38, v13

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v13    # "tableNativePtr":J
    .restart local v38    # "tableNativePtr":J
    .restart local v40    # "table":Lio/realm/internal/Table;
    invoke-virtual {v12}, Lio/realm/internal/OsList;->removeAll()V

    .line 2324
    if-eqz v8, :cond_370

    .line 2325
    invoke-virtual {v8}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_370

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/BasketItems;

    .line 2326
    .local v4, "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 2327
    .local v5, "cacheItemIndexbasketItems":Ljava/lang/Long;
    if-nez v5, :cond_368

    .line 2328
    invoke-static {v0, v4, v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2330
    :cond_368
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2331
    .end local v4    # "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v5    # "cacheItemIndexbasketItems":Ljava/lang/Long;
    goto :goto_34c

    .line 2336
    :cond_370
    :goto_370
    new-instance v3, Lio/realm/internal/OsList;

    move-object/from16 v13, v40

    .end local v40    # "table":Lio/realm/internal/Table;
    .local v13, "table":Lio/realm/internal/Table;
    invoke-virtual {v13, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->shippingCostConfigIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 2337
    .local v3, "shippingCostConfigOsList":Lio/realm/internal/OsList;
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v14

    .line 2338
    .local v14, "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    if-eqz v14, :cond_3ce

    invoke-virtual {v14}, Lio/realm/RealmList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Lio/realm/internal/OsList;->size()J

    move-result-wide v6

    cmp-long v9, v4, v6

    if-nez v9, :cond_3ce

    .line 2340
    invoke-virtual {v14}, Lio/realm/RealmList;->size()I

    move-result v4

    .line 2341
    .local v4, "objects":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_398
    if-ge v5, v4, :cond_3c7

    .line 2342
    invoke-virtual {v14, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 2343
    .local v6, "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 2344
    .local v7, "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    if-nez v7, :cond_3b0

    .line 2345
    invoke-static {v0, v6, v2}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2347
    :cond_3b0
    move-object/from16 v42, v8

    .end local v8    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .local v42, "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    int-to-long v8, v5

    move-object/from16 v43, v12

    move-object/from16 v44, v13

    .end local v12    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v13    # "table":Lio/realm/internal/Table;
    .local v43, "basketItemsOsList":Lio/realm/internal/OsList;
    .local v44, "table":Lio/realm/internal/Table;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v3, v8, v9, v12, v13}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 2341
    .end local v6    # "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    .end local v7    # "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v42

    move-object/from16 v12, v43

    move-object/from16 v13, v44

    goto :goto_398

    .line 2349
    .end local v4    # "objects":I
    .end local v5    # "i":I
    .end local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v43    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v44    # "table":Lio/realm/internal/Table;
    .restart local v8    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v12    # "basketItemsOsList":Lio/realm/internal/OsList;
    .restart local v13    # "table":Lio/realm/internal/Table;
    :cond_3c7
    move-object/from16 v42, v8

    move-object/from16 v43, v12

    move-object/from16 v44, v13

    .end local v8    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v12    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v13    # "table":Lio/realm/internal/Table;
    .restart local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v43    # "basketItemsOsList":Lio/realm/internal/OsList;
    .restart local v44    # "table":Lio/realm/internal/Table;
    goto :goto_401

    .line 2350
    .end local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v43    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v44    # "table":Lio/realm/internal/Table;
    .restart local v8    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v12    # "basketItemsOsList":Lio/realm/internal/OsList;
    .restart local v13    # "table":Lio/realm/internal/Table;
    :cond_3ce
    move-object/from16 v42, v8

    move-object/from16 v43, v12

    move-object/from16 v44, v13

    .end local v8    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v12    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v13    # "table":Lio/realm/internal/Table;
    .restart local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v43    # "basketItemsOsList":Lio/realm/internal/OsList;
    .restart local v44    # "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/OsList;->removeAll()V

    .line 2351
    if-eqz v14, :cond_401

    .line 2352
    invoke-virtual {v14}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3dd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_401

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 2353
    .local v5, "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 2354
    .local v6, "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    if-nez v6, :cond_3f9

    .line 2355
    invoke-static {v0, v5, v2}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2357
    :cond_3f9
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2358
    .end local v5    # "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    .end local v6    # "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    goto :goto_3dd

    .line 2362
    :cond_401
    :goto_401
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketCount()I

    move-result v4

    int-to-long v12, v4

    const/16 v19, 0x0

    move-wide/from16 v4, v38

    move-object/from16 v36, v42

    .end local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .local v36, "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    move-wide v8, v10

    move-wide/from16 v45, v10

    .end local v10    # "rowIndex":J
    .local v45, "rowIndex":J
    move-wide v10, v12

    move-object/from16 v13, v43

    .end local v43    # "basketItemsOsList":Lio/realm/internal/OsList;
    .local v13, "basketItemsOsList":Lio/realm/internal/OsList;
    move/from16 v12, v19

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2363
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v4

    int-to-long v10, v4

    const/4 v12, 0x0

    move-wide/from16 v4, v38

    move-wide/from16 v8, v45

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2364
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$tupleIsSyncedWithServer()Z

    move-result v10

    const/4 v11, 0x0

    move-wide/from16 v4, v38

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2365
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$signature()Ljava/lang/String;

    move-result-object v19

    .line 2366
    .local v19, "realmGet$signature":Ljava/lang/String;
    if-eqz v19, :cond_453

    .line 2367
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    const/4 v11, 0x0

    move-wide/from16 v4, v38

    move-wide/from16 v8, v45

    move-object/from16 v10, v19

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_45d

    .line 2369
    :cond_453
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    const/4 v10, 0x0

    move-wide/from16 v4, v38

    move-wide/from16 v8, v45

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2371
    :goto_45d
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmTime()Ljava/lang/String;

    move-result-object v37

    .line 2372
    .local v37, "realmGet$confirmTime":Ljava/lang/String;
    if-eqz v37, :cond_473

    .line 2373
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    const/4 v11, 0x0

    move-wide/from16 v4, v38

    move-wide/from16 v8, v45

    move-object/from16 v10, v37

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_47d

    .line 2375
    :cond_473
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    const/4 v10, 0x0

    move-wide/from16 v4, v38

    move-wide/from16 v8, v45

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2378
    :goto_47d
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 2379
    .local v12, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_4ac

    .line 2380
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2381
    .local v4, "cacheconfirmLocation":Ljava/lang/Long;
    if-nez v4, :cond_496

    .line 2382
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2384
    .end local v4    # "cacheconfirmLocation":Ljava/lang/Long;
    .local v40, "cacheconfirmLocation":Ljava/lang/Long;
    :cond_496
    move-object/from16 v40, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v41, 0x0

    move-wide/from16 v4, v38

    move-wide/from16 v8, v45

    move-object/from16 v42, v12

    .end local v12    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v42, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v12, v41

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 2385
    .end local v40    # "cacheconfirmLocation":Ljava/lang/Long;
    goto :goto_4b7

    .line 2386
    .end local v42    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v12    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_4ac
    move-object/from16 v42, v12

    .end local v12    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v42    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    move-wide/from16 v4, v38

    move-wide/from16 v8, v45

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 2389
    :goto_4b7
    new-instance v4, Lio/realm/internal/OsList;

    move-object/from16 v5, v44

    move-wide/from16 v6, v45

    .end local v44    # "table":Lio/realm/internal/Table;
    .end local v45    # "rowIndex":J
    .local v5, "table":Lio/realm/internal/Table;
    .local v6, "rowIndex":J
    invoke-virtual {v5, v6, v7}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v8

    iget-wide v9, v15, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->returnedProductsIndex:J

    invoke-direct {v4, v8, v9, v10}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 2390
    .local v4, "returnedProductsOsList":Lio/realm/internal/OsList;
    move-object v8, v1

    check-cast v8, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v8}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v8

    .line 2391
    .local v8, "returnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    if-eqz v8, :cond_51f

    invoke-virtual {v8}, Lio/realm/RealmList;->size()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v4}, Lio/realm/internal/OsList;->size()J

    move-result-wide v11

    cmp-long v40, v9, v11

    if-nez v40, :cond_51f

    .line 2393
    invoke-virtual {v8}, Lio/realm/RealmList;->size()I

    move-result v9

    .line 2394
    .local v9, "objects":I
    nop

    .local v18, "i":I
    :goto_4e1
    move/from16 v10, v18

    .end local v18    # "i":I
    .local v10, "i":I
    if-ge v10, v9, :cond_516

    .line 2395
    invoke-virtual {v8, v10}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/digikala/dms/model/design/SerialItems;

    .line 2396
    .local v11, "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 2397
    .local v12, "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    if-nez v12, :cond_4fb

    .line 2398
    invoke-static {v0, v11, v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 2400
    :cond_4fb
    move-object/from16 v48, v13

    move-object/from16 v47, v14

    .end local v13    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v14    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .local v47, "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .local v48, "basketItemsOsList":Lio/realm/internal/OsList;
    int-to-long v13, v10

    move-object/from16 v49, v5

    move-wide/from16 v50, v6

    .end local v5    # "table":Lio/realm/internal/Table;
    .end local v6    # "rowIndex":J
    .local v49, "table":Lio/realm/internal/Table;
    .local v50, "rowIndex":J
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v13, v14, v5, v6}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 2394
    .end local v11    # "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    .end local v12    # "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    add-int/lit8 v18, v10, 0x1

    move-object/from16 v14, v47

    move-object/from16 v13, v48

    move-object/from16 v5, v49

    move-wide/from16 v6, v50

    goto :goto_4e1

    .line 2402
    .end local v9    # "objects":I
    .end local v10    # "i":I
    .end local v47    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .end local v48    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v49    # "table":Lio/realm/internal/Table;
    .end local v50    # "rowIndex":J
    .restart local v5    # "table":Lio/realm/internal/Table;
    .restart local v6    # "rowIndex":J
    .restart local v13    # "basketItemsOsList":Lio/realm/internal/OsList;
    .restart local v14    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    :cond_516
    move-object/from16 v49, v5

    move-wide/from16 v50, v6

    move-object/from16 v48, v13

    move-object/from16 v47, v14

    .end local v5    # "table":Lio/realm/internal/Table;
    .end local v6    # "rowIndex":J
    .end local v13    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v14    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .restart local v47    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .restart local v48    # "basketItemsOsList":Lio/realm/internal/OsList;
    .restart local v49    # "table":Lio/realm/internal/Table;
    .restart local v50    # "rowIndex":J
    goto :goto_554

    .line 2403
    .end local v47    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .end local v48    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v49    # "table":Lio/realm/internal/Table;
    .end local v50    # "rowIndex":J
    .restart local v5    # "table":Lio/realm/internal/Table;
    .restart local v6    # "rowIndex":J
    .restart local v13    # "basketItemsOsList":Lio/realm/internal/OsList;
    .restart local v14    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    :cond_51f
    move-object/from16 v49, v5

    move-wide/from16 v50, v6

    move-object/from16 v48, v13

    move-object/from16 v47, v14

    .end local v5    # "table":Lio/realm/internal/Table;
    .end local v6    # "rowIndex":J
    .end local v13    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v14    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .restart local v47    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .restart local v48    # "basketItemsOsList":Lio/realm/internal/OsList;
    .restart local v49    # "table":Lio/realm/internal/Table;
    .restart local v50    # "rowIndex":J
    invoke-virtual {v4}, Lio/realm/internal/OsList;->removeAll()V

    .line 2404
    if-eqz v8, :cond_554

    .line 2405
    invoke-virtual {v8}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_530
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_554

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/design/SerialItems;

    .line 2406
    .local v6, "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 2407
    .local v7, "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    if-nez v7, :cond_54c

    .line 2408
    invoke-static {v0, v6, v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2410
    :cond_54c
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2411
    .end local v6    # "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    .end local v7    # "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    goto :goto_530

    .line 2415
    :cond_554
    :goto_554
    return-wide v50
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 55
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

    .line 2419
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 2420
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 2421
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    .line 2422
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    const/4 v3, 0x0

    .line 2423
    .local v3, "object":Lcom/digikala/dms/model/domain/Shipment;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_588

    .line 2424
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/Shipment;

    .line 2425
    .end local v3    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .local v15, "object":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2426
    nop

    .line 2422
    :goto_30
    move-object/from16 v47, v2

    move-wide/from16 v38, v12

    move-object/from16 v50, v14

    move-object/from16 v41, v15

    goto/16 :goto_57e

    .line 2428
    :cond_3a
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_7b

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_7b

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

    if-eqz v3, :cond_7b

    .line 2429
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

    .line 2430
    goto :goto_30

    .line 2432
    :cond_7b
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 2433
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$orderId()Ljava/lang/String;

    move-result-object v16

    .line 2435
    .local v16, "realmGet$orderId":Ljava/lang/String;
    if-eqz v16, :cond_9f

    .line 2436
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    const/16 v17, 0x0

    move-wide v3, v12

    move-wide v7, v10

    move-object/from16 v9, v16

    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .local v18, "rowIndex":J
    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_aa

    .line 2438
    .end local v18    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_9f
    move-wide/from16 v18, v10

    .end local v10    # "rowIndex":J
    .restart local v18    # "rowIndex":J
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2440
    :goto_aa
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$podCode()Ljava/lang/String;

    move-result-object v17

    .line 2441
    .local v17, "realmGet$podCode":Ljava/lang/String;
    if-eqz v17, :cond_bf

    .line 2442
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c8

    .line 2444
    :cond_bf
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2446
    :goto_c8
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardTypeId()Ljava/lang/String;

    move-result-object v20

    .line 2447
    .local v20, "realmGet$cardTypeId":Ljava/lang/String;
    if-eqz v20, :cond_dd

    .line 2448
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e6

    .line 2450
    :cond_dd
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2452
    :goto_e6
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$cardNumber()Ljava/lang/String;

    move-result-object v21

    .line 2453
    .local v21, "realmGet$cardNumber":Ljava/lang/String;
    if-eqz v21, :cond_fb

    .line 2454
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_104

    .line 2456
    :cond_fb
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2458
    :goto_104
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object v22

    .line 2459
    .local v22, "realmGet$comment":Ljava/lang/String;
    if-eqz v22, :cond_119

    .line 2460
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v22

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_122

    .line 2462
    :cond_119
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2464
    :goto_122
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$invoiceId()Ljava/lang/String;

    move-result-object v23

    .line 2465
    .local v23, "realmGet$invoiceId":Ljava/lang/String;
    if-eqz v23, :cond_137

    .line 2466
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v23

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_140

    .line 2468
    :cond_137
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2470
    :goto_140
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$isFmcg()Ljava/lang/Boolean;

    move-result-object v24

    .line 2471
    .local v24, "realmGet$isFmcg":Ljava/lang/Boolean;
    if-eqz v24, :cond_157

    .line 2472
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_160

    .line 2474
    :cond_157
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2476
    :goto_160
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$autoRefundable()Ljava/lang/Boolean;

    move-result-object v25

    .line 2477
    .local v25, "realmGet$autoRefundable":Ljava/lang/Boolean;
    if-eqz v25, :cond_177

    .line 2478
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_180

    .line 2480
    :cond_177
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2482
    :goto_180
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$priority()Ljava/lang/String;

    move-result-object v26

    .line 2483
    .local v26, "realmGet$priority":Ljava/lang/String;
    if-eqz v26, :cond_195

    .line 2484
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v26

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_19e

    .line 2486
    :cond_195
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2488
    :goto_19e
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$paymentStatus()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2489
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$payableAmount()J

    move-result-wide v9

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2490
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$remainingAmount()J

    move-result-wide v9

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2491
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerName()Ljava/lang/String;

    move-result-object v27

    .line 2492
    .local v27, "realmGet$customerName":Ljava/lang/String;
    if-eqz v27, :cond_1de

    .line 2493
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v27

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1e7

    .line 2495
    :cond_1de
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2497
    :goto_1e7
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$customerPhoneNo()Ljava/lang/String;

    move-result-object v28

    .line 2498
    .local v28, "realmGet$customerPhoneNo":Ljava/lang/String;
    if-eqz v28, :cond_1fc

    .line 2499
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v28

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_205

    .line 2501
    :cond_1fc
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2503
    :goto_205
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientName()Ljava/lang/String;

    move-result-object v29

    .line 2504
    .local v29, "realmGet$recipientName":Ljava/lang/String;
    if-eqz v29, :cond_21a

    .line 2505
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v29

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_223

    .line 2507
    :cond_21a
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2509
    :goto_223
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$recipientPhoneNo()Ljava/lang/String;

    move-result-object v30

    .line 2510
    .local v30, "realmGet$recipientPhoneNo":Ljava/lang/String;
    if-eqz v30, :cond_238

    .line 2511
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v30

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_241

    .line 2513
    :cond_238
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2515
    :goto_241
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryTime()Ljava/lang/String;

    move-result-object v31

    .line 2516
    .local v31, "realmGet$deliveryTime":Ljava/lang/String;
    if-eqz v31, :cond_256

    .line 2517
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v31

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_25f

    .line 2519
    :cond_256
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2521
    :goto_25f
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryAddress()Ljava/lang/String;

    move-result-object v32

    .line 2522
    .local v32, "realmGet$deliveryAddress":Ljava/lang/String;
    if-eqz v32, :cond_274

    .line 2523
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v32

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_27d

    .line 2525
    :cond_274
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2528
    :goto_27d
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v11

    .line 2529
    .local v11, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v11, :cond_2ab

    .line 2530
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2531
    .local v3, "cachedeliveryLatLong":Ljava/lang/Long;
    if-nez v3, :cond_296

    .line 2532
    invoke-static {v0, v11, v1}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2534
    .end local v3    # "cachedeliveryLatLong":Ljava/lang/Long;
    .local v33, "cachedeliveryLatLong":Ljava/lang/Long;
    :cond_296
    move-object/from16 v33, v3

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/16 v34, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v35, v11

    .end local v11    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v35, "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v11, v34

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 2535
    .end local v33    # "cachedeliveryLatLong":Ljava/lang/Long;
    goto :goto_2b5

    .line 2536
    .end local v35    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v11    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_2ab
    move-object/from16 v35, v11

    .end local v11    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v35    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 2538
    :goto_2b5
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$PaymentMethod()Ljava/lang/String;

    move-result-object v33

    .line 2539
    .local v33, "realmGet$PaymentMethod":Ljava/lang/String;
    if-eqz v33, :cond_2ca

    .line 2540
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v33

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2d3

    .line 2542
    :cond_2ca
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2544
    :goto_2d3
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$FinalPayableAmount()Ljava/lang/Long;

    move-result-object v34

    .line 2545
    .local v34, "realmGet$FinalPayableAmount":Ljava/lang/Number;
    if-eqz v34, :cond_2ea

    .line 2546
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_2f3

    .line 2548
    :cond_2ea
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2550
    :goto_2f3
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$status()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2552
    new-instance v3, Lio/realm/internal/OsList;

    move-wide/from16 v9, v18

    .end local v18    # "rowIndex":J
    .local v9, "rowIndex":J
    invoke-virtual {v2, v9, v10}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketItemsIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    move-object v11, v3

    .line 2553
    .local v11, "basketItemsOsList":Lio/realm/internal/OsList;
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v7

    .line 2554
    .local v7, "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    const/16 v18, 0x0

    if-eqz v7, :cond_365

    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v11}, Lio/realm/internal/OsList;->size()J

    move-result-wide v5

    cmp-long v8, v3, v5

    if-nez v8, :cond_365

    .line 2556
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v3

    .line 2557
    .local v3, "objectCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32f
    if-ge v4, v3, :cond_35e

    .line 2558
    invoke-virtual {v7, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BasketItems;

    .line 2559
    .local v5, "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 2560
    .local v6, "cacheItemIndexbasketItems":Ljava/lang/Long;
    if-nez v6, :cond_347

    .line 2561
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2563
    :cond_347
    move-wide/from16 v38, v12

    .end local v12    # "tableNativePtr":J
    .local v38, "tableNativePtr":J
    int-to-long v12, v4

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v15    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .local v40, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .local v41, "object":Lcom/digikala/dms/model/domain/Shipment;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 2557
    .end local v5    # "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v6    # "cacheItemIndexbasketItems":Ljava/lang/Long;
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v12, v38

    move-object/from16 v14, v40

    move-object/from16 v15, v41

    goto :goto_32f

    .line 2565
    .end local v3    # "objectCount":I
    .end local v4    # "i":I
    .end local v38    # "tableNativePtr":J
    .end local v40    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v41    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .restart local v12    # "tableNativePtr":J
    .restart local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v15    # "object":Lcom/digikala/dms/model/domain/Shipment;
    :cond_35e
    move-wide/from16 v38, v12

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    .end local v12    # "tableNativePtr":J
    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v15    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .restart local v38    # "tableNativePtr":J
    .restart local v40    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v41    # "object":Lcom/digikala/dms/model/domain/Shipment;
    goto :goto_398

    .line 2566
    .end local v38    # "tableNativePtr":J
    .end local v40    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v41    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .restart local v12    # "tableNativePtr":J
    .restart local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v15    # "object":Lcom/digikala/dms/model/domain/Shipment;
    :cond_365
    move-wide/from16 v38, v12

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    .end local v12    # "tableNativePtr":J
    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v15    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .restart local v38    # "tableNativePtr":J
    .restart local v40    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v41    # "object":Lcom/digikala/dms/model/domain/Shipment;
    invoke-virtual {v11}, Lio/realm/internal/OsList;->removeAll()V

    .line 2567
    if-eqz v7, :cond_398

    .line 2568
    invoke-virtual {v7}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_374
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_398

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/BasketItems;

    .line 2569
    .local v4, "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 2570
    .local v5, "cacheItemIndexbasketItems":Ljava/lang/Long;
    if-nez v5, :cond_390

    .line 2571
    invoke-static {v0, v4, v1}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2573
    :cond_390
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2574
    .end local v4    # "basketItemsItem":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v5    # "cacheItemIndexbasketItems":Ljava/lang/Long;
    goto :goto_374

    .line 2579
    :cond_398
    :goto_398
    new-instance v3, Lio/realm/internal/OsList;

    invoke-virtual {v2, v9, v10}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    move-object/from16 v12, v40

    .end local v40    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .local v12, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->shippingCostConfigIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    move-object v13, v3

    .line 2580
    .local v13, "shippingCostConfigOsList":Lio/realm/internal/OsList;
    move-object/from16 v3, v41

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v14

    .line 2581
    .local v14, "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    if-eqz v14, :cond_3f6

    invoke-virtual {v14}, Lio/realm/RealmList;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v13}, Lio/realm/internal/OsList;->size()J

    move-result-wide v5

    cmp-long v8, v3, v5

    if-nez v8, :cond_3f6

    .line 2583
    invoke-virtual {v14}, Lio/realm/RealmList;->size()I

    move-result v3

    .line 2584
    .restart local v3    # "objectCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c2
    if-ge v4, v3, :cond_3f1

    .line 2585
    invoke-virtual {v14, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 2586
    .local v5, "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 2587
    .local v6, "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    if-nez v6, :cond_3da

    .line 2588
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2590
    :cond_3da
    move-object/from16 v42, v7

    .end local v7    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .local v42, "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    int-to-long v7, v4

    move-object/from16 v43, v2

    move/from16 v44, v3

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v3    # "objectCount":I
    .local v43, "table":Lio/realm/internal/Table;
    .local v44, "objectCount":I
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v13, v7, v8, v2, v3}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 2584
    .end local v5    # "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    .end local v6    # "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, v42

    move-object/from16 v2, v43

    move/from16 v3, v44

    goto :goto_3c2

    .line 2592
    .end local v4    # "i":I
    .end local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v43    # "table":Lio/realm/internal/Table;
    .end local v44    # "objectCount":I
    .restart local v2    # "table":Lio/realm/internal/Table;
    .restart local v7    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    :cond_3f1
    move-object/from16 v43, v2

    move-object/from16 v42, v7

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v7    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v43    # "table":Lio/realm/internal/Table;
    goto :goto_427

    .line 2593
    .end local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v43    # "table":Lio/realm/internal/Table;
    .restart local v2    # "table":Lio/realm/internal/Table;
    .restart local v7    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    :cond_3f6
    move-object/from16 v43, v2

    move-object/from16 v42, v7

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v7    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v43    # "table":Lio/realm/internal/Table;
    invoke-virtual {v13}, Lio/realm/internal/OsList;->removeAll()V

    .line 2594
    if-eqz v14, :cond_427

    .line 2595
    invoke-virtual {v14}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_403
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_427

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 2596
    .local v3, "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2597
    .local v4, "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    if-nez v4, :cond_41f

    .line 2598
    invoke-static {v0, v3, v1}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2600
    :cond_41f
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2601
    .end local v3    # "shippingCostConfigItem":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    .end local v4    # "cacheItemIndexshippingCostConfig":Ljava/lang/Long;
    goto :goto_403

    .line 2605
    :cond_427
    :goto_427
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    move-object/from16 v2, v41

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$basketCount()I

    move-result v2

    int-to-long v7, v2

    const/4 v2, 0x0

    move-wide/from16 v3, v38

    move-wide/from16 v36, v7

    move-object/from16 v15, v42

    .end local v42    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .local v15, "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    move-wide v7, v9

    move-wide/from16 v45, v9

    .end local v9    # "rowIndex":J
    .local v45, "rowIndex":J
    move-wide/from16 v9, v36

    move-object/from16 v19, v11

    .end local v11    # "basketItemsOsList":Lio/realm/internal/OsList;
    .local v19, "basketItemsOsList":Lio/realm/internal/OsList;
    move v11, v2

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2606
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    move-object/from16 v2, v41

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$rejectReasonId()I

    move-result v2

    int-to-long v9, v2

    const/4 v11, 0x0

    move-wide/from16 v7, v45

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 2607
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    move-object/from16 v2, v41

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$tupleIsSyncedWithServer()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 2608
    move-object/from16 v2, v41

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$signature()Ljava/lang/String;

    move-result-object v2

    .line 2609
    .local v2, "realmGet$signature":Ljava/lang/String;
    if-eqz v2, :cond_479

    .line 2610
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    const/4 v10, 0x0

    move-wide/from16 v3, v38

    move-wide/from16 v7, v45

    move-object v9, v2

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_483

    .line 2612
    :cond_479
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    const/4 v9, 0x0

    move-wide/from16 v3, v38

    move-wide/from16 v7, v45

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2614
    :goto_483
    move-object/from16 v3, v41

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmTime()Ljava/lang/String;

    move-result-object v36

    .line 2615
    .local v36, "realmGet$confirmTime":Ljava/lang/String;
    if-eqz v36, :cond_49a

    .line 2616
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    const/4 v10, 0x0

    move-wide/from16 v3, v38

    move-wide/from16 v7, v45

    move-object/from16 v9, v36

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4a4

    .line 2618
    :cond_49a
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    const/4 v9, 0x0

    move-wide/from16 v3, v38

    move-wide/from16 v7, v45

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 2621
    :goto_4a4
    move-object/from16 v3, v41

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v11

    .line 2622
    .local v11, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v11, :cond_4d4

    .line 2623
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2624
    .local v3, "cacheconfirmLocation":Ljava/lang/Long;
    if-nez v3, :cond_4be

    .line 2625
    invoke-static {v0, v11, v1}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2627
    .end local v3    # "cacheconfirmLocation":Ljava/lang/Long;
    .local v37, "cacheconfirmLocation":Ljava/lang/Long;
    :cond_4be
    move-object/from16 v37, v3

    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/16 v40, 0x0

    move-wide/from16 v3, v38

    move-wide/from16 v7, v45

    move-object/from16 v42, v11

    .end local v11    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .local v42, "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    move/from16 v11, v40

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 2628
    .end local v37    # "cacheconfirmLocation":Ljava/lang/Long;
    goto :goto_4df

    .line 2629
    .end local v42    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v11    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    :cond_4d4
    move-object/from16 v42, v11

    .end local v11    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .restart local v42    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    iget-wide v5, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    move-wide/from16 v3, v38

    move-wide/from16 v7, v45

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 2632
    :goto_4df
    new-instance v3, Lio/realm/internal/OsList;

    move-object/from16 v4, v43

    move-wide/from16 v5, v45

    .end local v43    # "table":Lio/realm/internal/Table;
    .end local v45    # "rowIndex":J
    .local v4, "table":Lio/realm/internal/Table;
    .local v5, "rowIndex":J
    invoke-virtual {v4, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    iget-wide v8, v12, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->returnedProductsIndex:J

    invoke-direct {v3, v7, v8, v9}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 2633
    .local v3, "returnedProductsOsList":Lio/realm/internal/OsList;
    move-object/from16 v7, v41

    check-cast v7, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;

    invoke-interface {v7}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v7

    .line 2634
    .local v7, "returnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    if-eqz v7, :cond_548

    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3}, Lio/realm/internal/OsList;->size()J

    move-result-wide v10

    cmp-long v37, v8, v10

    if-nez v37, :cond_548

    .line 2636
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v8

    .line 2637
    .local v8, "objectCount":I
    nop

    .local v18, "i":I
    :goto_50a
    move/from16 v9, v18

    .end local v18    # "i":I
    .local v9, "i":I
    if-ge v9, v8, :cond_53f

    .line 2638
    invoke-virtual {v7, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/digikala/dms/model/design/SerialItems;

    .line 2639
    .local v10, "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 2640
    .local v11, "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    if-nez v11, :cond_524

    .line 2641
    invoke-static {v0, v10, v1}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    move-result-wide v43

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 2643
    :cond_524
    move-object/from16 v47, v4

    move-wide/from16 v48, v5

    .end local v4    # "table":Lio/realm/internal/Table;
    .end local v5    # "rowIndex":J
    .local v47, "table":Lio/realm/internal/Table;
    .local v48, "rowIndex":J
    int-to-long v4, v9

    move-object/from16 v50, v12

    move-object/from16 v51, v13

    .end local v12    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v13    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    .local v50, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .local v51, "shippingCostConfigOsList":Lio/realm/internal/OsList;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v3, v4, v5, v12, v13}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 2637
    .end local v10    # "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    .end local v11    # "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    add-int/lit8 v18, v9, 0x1

    move-object/from16 v4, v47

    move-wide/from16 v5, v48

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    goto :goto_50a

    .line 2645
    .end local v8    # "objectCount":I
    .end local v9    # "i":I
    .end local v47    # "table":Lio/realm/internal/Table;
    .end local v48    # "rowIndex":J
    .end local v50    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v51    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    .restart local v4    # "table":Lio/realm/internal/Table;
    .restart local v5    # "rowIndex":J
    .restart local v12    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v13    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    :cond_53f
    move-object/from16 v47, v4

    move-wide/from16 v48, v5

    move-object/from16 v50, v12

    move-object/from16 v51, v13

    .end local v4    # "table":Lio/realm/internal/Table;
    .end local v5    # "rowIndex":J
    .end local v12    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v13    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    .restart local v47    # "table":Lio/realm/internal/Table;
    .restart local v48    # "rowIndex":J
    .restart local v50    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v51    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    goto :goto_57d

    .line 2646
    .end local v47    # "table":Lio/realm/internal/Table;
    .end local v48    # "rowIndex":J
    .end local v50    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v51    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    .restart local v4    # "table":Lio/realm/internal/Table;
    .restart local v5    # "rowIndex":J
    .restart local v12    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v13    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    :cond_548
    move-object/from16 v47, v4

    move-wide/from16 v48, v5

    move-object/from16 v50, v12

    move-object/from16 v51, v13

    .end local v4    # "table":Lio/realm/internal/Table;
    .end local v5    # "rowIndex":J
    .end local v12    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v13    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    .restart local v47    # "table":Lio/realm/internal/Table;
    .restart local v48    # "rowIndex":J
    .restart local v50    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v51    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    invoke-virtual {v3}, Lio/realm/internal/OsList;->removeAll()V

    .line 2647
    if-eqz v7, :cond_57d

    .line 2648
    invoke-virtual {v7}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_559
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/design/SerialItems;

    .line 2649
    .local v5, "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 2650
    .local v6, "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    if-nez v6, :cond_575

    .line 2651
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2653
    :cond_575
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lio/realm/internal/OsList;->addRow(J)V

    .line 2654
    .end local v5    # "returnedProductsItem":Lcom/digikala/dms/model/design/SerialItems;
    .end local v6    # "cacheItemIndexreturnedProducts":Ljava/lang/Long;
    goto :goto_559

    .line 2658
    .end local v2    # "realmGet$signature":Ljava/lang/String;
    .end local v3    # "returnedProductsOsList":Lio/realm/internal/OsList;
    .end local v7    # "returnedProductsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    .end local v14    # "shippingCostConfigList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    .end local v15    # "basketItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v16    # "realmGet$orderId":Ljava/lang/String;
    .end local v17    # "realmGet$podCode":Ljava/lang/String;
    .end local v19    # "basketItemsOsList":Lio/realm/internal/OsList;
    .end local v20    # "realmGet$cardTypeId":Ljava/lang/String;
    .end local v21    # "realmGet$cardNumber":Ljava/lang/String;
    .end local v22    # "realmGet$comment":Ljava/lang/String;
    .end local v23    # "realmGet$invoiceId":Ljava/lang/String;
    .end local v24    # "realmGet$isFmcg":Ljava/lang/Boolean;
    .end local v25    # "realmGet$autoRefundable":Ljava/lang/Boolean;
    .end local v26    # "realmGet$priority":Ljava/lang/String;
    .end local v27    # "realmGet$customerName":Ljava/lang/String;
    .end local v28    # "realmGet$customerPhoneNo":Ljava/lang/String;
    .end local v29    # "realmGet$recipientName":Ljava/lang/String;
    .end local v30    # "realmGet$recipientPhoneNo":Ljava/lang/String;
    .end local v31    # "realmGet$deliveryTime":Ljava/lang/String;
    .end local v32    # "realmGet$deliveryAddress":Ljava/lang/String;
    .end local v33    # "realmGet$PaymentMethod":Ljava/lang/String;
    .end local v34    # "realmGet$FinalPayableAmount":Ljava/lang/Number;
    .end local v35    # "deliveryLatLongObj":Lcom/digikala/dms/model/domain/LatLong;
    .end local v36    # "realmGet$confirmTime":Ljava/lang/String;
    .end local v42    # "confirmLocationObj":Lcom/digikala/dms/model/domain/LatLong;
    .end local v48    # "rowIndex":J
    .end local v51    # "shippingCostConfigOsList":Lio/realm/internal/OsList;
    :cond_57d
    :goto_57d
    nop

    .line 2422
    .end local v38    # "tableNativePtr":J
    .end local v41    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .end local v47    # "table":Lio/realm/internal/Table;
    .end local v50    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .local v2, "table":Lio/realm/internal/Table;
    .local v12, "tableNativePtr":J
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .local v15, "object":Lcom/digikala/dms/model/domain/Shipment;
    :goto_57e
    move-wide/from16 v12, v38

    move-object/from16 v3, v41

    move-object/from16 v2, v47

    move-object/from16 v14, v50

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v12    # "tableNativePtr":J
    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .end local v15    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .restart local v38    # "tableNativePtr":J
    .restart local v41    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .restart local v47    # "table":Lio/realm/internal/Table;
    .restart local v50    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    goto/16 :goto_1c

    .line 2659
    .end local v38    # "tableNativePtr":J
    .end local v41    # "object":Lcom/digikala/dms/model/domain/Shipment;
    .end local v47    # "table":Lio/realm/internal/Table;
    .end local v50    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v2    # "table":Lio/realm/internal/Table;
    .local v3, "object":Lcom/digikala/dms/model/domain/Shipment;
    .restart local v12    # "tableNativePtr":J
    .restart local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    :cond_588
    move-object/from16 v47, v2

    move-wide/from16 v38, v12

    move-object/from16 v50, v14

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v12    # "tableNativePtr":J
    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    .restart local v38    # "tableNativePtr":J
    .restart local v47    # "table":Lio/realm/internal/Table;
    .restart local v50    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 2915
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2916
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 2917
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;

    .line 2919
    .local v2, "aShipment":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2920
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 2921
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

    .line 2923
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2924
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2925
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

    .line 2927
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 2929
    :cond_76
    return v0

    .line 2916
    .end local v2    # "aShipment":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;
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

    .line 2902
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2903
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2904
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 2906
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 2907
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

    .line 2908
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 2909
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 2910
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 168
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 169
    return-void

    .line 171
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 172
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    .line 173
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 174
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 175
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 176
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 177
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 178
    return-void
.end method

.method public realmGet$FinalPayableAmount()Ljava/lang/Long;
    .registers 4

    .line 776
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 777
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 778
    const/4 v0, 0x0

    return-object v0

    .line 780
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$PaymentMethod()Ljava/lang/String;
    .registers 4

    .line 746
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 747
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$autoRefundable()Ljava/lang/Boolean;
    .registers 4

    .line 396
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 397
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 398
    const/4 v0, 0x0

    return-object v0

    .line 400
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$basketCount()I
    .registers 4

    .line 953
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 954
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$basketItems()Lio/realm/RealmList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 832
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->basketItemsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_10

    .line 833
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->basketItemsRealmList:Lio/realm/RealmList;

    return-object v0

    .line 835
    :cond_10
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketItemsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 836
    .local v0, "osList":Lio/realm/internal/OsList;
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lcom/digikala/dms/model/domain/BasketItems;

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->basketItemsRealmList:Lio/realm/RealmList;

    .line 837
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->basketItemsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$cardNumber()Ljava/lang/String;
    .registers 4

    .line 273
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 274
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cardTypeId()Ljava/lang/String;
    .registers 4

    .line 243
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 244
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .registers 4

    .line 303
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 304
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;
    .registers 8

    .line 1078
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1079
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1080
    const/4 v0, 0x0

    return-object v0

    .line 1082
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/model/domain/LatLong;

    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v3, v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

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

.method public realmGet$confirmTime()Ljava/lang/String;
    .registers 4

    .line 1049
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1050
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$customerName()Ljava/lang/String;
    .registers 4

    .line 525
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 526
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$customerPhoneNo()Ljava/lang/String;
    .registers 4

    .line 555
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 556
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$deliveryAddress()Ljava/lang/String;
    .registers 4

    .line 675
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 676
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;
    .registers 8

    .line 704
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 705
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 706
    const/4 v0, 0x0

    return-object v0

    .line 708
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/model/domain/LatLong;

    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v3, v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

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

.method public realmGet$deliveryTime()Ljava/lang/String;
    .registers 4

    .line 645
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 646
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$invoiceId()Ljava/lang/String;
    .registers 4

    .line 333
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 334
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isFmcg()Ljava/lang/Boolean;
    .registers 4

    .line 363
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 364
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$orderId()Ljava/lang/String;
    .registers 4

    .line 183
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 184
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$payableAmount()J
    .registers 4

    .line 481
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 482
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$paymentStatus()I
    .registers 4

    .line 459
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 460
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$podCode()Ljava/lang/String;
    .registers 4

    .line 213
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 214
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$priority()Ljava/lang/String;
    .registers 4

    .line 429
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 430
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

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

    .line 2897
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$recipientName()Ljava/lang/String;
    .registers 4

    .line 585
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 586
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$recipientPhoneNo()Ljava/lang/String;
    .registers 4

    .line 615
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 616
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$rejectReasonId()I
    .registers 4

    .line 975
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 976
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$remainingAmount()J
    .registers 4

    .line 503
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 504
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$returnedProducts()Lio/realm/RealmList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1121
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->returnedProductsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_10

    .line 1122
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->returnedProductsRealmList:Lio/realm/RealmList;

    return-object v0

    .line 1124
    :cond_10
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->returnedProductsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 1125
    .local v0, "osList":Lio/realm/internal/OsList;
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lcom/digikala/dms/model/design/SerialItems;

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->returnedProductsRealmList:Lio/realm/RealmList;

    .line 1126
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->returnedProductsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$shippingCostConfig()Lio/realm/RealmList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShippingCostConfig;",
            ">;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 893
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->shippingCostConfigRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_10

    .line 894
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->shippingCostConfigRealmList:Lio/realm/RealmList;

    return-object v0

    .line 896
    :cond_10
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->shippingCostConfigIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 897
    .local v0, "osList":Lio/realm/internal/OsList;
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->shippingCostConfigRealmList:Lio/realm/RealmList;

    .line 898
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->shippingCostConfigRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$signature()Ljava/lang/String;
    .registers 4

    .line 1019
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1020
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$status()I
    .registers 4

    .line 809
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 810
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$tupleIsSyncedWithServer()Z
    .registers 4

    .line 997
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 998
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmSet$FinalPayableAmount(Ljava/lang/Long;)V
    .registers 18
    .param p1, "value"    # Ljava/lang/Long;

    .line 785
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 786
    iget-object v1, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_13

    .line 787
    return-void

    .line 789
    :cond_13
    iget-object v1, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    .line 790
    .local v1, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2c

    .line 791
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v3, v3, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 792
    return-void

    .line 794
    :cond_2c
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v9, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 795
    return-void

    .line 798
    .end local v1    # "row":Lio/realm/internal/Row;
    :cond_41
    iget-object v1, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 799
    if-nez p1, :cond_5a

    .line 800
    iget-object v1, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    .line 801
    return-void

    .line 803
    :cond_5a
    iget-object v1, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 804
    return-void
.end method

.method public realmSet$PaymentMethod(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 753
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 754
    return-void

    .line 756
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 757
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 758
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 759
    return-void

    .line 761
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 762
    return-void

    .line 765
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 766
    if-nez p1, :cond_55

    .line 767
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 768
    return-void

    .line 770
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 771
    return-void
.end method

.method public realmSet$autoRefundable(Ljava/lang/Boolean;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 405
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 406
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 407
    return-void

    .line 409
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 410
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 411
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 412
    return-void

    .line 414
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 415
    return-void

    .line 418
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3f
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 419
    if-nez p1, :cond_58

    .line 420
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 421
    return-void

    .line 423
    :cond_58
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 424
    return-void
.end method

.method public realmSet$basketCount(I)V
    .registers 11
    .param p1, "value"    # I

    .line 959
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 960
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 961
    return-void

    .line 963
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 964
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 965
    return-void

    .line 968
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 969
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 970
    return-void
.end method

.method public realmSet$basketItems(Lio/realm/RealmList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;)V"
        }
    .end annotation

    .line 843
    .local p1, "value":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 844
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 845
    return-void

    .line 847
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "basketItems"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 848
    return-void

    .line 851
    :cond_20
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 852
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 853
    .local v0, "realm":Lio/realm/Realm;
    move-object v1, p1

    .line 854
    .local v1, "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    move-object p1, v2

    .line 855
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/BasketItems;

    .line 856
    .local v3, "item":Lcom/digikala/dms/model/domain/BasketItems;
    if-eqz v3, :cond_58

    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_58

    .line 859
    :cond_50
    invoke-virtual {v0, v3}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 857
    :cond_58
    :goto_58
    invoke-virtual {p1, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 861
    .end local v3    # "item":Lcom/digikala/dms/model/domain/BasketItems;
    :goto_5b
    goto :goto_3b

    .line 865
    .end local v0    # "realm":Lio/realm/Realm;
    .end local v1    # "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    :cond_5c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 866
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketItemsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 868
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

    .line 869
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 870
    .local v2, "objects":I
    nop

    .local v1, "i":I
    :goto_88
    if-ge v1, v2, :cond_ab

    .line 871
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/BasketItems;

    .line 872
    .local v3, "linkedObject":Lcom/digikala/dms/model/domain/BasketItems;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 873
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

    .line 870
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/BasketItems;
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 875
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_ab
    goto :goto_d9

    .line 876
    :cond_ac
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 877
    if-nez p1, :cond_b2

    .line 878
    return-void

    .line 880
    :cond_b2
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 881
    .restart local v2    # "objects":I
    nop

    .restart local v1    # "i":I
    :goto_b7
    if-ge v1, v2, :cond_d9

    .line 882
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/BasketItems;

    .line 883
    .restart local v3    # "linkedObject":Lcom/digikala/dms/model/domain/BasketItems;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 884
    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addRow(J)V

    .line 881
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/BasketItems;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 887
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_d9
    :goto_d9
    return-void
.end method

.method public realmSet$cardNumber(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 280
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 281
    return-void

    .line 283
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 284
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 285
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 286
    return-void

    .line 288
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 289
    return-void

    .line 292
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 293
    if-nez p1, :cond_55

    .line 294
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 295
    return-void

    .line 297
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 298
    return-void
.end method

.method public realmSet$cardTypeId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 250
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 251
    return-void

    .line 253
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 254
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 255
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 256
    return-void

    .line 258
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 259
    return-void

    .line 262
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 263
    if-nez p1, :cond_55

    .line 264
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 265
    return-void

    .line 267
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 268
    return-void
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 310
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 311
    return-void

    .line 313
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 314
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 315
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 316
    return-void

    .line 318
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 319
    return-void

    .line 322
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 323
    if-nez p1, :cond_55

    .line 324
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 325
    return-void

    .line 327
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 328
    return-void
.end method

.method public realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 12
    .param p1, "value"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 1087
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1088
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1089
    return-void

    .line 1091
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "confirmLocation"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1092
    return-void

    .line 1094
    :cond_20
    if-eqz p1, :cond_37

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1095
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/digikala/dms/model/domain/LatLong;

    .line 1097
    :cond_37
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1098
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_47

    .line 1100
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 1101
    return-void

    .line 1103
    :cond_47
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 1104
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v3, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

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

    .line 1105
    return-void

    .line 1108
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_6c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1109
    if-nez p1, :cond_85

    .line 1110
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 1111
    return-void

    .line 1113
    :cond_85
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 1114
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    move-object v3, p1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    .line 1115
    return-void
.end method

.method public realmSet$confirmTime(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1056
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1057
    return-void

    .line 1059
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1060
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 1061
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 1062
    return-void

    .line 1064
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 1065
    return-void

    .line 1068
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1069
    if-nez p1, :cond_55

    .line 1070
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 1071
    return-void

    .line 1073
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 1074
    return-void
.end method

.method public realmSet$customerName(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 532
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 533
    return-void

    .line 535
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 536
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 537
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 538
    return-void

    .line 540
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 541
    return-void

    .line 544
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 545
    if-nez p1, :cond_55

    .line 546
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 547
    return-void

    .line 549
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 550
    return-void
.end method

.method public realmSet$customerPhoneNo(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 562
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 563
    return-void

    .line 565
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 566
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 567
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 568
    return-void

    .line 570
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 571
    return-void

    .line 574
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 575
    if-nez p1, :cond_55

    .line 576
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 577
    return-void

    .line 579
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 580
    return-void
.end method

.method public realmSet$deliveryAddress(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 682
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 683
    return-void

    .line 685
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 686
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 687
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 688
    return-void

    .line 690
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 691
    return-void

    .line 694
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 695
    if-nez p1, :cond_55

    .line 696
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 697
    return-void

    .line 699
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 700
    return-void
.end method

.method public realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 12
    .param p1, "value"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 713
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 714
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 715
    return-void

    .line 717
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "deliveryLatLong"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 718
    return-void

    .line 720
    :cond_20
    if-eqz p1, :cond_37

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 721
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/digikala/dms/model/domain/LatLong;

    .line 723
    :cond_37
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 724
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_47

    .line 726
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 727
    return-void

    .line 729
    :cond_47
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 730
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v3, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

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

    .line 731
    return-void

    .line 734
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_6c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 735
    if-nez p1, :cond_85

    .line 736
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 737
    return-void

    .line 739
    :cond_85
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 740
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    move-object v3, p1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    .line 741
    return-void
.end method

.method public realmSet$deliveryTime(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 652
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 653
    return-void

    .line 655
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 656
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 657
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 658
    return-void

    .line 660
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 661
    return-void

    .line 664
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 665
    if-nez p1, :cond_55

    .line 666
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 667
    return-void

    .line 669
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 670
    return-void
.end method

.method public realmSet$invoiceId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 340
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 341
    return-void

    .line 343
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 344
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 345
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 346
    return-void

    .line 348
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 349
    return-void

    .line 352
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 353
    if-nez p1, :cond_55

    .line 354
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 355
    return-void

    .line 357
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 358
    return-void
.end method

.method public realmSet$isFmcg(Ljava/lang/Boolean;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 372
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 373
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 374
    return-void

    .line 376
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 377
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 378
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 379
    return-void

    .line 381
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 382
    return-void

    .line 385
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3f
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 386
    if-nez p1, :cond_58

    .line 387
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 388
    return-void

    .line 390
    :cond_58
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 391
    return-void
.end method

.method public realmSet$orderId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 190
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 191
    return-void

    .line 193
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 194
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 195
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 196
    return-void

    .line 198
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 199
    return-void

    .line 202
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 203
    if-nez p1, :cond_55

    .line 204
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 205
    return-void

    .line 207
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 208
    return-void
.end method

.method public realmSet$payableAmount(J)V
    .registers 12
    .param p1, "value"    # J

    .line 487
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 488
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 489
    return-void

    .line 491
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 492
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 493
    return-void

    .line 496
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 497
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 498
    return-void
.end method

.method public realmSet$paymentStatus(I)V
    .registers 11
    .param p1, "value"    # I

    .line 465
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 466
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 467
    return-void

    .line 469
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 470
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 471
    return-void

    .line 474
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 475
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 476
    return-void
.end method

.method public realmSet$podCode(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 220
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 221
    return-void

    .line 223
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 224
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 225
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 226
    return-void

    .line 228
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 229
    return-void

    .line 232
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 233
    if-nez p1, :cond_55

    .line 234
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 235
    return-void

    .line 237
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 238
    return-void
.end method

.method public realmSet$priority(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 436
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 437
    return-void

    .line 439
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 440
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 441
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 442
    return-void

    .line 444
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 445
    return-void

    .line 448
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 449
    if-nez p1, :cond_55

    .line 450
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 451
    return-void

    .line 453
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 454
    return-void
.end method

.method public realmSet$recipientName(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 592
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 593
    return-void

    .line 595
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 596
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 597
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 598
    return-void

    .line 600
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 601
    return-void

    .line 604
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 605
    if-nez p1, :cond_55

    .line 606
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 607
    return-void

    .line 609
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 610
    return-void
.end method

.method public realmSet$recipientPhoneNo(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 622
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 623
    return-void

    .line 625
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 626
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 627
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 628
    return-void

    .line 630
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 631
    return-void

    .line 634
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 635
    if-nez p1, :cond_55

    .line 636
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 637
    return-void

    .line 639
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 640
    return-void
.end method

.method public realmSet$rejectReasonId(I)V
    .registers 11
    .param p1, "value"    # I

    .line 981
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 982
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 983
    return-void

    .line 985
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 986
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 987
    return-void

    .line 990
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 991
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 992
    return-void
.end method

.method public realmSet$remainingAmount(J)V
    .registers 12
    .param p1, "value"    # J

    .line 509
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 510
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 511
    return-void

    .line 513
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 514
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 515
    return-void

    .line 518
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 519
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 520
    return-void
.end method

.method public realmSet$returnedProducts(Lio/realm/RealmList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;)V"
        }
    .end annotation

    .line 1132
    .local p1, "value":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1133
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1134
    return-void

    .line 1136
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "returnedProducts"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1137
    return-void

    .line 1140
    :cond_20
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1141
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 1142
    .local v0, "realm":Lio/realm/Realm;
    move-object v1, p1

    .line 1143
    .local v1, "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    move-object p1, v2

    .line 1144
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/design/SerialItems;

    .line 1145
    .local v3, "item":Lcom/digikala/dms/model/design/SerialItems;
    if-eqz v3, :cond_58

    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_58

    .line 1148
    :cond_50
    invoke-virtual {v0, v3}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 1146
    :cond_58
    :goto_58
    invoke-virtual {p1, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1150
    .end local v3    # "item":Lcom/digikala/dms/model/design/SerialItems;
    :goto_5b
    goto :goto_3b

    .line 1154
    .end local v0    # "realm":Lio/realm/Realm;
    .end local v1    # "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    :cond_5c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1155
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->returnedProductsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 1157
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

    .line 1158
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 1159
    .local v2, "objects":I
    nop

    .local v1, "i":I
    :goto_88
    if-ge v1, v2, :cond_ab

    .line 1160
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/design/SerialItems;

    .line 1161
    .local v3, "linkedObject":Lcom/digikala/dms/model/design/SerialItems;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 1162
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

    .line 1159
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/design/SerialItems;
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 1164
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_ab
    goto :goto_d9

    .line 1165
    :cond_ac
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 1166
    if-nez p1, :cond_b2

    .line 1167
    return-void

    .line 1169
    :cond_b2
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 1170
    .restart local v2    # "objects":I
    nop

    .restart local v1    # "i":I
    :goto_b7
    if-ge v1, v2, :cond_d9

    .line 1171
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/design/SerialItems;

    .line 1172
    .restart local v3    # "linkedObject":Lcom/digikala/dms/model/design/SerialItems;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 1173
    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addRow(J)V

    .line 1170
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/design/SerialItems;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 1176
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_d9
    :goto_d9
    return-void
.end method

.method public realmSet$shippingCostConfig(Lio/realm/RealmList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShippingCostConfig;",
            ">;)V"
        }
    .end annotation

    .line 904
    .local p1, "value":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 905
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 906
    return-void

    .line 908
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "shippingCostConfig"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 909
    return-void

    .line 912
    :cond_20
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 913
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 914
    .local v0, "realm":Lio/realm/Realm;
    move-object v1, p1

    .line 915
    .local v1, "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    move-object p1, v2

    .line 916
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 917
    .local v3, "item":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    if-eqz v3, :cond_58

    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_58

    .line 920
    :cond_50
    invoke-virtual {v0, v3}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 918
    :cond_58
    :goto_58
    invoke-virtual {p1, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 922
    .end local v3    # "item":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    :goto_5b
    goto :goto_3b

    .line 926
    .end local v0    # "realm":Lio/realm/Realm;
    .end local v1    # "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    :cond_5c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 927
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->shippingCostConfigIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 929
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

    .line 930
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 931
    .local v2, "objects":I
    nop

    .local v1, "i":I
    :goto_88
    if-ge v1, v2, :cond_ab

    .line 932
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 933
    .local v3, "linkedObject":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 934
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

    .line 931
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 936
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_ab
    goto :goto_d9

    .line 937
    :cond_ac
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 938
    if-nez p1, :cond_b2

    .line 939
    return-void

    .line 941
    :cond_b2
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 942
    .restart local v2    # "objects":I
    nop

    .restart local v1    # "i":I
    :goto_b7
    if-ge v1, v2, :cond_d9

    .line 943
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    .line 944
    .restart local v3    # "linkedObject":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 945
    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addRow(J)V

    .line 942
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/ShippingCostConfig;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 948
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_d9
    :goto_d9
    return-void
.end method

.method public realmSet$signature(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 1025
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1026
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1027
    return-void

    .line 1029
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1030
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 1031
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 1032
    return-void

    .line 1034
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 1035
    return-void

    .line 1038
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1039
    if-nez p1, :cond_55

    .line 1040
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 1041
    return-void

    .line 1043
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 1044
    return-void
.end method

.method public realmSet$status(I)V
    .registers 11
    .param p1, "value"    # I

    .line 815
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 816
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 817
    return-void

    .line 819
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 820
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 821
    return-void

    .line 824
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 825
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 826
    return-void
.end method

.method public realmSet$tupleIsSyncedWithServer(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 1003
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1004
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1005
    return-void

    .line 1007
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1008
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 1009
    return-void

    .line 1012
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1013
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 1014
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2764
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2765
    const-string v0, "Invalid object"

    return-object v0

    .line 2767
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shipment = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2768
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{orderId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2769
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$orderId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$orderId()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2770
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2771
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    const-string/jumbo v1, "{podCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2773
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$podCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$podCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, "null"

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    const-string/jumbo v1, "{cardTypeId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$cardTypeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$cardTypeId()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    :cond_63
    const-string v1, "null"

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2778
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2779
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    const-string/jumbo v1, "{cardNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$cardNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$cardNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_86

    :cond_84
    const-string v1, "null"

    :goto_86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2783
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    const-string/jumbo v1, "{comment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$comment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a5

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$comment()Ljava/lang/String;

    move-result-object v1

    goto :goto_a7

    :cond_a5
    const-string v1, "null"

    :goto_a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2786
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2788
    const-string/jumbo v1, "{invoiceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$invoiceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c6

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$invoiceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_c8

    :cond_c6
    const-string v1, "null"

    :goto_c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2790
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2792
    const-string/jumbo v1, "{isFmcg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$isFmcg()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e7

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$isFmcg()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_e9

    :cond_e7
    const-string v1, "null"

    :goto_e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2794
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2795
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2796
    const-string/jumbo v1, "{autoRefundable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$autoRefundable()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_108

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$autoRefundable()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_10a

    :cond_108
    const-string v1, "null"

    :goto_10a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2798
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    const-string/jumbo v1, "{priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$priority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_129

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$priority()Ljava/lang/String;

    move-result-object v1

    goto :goto_12b

    :cond_129
    const-string v1, "null"

    :goto_12b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2804
    const-string/jumbo v1, "{paymentStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2805
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$paymentStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2806
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    const-string/jumbo v1, "{payableAmount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$payableAmount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2810
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    const-string/jumbo v1, "{remainingAmount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$remainingAmount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2814
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    const-string/jumbo v1, "{customerName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2817
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$customerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_192

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$customerName()Ljava/lang/String;

    move-result-object v1

    goto :goto_194

    :cond_192
    const-string v1, "null"

    :goto_194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2819
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    const-string/jumbo v1, "{customerPhoneNo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2821
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$customerPhoneNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b3

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$customerPhoneNo()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b5

    :cond_1b3
    const-string v1, "null"

    :goto_1b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2824
    const-string/jumbo v1, "{recipientName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$recipientName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d4

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$recipientName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d6

    :cond_1d4
    const-string v1, "null"

    :goto_1d6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2827
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    const-string/jumbo v1, "{recipientPhoneNo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$recipientPhoneNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f5

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$recipientPhoneNo()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f7

    :cond_1f5
    const-string v1, "null"

    :goto_1f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    const-string/jumbo v1, "{deliveryTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$deliveryTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_216

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$deliveryTime()Ljava/lang/String;

    move-result-object v1

    goto :goto_218

    :cond_216
    const-string v1, "null"

    :goto_218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2836
    const-string/jumbo v1, "{deliveryAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2837
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$deliveryAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_237

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$deliveryAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_239

    :cond_237
    const-string v1, "null"

    :goto_239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    const-string/jumbo v1, "{deliveryLatLong:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2841
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v1

    if-eqz v1, :cond_256

    const-string v1, "LatLong"

    goto :goto_258

    :cond_256
    const-string v1, "null"

    :goto_258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2842
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2843
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2844
    const-string/jumbo v1, "{PaymentMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2845
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$PaymentMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_277

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$PaymentMethod()Ljava/lang/String;

    move-result-object v1

    goto :goto_279

    :cond_277
    const-string v1, "null"

    :goto_279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2847
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    const-string/jumbo v1, "{FinalPayableAmount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$FinalPayableAmount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_298

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$FinalPayableAmount()Ljava/lang/Long;

    move-result-object v1

    goto :goto_29a

    :cond_298
    const-string v1, "null"

    :goto_29a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2850
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2851
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    const-string/jumbo v1, "{status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$status()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2854
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2856
    const-string/jumbo v1, "{basketItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    const-string v1, "RealmList<BasketItems>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2858
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    const-string/jumbo v1, "{shippingCostConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    const-string v1, "RealmList<ShippingCostConfig>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    const-string/jumbo v1, "{basketCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$basketCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2866
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2867
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    const-string/jumbo v1, "{rejectReasonId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2869
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$rejectReasonId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2870
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    const-string/jumbo v1, "{tupleIsSyncedWithServer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2873
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$tupleIsSyncedWithServer()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2874
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2875
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    const-string/jumbo v1, "{signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2877
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$signature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_365

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$signature()Ljava/lang/String;

    move-result-object v1

    goto :goto_367

    :cond_365
    const-string v1, "null"

    :goto_367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    const-string/jumbo v1, "{confirmTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2881
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$confirmTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_386

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$confirmTime()Ljava/lang/String;

    move-result-object v1

    goto :goto_388

    :cond_386
    const-string v1, "null"

    :goto_388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    const-string/jumbo v1, "{confirmLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2885
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v1

    if-eqz v1, :cond_3a5

    const-string v1, "LatLong"

    goto :goto_3a7

    :cond_3a5
    const-string v1, "null"

    :goto_3a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2886
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    const-string/jumbo v1, "{returnedProducts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    const-string v1, "RealmList<SerialItems>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2892
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_ShipmentRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_ShipmentRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_ShipmentRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "Shipment"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_ShipmentRealmProxy.ShipmentColumnInfo (io.realm.com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_ShipmentRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShipmentColumnInfo"
.end annotation


# instance fields
.field FinalPayableAmountIndex:J

.field PaymentMethodIndex:J

.field autoRefundableIndex:J

.field basketCountIndex:J

.field basketItemsIndex:J

.field cardNumberIndex:J

.field cardTypeIdIndex:J

.field commentIndex:J

.field confirmLocationIndex:J

.field confirmTimeIndex:J

.field customerNameIndex:J

.field customerPhoneNoIndex:J

.field deliveryAddressIndex:J

.field deliveryLatLongIndex:J

.field deliveryTimeIndex:J

.field invoiceIdIndex:J

.field isFmcgIndex:J

.field orderIdIndex:J

.field payableAmountIndex:J

.field paymentStatusIndex:J

.field podCodeIndex:J

.field priorityIndex:J

.field recipientNameIndex:J

.field recipientPhoneNoIndex:J

.field rejectReasonIdIndex:J

.field remainingAmountIndex:J

.field returnedProductsIndex:J

.field shippingCostConfigIndex:J

.field signatureIndex:J

.field statusIndex:J

.field tupleIsSyncedWithServerIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 107
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 108
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 109
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 71
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 72
    const-string v0, "Shipment"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 73
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "orderId"

    const-string v2, "orderId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    .line 74
    const-string v1, "podCode"

    const-string v2, "podCode"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    .line 75
    const-string v1, "cardTypeId"

    const-string v2, "cardTypeId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    .line 76
    const-string v1, "cardNumber"

    const-string v2, "cardNumber"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    .line 77
    const-string v1, "comment"

    const-string v2, "comment"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    .line 78
    const-string v1, "invoiceId"

    const-string v2, "invoiceId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    .line 79
    const-string v1, "isFmcg"

    const-string v2, "isFmcg"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    .line 80
    const-string v1, "autoRefundable"

    const-string v2, "autoRefundable"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    .line 81
    const-string v1, "priority"

    const-string v2, "priority"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    .line 82
    const-string v1, "paymentStatus"

    const-string v2, "paymentStatus"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    .line 83
    const-string v1, "payableAmount"

    const-string v2, "payableAmount"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    .line 84
    const-string v1, "remainingAmount"

    const-string v2, "remainingAmount"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    .line 85
    const-string v1, "customerName"

    const-string v2, "customerName"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    .line 86
    const-string v1, "customerPhoneNo"

    const-string v2, "customerPhoneNo"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    .line 87
    const-string v1, "recipientName"

    const-string v2, "recipientName"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    .line 88
    const-string v1, "recipientPhoneNo"

    const-string v2, "recipientPhoneNo"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    .line 89
    const-string v1, "deliveryTime"

    const-string v2, "deliveryTime"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    .line 90
    const-string v1, "deliveryAddress"

    const-string v2, "deliveryAddress"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    .line 91
    const-string v1, "deliveryLatLong"

    const-string v2, "deliveryLatLong"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    .line 92
    const-string v1, "PaymentMethod"

    const-string v2, "PaymentMethod"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    .line 93
    const-string v1, "FinalPayableAmount"

    const-string v2, "FinalPayableAmount"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    .line 94
    const-string v1, "status"

    const-string v2, "status"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    .line 95
    const-string v1, "basketItems"

    const-string v2, "basketItems"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketItemsIndex:J

    .line 96
    const-string v1, "shippingCostConfig"

    const-string v2, "shippingCostConfig"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->shippingCostConfigIndex:J

    .line 97
    const-string v1, "basketCount"

    const-string v2, "basketCount"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    .line 98
    const-string v1, "rejectReasonId"

    const-string v2, "rejectReasonId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    .line 99
    const-string/jumbo v1, "tupleIsSyncedWithServer"

    const-string/jumbo v2, "tupleIsSyncedWithServer"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    .line 100
    const-string v1, "signature"

    const-string v2, "signature"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    .line 101
    const-string v1, "confirmTime"

    const-string v2, "confirmTime"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    .line 102
    const-string v1, "confirmLocation"

    const-string v2, "confirmLocation"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    .line 103
    const-string v1, "returnedProducts"

    const-string v2, "returnedProducts"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->returnedProductsIndex:J

    .line 104
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 113
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 118
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    .line 119
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    .line 120
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->orderIdIndex:J

    .line 121
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->podCodeIndex:J

    .line 122
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardTypeIdIndex:J

    .line 123
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->cardNumberIndex:J

    .line 124
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->commentIndex:J

    .line 125
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->invoiceIdIndex:J

    .line 126
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->isFmcgIndex:J

    .line 127
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->autoRefundableIndex:J

    .line 128
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->priorityIndex:J

    .line 129
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->paymentStatusIndex:J

    .line 130
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->payableAmountIndex:J

    .line 131
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->remainingAmountIndex:J

    .line 132
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerNameIndex:J

    .line 133
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->customerPhoneNoIndex:J

    .line 134
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientNameIndex:J

    .line 135
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->recipientPhoneNoIndex:J

    .line 136
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryTimeIndex:J

    .line 137
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryAddressIndex:J

    .line 138
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->deliveryLatLongIndex:J

    .line 139
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->PaymentMethodIndex:J

    .line 140
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->FinalPayableAmountIndex:J

    .line 141
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->statusIndex:J

    .line 142
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketItemsIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketItemsIndex:J

    .line 143
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->shippingCostConfigIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->shippingCostConfigIndex:J

    .line 144
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->basketCountIndex:J

    .line 145
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->rejectReasonIdIndex:J

    .line 146
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->tupleIsSyncedWithServerIndex:J

    .line 147
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->signatureIndex:J

    .line 148
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmTimeIndex:J

    .line 149
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->confirmLocationIndex:J

    .line 150
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->returnedProductsIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;->returnedProductsIndex:J

    .line 151
    return-void
.end method
