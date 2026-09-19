###### Class io.realm.DefaultRealmModuleMediator (io.realm.DefaultRealmModuleMediator)
.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "DefaultRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final MODEL_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 29
    .local v0, "modelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lio/realm/RealmModel;>;>;"
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    const-class v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lcom/digikala/dms/model/design/Question;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    const-class v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    const-class v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    const-class v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    .line 50
    .end local v0    # "modelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lio/realm/RealmModel;>;>;"
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lio/realm/internal/RealmProxyMediator;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;
    .registers 7
    .param p1, "realm"    # Lio/realm/Realm;
    .param p3, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)TE;"
        }
    .end annotation

    .line 294
    .local p2, "obj":Lio/realm/RealmModel;, "TE;"
    .local p4, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 296
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :goto_11
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 297
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/Answer;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Answer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 299
    :cond_27
    const-class v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 300
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;ZLjava/util/Map;)Lcom/digikala/dms/model/design/QuestionAnswer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 302
    :cond_3d
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 303
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;ZLjava/util/Map;)Lcom/digikala/dms/model/design/ReturnedProduct;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 305
    :cond_53
    const-class v1, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 306
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/Question;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Question;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 308
    :cond_69
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 309
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;ZLjava/util/Map;)Lcom/digikala/dms/model/design/SerialItems;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 311
    :cond_7f
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 312
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 314
    :cond_95
    const-class v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 315
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 317
    :cond_ab
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 318
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/RejectReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 320
    :cond_c1
    const-class v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 321
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/CardType;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/CardType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 323
    :cond_d7
    const-class v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 324
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BasketItems;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 326
    :cond_ed
    const-class v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 327
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 329
    :cond_103
    const-class v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 330
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerNotification;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ServerNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 332
    :cond_119
    const-class v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 333
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ShipmentItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 335
    :cond_12f
    const-class v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 336
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 338
    :cond_145
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 339
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ServerMessages;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 341
    :cond_15b
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_171

    .line 342
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Courier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 344
    :cond_171
    const-class v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_187

    .line 345
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ShippingCostConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 347
    :cond_187
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 348
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/UnprocessedReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 350
    :cond_19d
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    .line 351
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BatchItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 353
    :cond_1b3
    const-class v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 354
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-static {p1, v1, p3, p4}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Rate;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/Rate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 356
    :cond_1c9
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v1

    throw v1
.end method

.method public createColumnInfo(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/ColumnInfo;
    .registers 4
    .param p2, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsSchemaInfo;",
            ")",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    .line 80
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 82
    const-class v0, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 83
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    move-result-object v0

    return-object v0

    .line 85
    :cond_10
    const-class v0, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 86
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    move-result-object v0

    return-object v0

    .line 88
    :cond_1d
    const-class v0, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 89
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    move-result-object v0

    return-object v0

    .line 91
    :cond_2a
    const-class v0, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 92
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    move-result-object v0

    return-object v0

    .line 94
    :cond_37
    const-class v0, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 95
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    move-result-object v0

    return-object v0

    .line 97
    :cond_44
    const-class v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 98
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy$ShipmentColumnInfo;

    move-result-object v0

    return-object v0

    .line 100
    :cond_51
    const-class v0, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 101
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy$DistributionCenterColumnInfo;

    move-result-object v0

    return-object v0

    .line 103
    :cond_5e
    const-class v0, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 104
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    move-result-object v0

    return-object v0

    .line 106
    :cond_6b
    const-class v0, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 107
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy$CardTypeColumnInfo;

    move-result-object v0

    return-object v0

    .line 109
    :cond_78
    const-class v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 110
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    move-result-object v0

    return-object v0

    .line 112
    :cond_85
    const-class v0, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 113
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy$LatLongColumnInfo;

    move-result-object v0

    return-object v0

    .line 115
    :cond_92
    const-class v0, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 116
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy$ServerNotificationColumnInfo;

    move-result-object v0

    return-object v0

    .line 118
    :cond_9f
    const-class v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 119
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy$ShipmentItemColumnInfo;

    move-result-object v0

    return-object v0

    .line 121
    :cond_ac
    const-class v0, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 122
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy$BatchColumnInfo;

    move-result-object v0

    return-object v0

    .line 124
    :cond_b9
    const-class v0, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 125
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    move-result-object v0

    return-object v0

    .line 127
    :cond_c6
    const-class v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 128
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy$CourierColumnInfo;

    move-result-object v0

    return-object v0

    .line 130
    :cond_d3
    const-class v0, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 131
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy$ShippingCostConfigColumnInfo;

    move-result-object v0

    return-object v0

    .line 133
    :cond_e0
    const-class v0, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 134
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    move-result-object v0

    return-object v0

    .line 136
    :cond_ed
    const-class v0, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 137
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    move-result-object v0

    return-object v0

    .line 139
    :cond_fa
    const-class v0, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 140
    invoke-static {p2}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_RateRealmProxy$RateColumnInfo;

    move-result-object v0

    return-object v0

    .line 142
    :cond_107
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
    .registers 7
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)TE;"
        }
    .end annotation

    .line 807
    .local p1, "realmObject":Lio/realm/RealmModel;, "TE;"
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 809
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 810
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/design/Answer;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/design/Answer;IILjava/util/Map;)Lcom/digikala/dms/model/design/Answer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 812
    :cond_1f
    const-class v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 813
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/design/QuestionAnswer;IILjava/util/Map;)Lcom/digikala/dms/model/design/QuestionAnswer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 815
    :cond_35
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 816
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/design/ReturnedProduct;IILjava/util/Map;)Lcom/digikala/dms/model/design/ReturnedProduct;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 818
    :cond_4b
    const-class v1, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 819
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/design/Question;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/design/Question;IILjava/util/Map;)Lcom/digikala/dms/model/design/Question;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 821
    :cond_61
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 822
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/design/SerialItems;IILjava/util/Map;)Lcom/digikala/dms/model/design/SerialItems;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 824
    :cond_77
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 825
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/Shipment;IILjava/util/Map;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 827
    :cond_8d
    const-class v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 828
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/DistributionCenter;IILjava/util/Map;)Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 830
    :cond_a3
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 831
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/RejectReason;IILjava/util/Map;)Lcom/digikala/dms/model/domain/RejectReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 833
    :cond_b9
    const-class v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 834
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/CardType;IILjava/util/Map;)Lcom/digikala/dms/model/domain/CardType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 836
    :cond_cf
    const-class v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 837
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/BasketItems;IILjava/util/Map;)Lcom/digikala/dms/model/domain/BasketItems;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 839
    :cond_e5
    const-class v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 840
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/LatLong;IILjava/util/Map;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 842
    :cond_fb
    const-class v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_111

    .line 843
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/ServerNotification;IILjava/util/Map;)Lcom/digikala/dms/model/domain/ServerNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 845
    :cond_111
    const-class v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 846
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/ShipmentItem;IILjava/util/Map;)Lcom/digikala/dms/model/domain/ShipmentItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 848
    :cond_127
    const-class v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 849
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/Batch;IILjava/util/Map;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 851
    :cond_13d
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 852
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/ServerMessages;IILjava/util/Map;)Lcom/digikala/dms/model/domain/ServerMessages;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 854
    :cond_153
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 855
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/Courier;IILjava/util/Map;)Lcom/digikala/dms/model/domain/Courier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 857
    :cond_169
    const-class v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 858
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/ShippingCostConfig;IILjava/util/Map;)Lcom/digikala/dms/model/domain/ShippingCostConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 860
    :cond_17f
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_195

    .line 861
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/UnprocessedReason;IILjava/util/Map;)Lcom/digikala/dms/model/domain/UnprocessedReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 863
    :cond_195
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    .line 864
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/BatchItem;IILjava/util/Map;)Lcom/digikala/dms/model/domain/BatchItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 866
    :cond_1ab
    const-class v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c1

    .line 867
    move-object v1, p1

    check-cast v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-static {v1, v2, p2, p3}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/Rate;IILjava/util/Map;)Lcom/digikala/dms/model/domain/Rate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 869
    :cond_1c1
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v1

    throw v1
.end method

.method public createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    .registers 6
    .param p2, "realm"    # Lio/realm/Realm;
    .param p3, "json"    # Lorg/json/JSONObject;
    .param p4, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Lorg/json/JSONObject;",
            "Z)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 670
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 672
    const-class v0, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 673
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/Answer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 675
    :cond_16
    const-class v0, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 676
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/QuestionAnswer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 678
    :cond_29
    const-class v0, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 679
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/ReturnedProduct;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 681
    :cond_3c
    const-class v0, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 682
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/Question;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 684
    :cond_4f
    const-class v0, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 685
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/SerialItems;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 687
    :cond_62
    const-class v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 688
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 690
    :cond_75
    const-class v0, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 691
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 693
    :cond_88
    const-class v0, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 694
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/RejectReason;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 696
    :cond_9b
    const-class v0, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 697
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/CardType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 699
    :cond_ae
    const-class v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 700
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/BasketItems;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 702
    :cond_c1
    const-class v0, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 703
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 705
    :cond_d4
    const-class v0, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 706
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/ServerNotification;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 708
    :cond_e7
    const-class v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 709
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/ShipmentItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 711
    :cond_fa
    const-class v0, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 712
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 714
    :cond_10d
    const-class v0, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 715
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/ServerMessages;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 717
    :cond_120
    const-class v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 718
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/Courier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 720
    :cond_133
    const-class v0, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 721
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/ShippingCostConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 723
    :cond_146
    const-class v0, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 724
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/UnprocessedReason;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 726
    :cond_159
    const-class v0, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 727
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/BatchItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 729
    :cond_16c
    const-class v0, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 730
    invoke-static {p2, p3, p4}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/Rate;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 732
    :cond_17f
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public createUsingJsonStream(Ljava/lang/Class;Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/RealmModel;
    .registers 5
    .param p2, "realm"    # Lio/realm/Realm;
    .param p3, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Landroid/util/JsonReader;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 740
    const-class v0, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 741
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/Answer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 743
    :cond_16
    const-class v0, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 744
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/QuestionAnswer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 746
    :cond_29
    const-class v0, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 747
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/ReturnedProduct;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 749
    :cond_3c
    const-class v0, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 750
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/Question;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 752
    :cond_4f
    const-class v0, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 753
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/SerialItems;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 755
    :cond_62
    const-class v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 756
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 758
    :cond_75
    const-class v0, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 759
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 761
    :cond_88
    const-class v0, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 762
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/RejectReason;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 764
    :cond_9b
    const-class v0, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 765
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/CardType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 767
    :cond_ae
    const-class v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 768
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/BasketItems;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 770
    :cond_c1
    const-class v0, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 771
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 773
    :cond_d4
    const-class v0, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 774
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/ServerNotification;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 776
    :cond_e7
    const-class v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 777
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/ShipmentItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 779
    :cond_fa
    const-class v0, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 780
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 782
    :cond_10d
    const-class v0, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 783
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/ServerMessages;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 785
    :cond_120
    const-class v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 786
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/Courier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 788
    :cond_133
    const-class v0, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 789
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/ShippingCostConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 791
    :cond_146
    const-class v0, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 792
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/UnprocessedReason;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 794
    :cond_159
    const-class v0, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 795
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/BatchItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 797
    :cond_16c
    const-class v0, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 798
    invoke-static {p2, p3}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/Rate;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 800
    :cond_17f
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public getExpectedObjectSchemaInfoMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsObjectSchemaInfo;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 55
    .local v0, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/realm/RealmModel;>;Lio/realm/internal/OsObjectSchemaInfo;>;"
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    invoke-static {}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-class v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-static {}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-static {}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-class v1, Lcom/digikala/dms/model/design/Question;

    invoke-static {}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-static {}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-class v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-class v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-class v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-class v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-class v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-class v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-class v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-class v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object v0
.end method

.method public getModelClasses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation

    .line 287
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-object v0
.end method

.method public getSimpleClassNameImpl(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 147
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 149
    const-class v0, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    const-string v0, "Answer"

    return-object v0

    .line 152
    :cond_e
    const-class v0, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 153
    const-string v0, "QuestionAnswer"

    return-object v0

    .line 155
    :cond_19
    const-class v0, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 156
    const-string v0, "ReturnedProduct"

    return-object v0

    .line 158
    :cond_24
    const-class v0, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 159
    const-string v0, "Question"

    return-object v0

    .line 161
    :cond_2f
    const-class v0, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 162
    const-string v0, "SerialItems"

    return-object v0

    .line 164
    :cond_3a
    const-class v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 165
    const-string v0, "Shipment"

    return-object v0

    .line 167
    :cond_45
    const-class v0, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 168
    const-string v0, "DistributionCenter"

    return-object v0

    .line 170
    :cond_50
    const-class v0, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 171
    const-string v0, "RejectReason"

    return-object v0

    .line 173
    :cond_5b
    const-class v0, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 174
    const-string v0, "CardType"

    return-object v0

    .line 176
    :cond_66
    const-class v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 177
    const-string v0, "BasketItems"

    return-object v0

    .line 179
    :cond_71
    const-class v0, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 180
    const-string v0, "LatLong"

    return-object v0

    .line 182
    :cond_7c
    const-class v0, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 183
    const-string v0, "ServerNotification"

    return-object v0

    .line 185
    :cond_87
    const-class v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 186
    const-string v0, "ShipmentItem"

    return-object v0

    .line 188
    :cond_92
    const-class v0, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 189
    const-string v0, "Batch"

    return-object v0

    .line 191
    :cond_9d
    const-class v0, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 192
    const-string v0, "ServerMessages"

    return-object v0

    .line 194
    :cond_a8
    const-class v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 195
    const-string v0, "Courier"

    return-object v0

    .line 197
    :cond_b3
    const-class v0, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 198
    const-string v0, "ShippingCostConfig"

    return-object v0

    .line 200
    :cond_be
    const-class v0, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 201
    const-string v0, "UnprocessedReason"

    return-object v0

    .line 203
    :cond_c9
    const-class v0, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 204
    const-string v0, "BatchItem"

    return-object v0

    .line 206
    :cond_d4
    const-class v0, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 207
    const-string v0, "Rate"

    return-object v0

    .line 209
    :cond_df
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public insert(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V
    .registers 6
    .param p1, "realm"    # Lio/realm/Realm;
    .param p2, "object"    # Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 363
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 365
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_11
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 366
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/Answer;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 367
    :cond_21
    const-class v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 368
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 369
    :cond_31
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 370
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 371
    :cond_41
    const-class v1, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 372
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/Question;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 373
    :cond_51
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 374
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 375
    :cond_61
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 376
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 377
    :cond_71
    const-class v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 378
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 379
    :cond_81
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 380
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 381
    :cond_91
    const-class v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 382
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/CardType;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 383
    :cond_a1
    const-class v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 384
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 385
    :cond_b1
    const-class v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 386
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 387
    :cond_c1
    const-class v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 388
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerNotification;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 389
    :cond_d1
    const-class v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 390
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    goto :goto_148

    .line 391
    :cond_e0
    const-class v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 392
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J

    goto :goto_148

    .line 393
    :cond_ef
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 394
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;Ljava/util/Map;)J

    goto :goto_148

    .line 395
    :cond_fe
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 396
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;Ljava/util/Map;)J

    goto :goto_148

    .line 397
    :cond_10d
    const-class v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 398
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    goto :goto_148

    .line 399
    :cond_11c
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 400
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;Ljava/util/Map;)J

    goto :goto_148

    .line 401
    :cond_12b
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 402
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    goto :goto_148

    .line 403
    :cond_13a
    const-class v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 404
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Rate;Ljava/util/Map;)J

    .line 408
    :goto_148
    return-void

    .line 406
    :cond_149
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v1

    throw v1
.end method

.method public insert(Lio/realm/Realm;Ljava/util/Collection;)V
    .registers 8
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/realm/RealmModel;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 413
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    const/4 v1, 0x0

    .line 414
    .local v1, "object":Lio/realm/RealmModel;
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 415
    .local v2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26f

    .line 417
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lio/realm/RealmModel;

    .line 420
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 422
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_2c
    const-class v4, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 423
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/Answer;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 424
    :cond_3c
    const-class v4, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 425
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 426
    :cond_4c
    const-class v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 427
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 428
    :cond_5c
    const-class v4, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 429
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/Question;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 430
    :cond_6c
    const-class v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 431
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 432
    :cond_7c
    const-class v4, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 433
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/Shipment;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 434
    :cond_8c
    const-class v4, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 435
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 436
    :cond_9c
    const-class v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 437
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 438
    :cond_ac
    const-class v4, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 439
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/CardType;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/CardType;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 440
    :cond_bc
    const-class v4, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 441
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 442
    :cond_cc
    const-class v4, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 443
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/LatLong;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 444
    :cond_dc
    const-class v4, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 445
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerNotification;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 446
    :cond_ec
    const-class v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 447
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    goto :goto_163

    .line 448
    :cond_fb
    const-class v4, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 449
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/Batch;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J

    goto :goto_163

    .line 450
    :cond_10a
    const-class v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_119

    .line 451
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;Ljava/util/Map;)J

    goto :goto_163

    .line 452
    :cond_119
    const-class v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 453
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;Ljava/util/Map;)J

    goto :goto_163

    .line 454
    :cond_128
    const-class v4, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_137

    .line 455
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    goto :goto_163

    .line 456
    :cond_137
    const-class v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_146

    .line 457
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;Ljava/util/Map;)J

    goto :goto_163

    .line 458
    :cond_146
    const-class v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_155

    .line 459
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    goto :goto_163

    .line 460
    :cond_155
    const-class v4, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26a

    .line 461
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/Rate;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Rate;Ljava/util/Map;)J

    .line 465
    :goto_163
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26f

    .line 466
    const-class v4, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    .line 467
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 468
    :cond_176
    const-class v4, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 469
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 470
    :cond_183
    const-class v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_190

    .line 471
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 472
    :cond_190
    const-class v4, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19d

    .line 473
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 474
    :cond_19d
    const-class v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1aa

    .line 475
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 476
    :cond_1aa
    const-class v4, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    .line 477
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 478
    :cond_1b7
    const-class v4, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c4

    .line 479
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 480
    :cond_1c4
    const-class v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 481
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 482
    :cond_1d1
    const-class v4, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1de

    .line 483
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 484
    :cond_1de
    const-class v4, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1eb

    .line 485
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 486
    :cond_1eb
    const-class v4, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f8

    .line 487
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 488
    :cond_1f8
    const-class v4, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_205

    .line 489
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 490
    :cond_205
    const-class v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_211

    .line 491
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 492
    :cond_211
    const-class v4, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 493
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 494
    :cond_21d
    const-class v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_229

    .line 495
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 496
    :cond_229
    const-class v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_235

    .line 497
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 498
    :cond_235
    const-class v4, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_241

    .line 499
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 500
    :cond_241
    const-class v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24d

    .line 501
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 502
    :cond_24d
    const-class v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_259

    .line 503
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 504
    :cond_259
    const-class v4, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_265

    .line 505
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 507
    :cond_265
    invoke-static {v3}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 463
    :cond_26a
    invoke-static {v3}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 511
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :cond_26f
    :goto_26f
    return-void
.end method

.method public insertOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V
    .registers 6
    .param p1, "realm"    # Lio/realm/Realm;
    .param p2, "obj"    # Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 517
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 519
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_11
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 520
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/Answer;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 521
    :cond_21
    const-class v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 522
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 523
    :cond_31
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 524
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 525
    :cond_41
    const-class v1, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 526
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/Question;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 527
    :cond_51
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 528
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 529
    :cond_61
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 530
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 531
    :cond_71
    const-class v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 532
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 533
    :cond_81
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 534
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 535
    :cond_91
    const-class v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 536
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/CardType;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 537
    :cond_a1
    const-class v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 538
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 539
    :cond_b1
    const-class v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 540
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/LatLong;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 541
    :cond_c1
    const-class v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 542
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerNotification;Ljava/util/Map;)J

    goto/16 :goto_148

    .line 543
    :cond_d1
    const-class v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 544
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    goto :goto_148

    .line 545
    :cond_e0
    const-class v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 546
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J

    goto :goto_148

    .line 547
    :cond_ef
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 548
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;Ljava/util/Map;)J

    goto :goto_148

    .line 549
    :cond_fe
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 550
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;Ljava/util/Map;)J

    goto :goto_148

    .line 551
    :cond_10d
    const-class v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 552
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    goto :goto_148

    .line 553
    :cond_11c
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 554
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;Ljava/util/Map;)J

    goto :goto_148

    .line 555
    :cond_12b
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 556
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    goto :goto_148

    .line 557
    :cond_13a
    const-class v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 558
    move-object v1, p2

    check-cast v1, Lcom/digikala/dms/model/domain/Rate;

    invoke-static {p1, v1, p3}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Rate;Ljava/util/Map;)J

    .line 562
    :goto_148
    return-void

    .line 560
    :cond_149
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v1

    throw v1
.end method

.method public insertOrUpdate(Lio/realm/Realm;Ljava/util/Collection;)V
    .registers 8
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/realm/RealmModel;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 567
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    const/4 v1, 0x0

    .line 568
    .local v1, "object":Lio/realm/RealmModel;
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 569
    .local v2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26f

    .line 571
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lio/realm/RealmModel;

    .line 574
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 576
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_2c
    const-class v4, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 577
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/Answer;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 578
    :cond_3c
    const-class v4, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 579
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 580
    :cond_4c
    const-class v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 581
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 582
    :cond_5c
    const-class v4, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 583
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/Question;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 584
    :cond_6c
    const-class v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 585
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 586
    :cond_7c
    const-class v4, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 587
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/Shipment;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 588
    :cond_8c
    const-class v4, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 589
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/DistributionCenter;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 590
    :cond_9c
    const-class v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 591
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 592
    :cond_ac
    const-class v4, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 593
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/CardType;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/CardType;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 594
    :cond_bc
    const-class v4, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 595
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 596
    :cond_cc
    const-class v4, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 597
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/LatLong;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/LatLong;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 598
    :cond_dc
    const-class v4, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 599
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerNotification;Ljava/util/Map;)J

    goto/16 :goto_163

    .line 600
    :cond_ec
    const-class v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 601
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    goto :goto_163

    .line 602
    :cond_fb
    const-class v4, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 603
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/Batch;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Batch;Ljava/util/Map;)J

    goto :goto_163

    .line 604
    :cond_10a
    const-class v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_119

    .line 605
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;Ljava/util/Map;)J

    goto :goto_163

    .line 606
    :cond_119
    const-class v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 607
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Courier;Ljava/util/Map;)J

    goto :goto_163

    .line 608
    :cond_128
    const-class v4, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_137

    .line 609
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShippingCostConfig;Ljava/util/Map;)J

    goto :goto_163

    .line 610
    :cond_137
    const-class v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_146

    .line 611
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;Ljava/util/Map;)J

    goto :goto_163

    .line 612
    :cond_146
    const-class v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_155

    .line 613
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J

    goto :goto_163

    .line 614
    :cond_155
    const-class v4, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26a

    .line 615
    move-object v4, v1

    check-cast v4, Lcom/digikala/dms/model/domain/Rate;

    invoke-static {p1, v4, v2}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Rate;Ljava/util/Map;)J

    .line 619
    :goto_163
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26f

    .line 620
    const-class v4, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    .line 621
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 622
    :cond_176
    const-class v4, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 623
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 624
    :cond_183
    const-class v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_190

    .line 625
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 626
    :cond_190
    const-class v4, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19d

    .line 627
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 628
    :cond_19d
    const-class v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1aa

    .line 629
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 630
    :cond_1aa
    const-class v4, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    .line 631
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 632
    :cond_1b7
    const-class v4, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c4

    .line 633
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 634
    :cond_1c4
    const-class v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 635
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 636
    :cond_1d1
    const-class v4, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1de

    .line 637
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 638
    :cond_1de
    const-class v4, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1eb

    .line 639
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 640
    :cond_1eb
    const-class v4, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f8

    .line 641
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 642
    :cond_1f8
    const-class v4, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_205

    .line 643
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_26f

    .line 644
    :cond_205
    const-class v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_211

    .line 645
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 646
    :cond_211
    const-class v4, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 647
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 648
    :cond_21d
    const-class v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_229

    .line 649
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 650
    :cond_229
    const-class v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_235

    .line 651
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 652
    :cond_235
    const-class v4, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_241

    .line 653
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 654
    :cond_241
    const-class v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24d

    .line 655
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 656
    :cond_24d
    const-class v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_259

    .line 657
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 658
    :cond_259
    const-class v4, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_265

    .line 659
    invoke-static {p1, v0, v2}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_26f

    .line 661
    :cond_265
    invoke-static {v3}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 617
    :cond_26a
    invoke-static {v3}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 665
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :cond_26f
    :goto_26f
    return-void
.end method

.method public newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
    .registers 14
    .param p2, "baseRealm"    # Ljava/lang/Object;
    .param p3, "row"    # Lio/realm/internal/Row;
    .param p4, "columnInfo"    # Lio/realm/internal/ColumnInfo;
    .param p5, "acceptDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/Row;",
            "Lio/realm/internal/ColumnInfo;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 214
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p6, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 216
    .local v1, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    :try_start_9
    move-object v2, p2

    check-cast v2, Lio/realm/BaseRealm;

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 217
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 219
    const-class v0, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 220
    new-instance v0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 220
    return-object v0

    .line 222
    :cond_2d
    :try_start_2d
    const-class v0, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 223
    new-instance v0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 223
    return-object v0

    .line 225
    :cond_44
    :try_start_44
    const-class v0, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 226
    new-instance v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 226
    return-object v0

    .line 228
    :cond_5b
    :try_start_5b
    const-class v0, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 229
    new-instance v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 229
    return-object v0

    .line 231
    :cond_72
    :try_start_72
    const-class v0, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 232
    new-instance v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 232
    return-object v0

    .line 234
    :cond_89
    :try_start_89
    const-class v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 235
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_9c
    .catchall {:try_start_89 .. :try_end_9c} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 235
    return-object v0

    .line 237
    :cond_a0
    :try_start_a0
    const-class v0, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 238
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_b3
    .catchall {:try_start_a0 .. :try_end_b3} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 238
    return-object v0

    .line 240
    :cond_b7
    :try_start_b7
    const-class v0, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 241
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_ca
    .catchall {:try_start_b7 .. :try_end_ca} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 241
    return-object v0

    .line 243
    :cond_ce
    :try_start_ce
    const-class v0, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 244
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_e1
    .catchall {:try_start_ce .. :try_end_e1} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 244
    return-object v0

    .line 246
    :cond_e5
    :try_start_e5
    const-class v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 247
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_f8
    .catchall {:try_start_e5 .. :try_end_f8} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 247
    return-object v0

    .line 249
    :cond_fc
    :try_start_fc
    const-class v0, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 250
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_10f
    .catchall {:try_start_fc .. :try_end_10f} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 250
    return-object v0

    .line 252
    :cond_113
    :try_start_113
    const-class v0, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 253
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_126
    .catchall {:try_start_113 .. :try_end_126} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 253
    return-object v0

    .line 255
    :cond_12a
    :try_start_12a
    const-class v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 256
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_13d
    .catchall {:try_start_12a .. :try_end_13d} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 256
    return-object v0

    .line 258
    :cond_141
    :try_start_141
    const-class v0, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 259
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_BatchRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_154
    .catchall {:try_start_141 .. :try_end_154} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 259
    return-object v0

    .line 261
    :cond_158
    :try_start_158
    const-class v0, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 262
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_16b
    .catchall {:try_start_158 .. :try_end_16b} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 262
    return-object v0

    .line 264
    :cond_16f
    :try_start_16f
    const-class v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 265
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_CourierRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_182
    .catchall {:try_start_16f .. :try_end_182} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 265
    return-object v0

    .line 267
    :cond_186
    :try_start_186
    const-class v0, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 268
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_199
    .catchall {:try_start_186 .. :try_end_199} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 268
    return-object v0

    .line 270
    :cond_19d
    :try_start_19d
    const-class v0, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 271
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_1b0
    .catchall {:try_start_19d .. :try_end_1b0} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 271
    return-object v0

    .line 273
    :cond_1b4
    :try_start_1b4
    const-class v0, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 274
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_1c7
    .catchall {:try_start_1b4 .. :try_end_1c7} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 274
    return-object v0

    .line 276
    :cond_1cb
    :try_start_1cb
    const-class v0, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 277
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;

    invoke-direct {v0}, Lio/realm/com_digikala_dms_model_domain_RateRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_1de
    .catchall {:try_start_1cb .. :try_end_1de} :catchall_1e7

    .line 281
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 277
    return-object v0

    .line 279
    :cond_1e2
    :try_start_1e2
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
    :try_end_1e7
    .catchall {:try_start_1e2 .. :try_end_1e7} :catchall_1e7

    .line 281
    :catchall_1e7
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v0
.end method

.method public transformerApplied()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
