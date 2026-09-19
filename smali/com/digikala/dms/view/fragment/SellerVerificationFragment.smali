###### Class com.digikala.dms.view.fragment.SellerVerificationFragment (com.digikala.dms.view.fragment.SellerVerificationFragment)
.class public Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
.super Landroid/support/v4/app/Fragment;
.source "SellerVerificationFragment.java"


# static fields
.field private static final ARG_CARD_TYPE_ID:Ljava/lang/String; = "card_type_id"

.field private static final ARG_COMMENT:Ljava/lang/String; = "comment"

.field public static final ARG_COMPLETE_FLAG:Ljava/lang/String; = "complete"

.field private static final ARG_CRAD_NUMBER:Ljava/lang/String; = "card_number"

.field private static final ARG_ORDER_ID:Ljava/lang/String; = "order_id"

.field public static final ARG_PARTIAL_FLAG:Ljava/lang/String; = "partial"

.field private static final ARG_PAYABLE_AMOUNT:Ljava/lang/String; = "payable_amount"

.field private static final ARG_PAYMENT_METHOD:Ljava/lang/String; = "payment_method"

.field private static final TAG_REQUEST:Ljava/lang/String;


# instance fields
.field private PaymentMethod:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private cardTypeId:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private finalPayableAmount:Ljava/lang/Long;

.field private flag:Ljava/lang/String;

.field private mOrderId:Ljava/lang/String;

.field private mShipment:Lcom/digikala/dms/model/domain/Shipment;

.field private progressBr:Landroid/widget/ProgressBar;

.field private returnedProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation
.end field

.field private signBtn:Landroid/widget/Button;

.field private submitBtn:Landroid/widget/Button;

.field private verificationCode:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Lcom/digikala/dms/model/domain/Shipment;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->signBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->submitBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->progressBr:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->fullDeliverShipment()V

    return-void
.end method

.method static synthetic access$1400(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->partialDeliverShipment()V

    return-void
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->flag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardTypeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;Landroid/support/v4/app/Fragment;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .line 46
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->pushFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$800(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->finalPayableAmount:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$900(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->verificationCode:Landroid/widget/EditText;

    return-object v0
.end method

.method private fullDeliverShipment()V
    .registers 30

    .line 299
    move-object/from16 v0, p0

    const-string v1, "fullDeliverShipmentLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mOrderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->flag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardTypeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "time":Ljava/lang/String;
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 305
    .local v2, "realm":Lio/realm/Realm;
    const-class v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "orderId"

    iget-object v5, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mOrderId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/digikala/dms/model/domain/Shipment;

    .line 307
    .local v11, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->getLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 308
    .local v12, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    const-string v3, "latLongfull"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v2}, Lio/realm/Realm;->beginTransaction()V

    .line 311
    const-class v3, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/digikala/dms/model/domain/LatLong;

    .line 312
    .local v15, "location":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_95

    .line 313
    invoke-virtual {v12}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Lcom/digikala/dms/model/domain/LatLong;->setLatitude(D)V

    .line 314
    invoke-virtual {v12}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Lcom/digikala/dms/model/domain/LatLong;->setLongitude(D)V

    .line 317
    :cond_95
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getDistributionPointId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 318
    .local v25, "mDcId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 319
    .local v26, "mDeliverId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 320
    .local v27, "mPackId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getGpsStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 321
    .local v28, "gpsStatus":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v3

    const-string v4, "5"

    .line 326
    invoke-virtual {v11}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v8

    .line 322
    move-object/from16 v5, v26

    move-object/from16 v6, v25

    move-object/from16 v7, v27

    move-object v9, v1

    move-object/from16 v10, v28

    invoke-virtual/range {v3 .. v10}, Lcom/digikala/dms/core/SnowplowHelper;->meldDeliverLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Lcom/digikala/dms/model/domain/Shipment;->setStatus(I)V

    .line 329
    invoke-virtual {v11, v1}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmTime(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v11, v15}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 331
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 332
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/digikala/dms/model/domain/Shipment;->setSignature(Ljava/lang/String;)V

    .line 333
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardTypeId:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/digikala/dms/model/domain/Shipment;->setCardTypeId(Ljava/lang/String;)V

    .line 334
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardNumber:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/digikala/dms/model/domain/Shipment;->setCardNumber(Ljava/lang/String;)V

    .line 335
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->comment:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/digikala/dms/model/domain/Shipment;->setComment(Ljava/lang/String;)V

    .line 337
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    if-eqz v4, :cond_101

    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_101

    .line 338
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/digikala/dms/model/domain/Shipment;->setPaymentMethod(Ljava/lang/String;)V

    .line 340
    :cond_101
    invoke-virtual {v11, v3}, Lcom/digikala/dms/model/domain/Shipment;->setFinalPayableAmount(Ljava/lang/Long;)V

    .line 342
    invoke-virtual {v2}, Lio/realm/Realm;->commitTransaction()V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v11}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->saveLatestShipmentIDToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    invoke-direct {v0, v11, v12}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->fullDeliverTracking(Lcom/digikala/dms/model/domain/Shipment;Lcom/digikala/dms/model/domain/LatLong;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "batchId":Ljava/lang/String;
    iget-object v14, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mOrderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardTypeId:Ljava/lang/String;

    iget-object v5, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardNumber:Ljava/lang/String;

    iget-object v6, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->comment:Ljava/lang/String;

    iget-object v7, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    const-string v19, ""

    sget-object v22, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v8, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;

    invoke-direct {v8, v0, v2, v11}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;-><init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V

    const/16 v24, 0x0

    move-object v13, v3

    move-object v9, v15

    .end local v15    # "location":Lcom/digikala/dms/model/domain/LatLong;
    .local v9, "location":Lcom/digikala/dms/model/domain/LatLong;
    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v9

    move-object/from16 v21, v28

    move-object/from16 v23, v8

    invoke-static/range {v13 .. v24}, Lcom/digikala/dms/helper/webservice/WebApi;->makeFullDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v4

    .line 381
    invoke-virtual {v4}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 383
    return-void
.end method

.method private fullDeliverTracking(Lcom/digikala/dms/model/domain/Shipment;Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 6
    .param p1, "shipment"    # Lcom/digikala/dms/model/domain/Shipment;
    .param p2, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 386
    const-string v0, ""

    .line 388
    .local v0, "timeScope":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "dateTime":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 392
    .end local v1    # "dateTime":[Ljava/lang/String;
    goto :goto_15

    .line 390
    :catch_11
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    .registers 9
    .param p0, "orderId"    # Ljava/lang/String;
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "cardTypeId"    # Ljava/lang/String;
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "PaymentMethod"    # Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;-><init>()V

    .line 94
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "order_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "complete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "card_type_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "card_number"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "comment"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "payment_method"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    .registers 12
    .param p0, "orderId"    # Ljava/lang/String;
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "cardTypeId"    # Ljava/lang/String;
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "PaymentMethod"    # Ljava/lang/String;
    .param p6, "payableAmount"    # Ljava/lang/Long;

    .line 78
    new-instance v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;-><init>()V

    .line 79
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "order_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "complete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "card_type_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "card_number"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "comment"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "payment_method"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "payable_amount"

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v0
.end method

.method private partialDeliverShipment()V
    .registers 33

    .line 188
    move-object/from16 v0, p0

    const-string v1, "info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mOrderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->flag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardTypeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "time":Ljava/lang/String;
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 193
    .local v2, "realm":Lio/realm/Realm;
    const-class v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "orderId"

    iget-object v5, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mOrderId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/digikala/dms/model/domain/Shipment;

    .line 195
    .local v11, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_71

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v3}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getReturnedProducts()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->returnedProducts:Ljava/util/ArrayList;

    .line 199
    :cond_71
    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->getLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 201
    .local v12, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    invoke-virtual {v2}, Lio/realm/Realm;->beginTransaction()V

    .line 202
    const-class v3, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/digikala/dms/model/domain/LatLong;

    .line 203
    .local v15, "location":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_91

    .line 204
    invoke-virtual {v12}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Lcom/digikala/dms/model/domain/LatLong;->setLatitude(D)V

    .line 205
    invoke-virtual {v12}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Lcom/digikala/dms/model/domain/LatLong;->setLongitude(D)V

    .line 207
    :cond_91
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getDistributionPointId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 208
    .local v27, "mDcId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 209
    .local v28, "mDeliverId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    .line 210
    .local v29, "mPackId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getGpsStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 211
    .local v30, "gpsStatus":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v3

    const-string v4, "7"

    .line 216
    invoke-virtual {v11}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v8

    .line 212
    move-object/from16 v5, v28

    move-object/from16 v6, v27

    move-object/from16 v7, v29

    move-object v9, v1

    move-object/from16 v10, v30

    invoke-virtual/range {v3 .. v10}, Lcom/digikala/dms/core/SnowplowHelper;->meldDeliverLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v3, 0x7

    invoke-virtual {v11, v3}, Lcom/digikala/dms/model/domain/Shipment;->setStatus(I)V

    .line 221
    invoke-virtual {v11, v1}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmTime(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v11}, Lcom/digikala/dms/model/domain/Shipment;->getReturnedProducts()Lio/realm/RealmList;

    move-result-object v3

    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->returnedProducts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lio/realm/RealmList;->addAll(Ljava/util/Collection;)Z

    .line 223
    invoke-virtual {v11, v15}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 224
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/digikala/dms/model/domain/Shipment;->setSignature(Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 226
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardTypeId:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/digikala/dms/model/domain/Shipment;->setCardTypeId(Ljava/lang/String;)V

    .line 227
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardNumber:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/digikala/dms/model/domain/Shipment;->setCardNumber(Ljava/lang/String;)V

    .line 228
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->comment:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/digikala/dms/model/domain/Shipment;->setComment(Ljava/lang/String;)V

    .line 229
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    if-eqz v4, :cond_106

    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_106

    .line 230
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/digikala/dms/model/domain/Shipment;->setPaymentMethod(Ljava/lang/String;)V

    .line 232
    :cond_106
    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->finalPayableAmount:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_118

    .line 233
    invoke-virtual {v11, v3}, Lcom/digikala/dms/model/domain/Shipment;->setFinalPayableAmount(Ljava/lang/Long;)V

    .line 234
    iput-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->finalPayableAmount:Ljava/lang/Long;

    goto :goto_11d

    .line 236
    :cond_118
    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->finalPayableAmount:Ljava/lang/Long;

    invoke-virtual {v11, v3}, Lcom/digikala/dms/model/domain/Shipment;->setFinalPayableAmount(Ljava/lang/Long;)V

    .line 239
    :goto_11d
    invoke-virtual {v2}, Lio/realm/Realm;->commitTransaction()V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v11}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->saveLatestShipmentIDToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    invoke-direct {v0, v2, v11, v12}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->partialDeliverTracking(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Lcom/digikala/dms/model/domain/LatLong;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "batchId":Ljava/lang/String;
    iget-object v14, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mOrderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardTypeId:Ljava/lang/String;

    iget-object v5, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardNumber:Ljava/lang/String;

    iget-object v6, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->comment:Ljava/lang/String;

    iget-object v7, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    iget-object v8, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->finalPayableAmount:Ljava/lang/Long;

    iget-object v9, v0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->returnedProducts:Ljava/util/ArrayList;

    const/16 v21, 0x0

    sget-object v24, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v10, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;

    invoke-direct {v10, v0, v2, v11}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;-><init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V

    new-instance v13, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$5;

    invoke-direct {v13, v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$5;-><init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V

    move-object/from16 v26, v13

    move-object v13, v3

    move-object/from16 v31, v15

    .end local v15    # "location":Lcom/digikala/dms/model/domain/LatLong;
    .local v31, "location":Lcom/digikala/dms/model/domain/LatLong;
    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v31

    move-object/from16 v23, v30

    move-object/from16 v25, v10

    invoke-static/range {v13 .. v26}, Lcom/digikala/dms/helper/webservice/WebApi;->makePartialDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 296
    return-void
.end method

.method private partialDeliverTracking(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 11
    .param p1, "realm"    # Lio/realm/Realm;
    .param p2, "shipment"    # Lcom/digikala/dms/model/domain/Shipment;
    .param p3, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 397
    const-string v0, ""

    .line 399
    .local v0, "timeScope":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p2}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "dateTime":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 403
    .end local v1    # "dateTime":[Ljava/lang/String;
    goto :goto_15

    .line 401
    :catch_11
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->returnedProducts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/SerialItems;

    .line 407
    .local v2, "item":Lcom/digikala/dms/model/design/SerialItems;
    const-class v3, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {p1, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "id"

    .line 408
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getReasonId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v3

    .line 409
    invoke-virtual {v3}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/RejectReason;

    .line 411
    .local v3, "reason":Lcom/digikala/dms/model/domain/RejectReason;
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getReasonId()Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-static {v4, v5, v6}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logReturnShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getReasonId()Ljava/lang/String;

    move-result-object v5

    .line 417
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-static {v4, v5, v6}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->returnShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .end local v2    # "item":Lcom/digikala/dms/model/design/SerialItems;
    .end local v3    # "reason":Lcom/digikala/dms/model/domain/RejectReason;
    goto :goto_1b

    .line 419
    :cond_5c
    return-void
.end method

.method private pushFragment(Landroid/support/v4/app/Fragment;)V
    .registers 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "backStateName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 425
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v2

    .line 427
    .local v2, "fragmentPopped":Z
    if-nez v2, :cond_27

    .line 428
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 429
    .local v3, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v4, 0x7f0900ba

    invoke-virtual {v3, v4, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 430
    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 431
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 433
    .end local v3    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 110
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mOrderId:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->flag:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "card_type_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardTypeId:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "card_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->cardNumber:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->comment:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payment_method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->PaymentMethod:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payable_amount"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->finalPayableAmount:Ljava/lang/Long;

    .line 119
    :cond_63
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 120
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 121
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "orderId"

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mOrderId:Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 130
    const v0, 0x7f0c004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    .local v1, "backButton":Landroid/widget/ImageView;
    const v2, 0x7f0901e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->verificationCode:Landroid/widget/EditText;

    .line 134
    const v2, 0x7f090198

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->signBtn:Landroid/widget/Button;

    .line 135
    const v2, 0x7f0901ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->submitBtn:Landroid/widget/Button;

    .line 136
    const v2, 0x7f090147

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->progressBr:Landroid/widget/ProgressBar;

    .line 138
    new-instance v2, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$1;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$1;-><init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->signBtn:Landroid/widget/Button;

    new-instance v3, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;-><init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->submitBtn:Landroid/widget/Button;

    new-instance v3, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;-><init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.SellerVerificationFragment.AnonymousClass1 (com.digikala.dms.view.fragment.SellerVerificationFragment$1)
.class Lcom/digikala/dms/view/fragment/SellerVerificationFragment$1;
.super Ljava/lang/Object;
.source "SellerVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 138
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$1;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$1;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 142
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SellerVerificationFragment.AnonymousClass2 (com.digikala.dms.view.fragment.SellerVerificationFragment$2)
.class Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;
.super Ljava/lang/Object;
.source "SellerVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 145
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$000(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    .line 149
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$300(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$400(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$500(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$600(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/digikala/dms/view/fragment/SignatureFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/SignatureFragment;

    move-result-object v0

    .line 150
    .local v0, "signatureFragment":Lcom/digikala/dms/view/fragment/SignatureFragment;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1, v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$700(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;Landroid/support/v4/app/Fragment;)V

    .line 151
    .end local v0    # "signatureFragment":Lcom/digikala/dms/view/fragment/SignatureFragment;
    goto :goto_a4

    .line 152
    :cond_3b
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$800(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 153
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$300(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$400(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$500(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$600(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$800(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/digikala/dms/view/fragment/SignatureFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/digikala/dms/view/fragment/SignatureFragment;

    move-result-object v0

    .line 154
    .restart local v0    # "signatureFragment":Lcom/digikala/dms/view/fragment/SignatureFragment;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1, v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$700(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;Landroid/support/v4/app/Fragment;)V

    .line 155
    .end local v0    # "signatureFragment":Lcom/digikala/dms/view/fragment/SignatureFragment;
    goto :goto_a4

    .line 156
    :cond_77
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$300(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$400(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$500(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$600(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/digikala/dms/view/fragment/SignatureFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/SignatureFragment;

    move-result-object v0

    .line 157
    .restart local v0    # "signatureFragment":Lcom/digikala/dms/view/fragment/SignatureFragment;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1, v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$700(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;Landroid/support/v4/app/Fragment;)V

    .line 161
    .end local v0    # "signatureFragment":Lcom/digikala/dms/view/fragment/SignatureFragment;
    :goto_a4
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SellerVerificationFragment.AnonymousClass3 (com.digikala.dms.view.fragment.SellerVerificationFragment$3)
.class Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;
.super Ljava/lang/Object;
.source "SellerVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 164
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$900(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "verificationCodeTxt":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_6d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$000(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getPodCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 169
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1000(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 174
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1300(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V

    goto :goto_7d

    .line 176
    :cond_67
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1400(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V

    goto :goto_7d

    .line 179
    :cond_6d
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "\u0644\u0637\u0641\u0627\u064b \u06a9\u062f \u062a\u0627\u06cc\u06cc\u062f \u0631\u0627 \u0628\u0647 \u062f\u0631\u0633\u062a\u06cc \u0648\u0627\u0631\u062f \u06a9\u0646\u06cc\u062f!"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 181
    :goto_7d
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SellerVerificationFragment.AnonymousClass4 (com.digikala.dms.view.fragment.SellerVerificationFragment$4)
.class Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;
.super Ljava/lang/Object;
.source "SellerVerificationFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->partialDeliverShipment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$shipment:Lcom/digikala/dms/model/domain/Shipment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 245
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->val$shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 245
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 248
    const-string v0, "HAlfReturn_log"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 253
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->val$shipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 254
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 256
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1000(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 261
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 264
    :cond_61
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SellerVerificationFragment.AnonymousClass5 (com.digikala.dms.view.fragment.SellerVerificationFragment$5)
.class Lcom/digikala/dms/view/fragment/SellerVerificationFragment$5;
.super Ljava/lang/Object;
.source "SellerVerificationFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->partialDeliverShipment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 265
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 268
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "message":Ljava/lang/String;
    :try_start_39
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_42

    .line 274
    const-string/jumbo v1, "\u0644\u0637\u0641\u0627 \u0628\u0647 \u0627\u06cc\u0646\u062a\u0631\u0646\u062a \u0648\u0635\u0644 \u0634\u0648\u06cc\u062f!"

    move-object v0, v1

    goto :goto_6a

    .line 275
    :cond_42
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_4a

    .line 276
    const-string v1, "The server could not be found. Please try again after some time!!"

    move-object v0, v1

    goto :goto_6a

    .line 277
    :cond_4a
    instance-of v1, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v1, :cond_52

    .line 278
    const-string v1, "Cannot connect to Internet...Please check your connection!"

    move-object v0, v1

    goto :goto_6a

    .line 279
    :cond_52
    instance-of v1, p1, Lcom/android/volley/ParseError;

    if-eqz v1, :cond_5a

    .line 280
    const-string v1, "Parsing error! Please try again after some time!!"

    move-object v0, v1

    goto :goto_6a

    .line 281
    :cond_5a
    instance-of v1, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v1, :cond_63

    .line 282
    const-string/jumbo v1, "\u0644\u0637\u0641\u0627 \u0628\u0647 \u0627\u06cc\u0646\u062a\u0631\u0646\u062a \u0648\u0635\u0644 \u0634\u0648\u06cc\u062f!"

    move-object v0, v1

    goto :goto_6a

    .line 283
    :cond_63
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_6a

    .line 284
    const-string v1, "Connection TimeOut! Please check your internet connection."

    move-object v0, v1

    .line 286
    :cond_6a
    :goto_6a
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 287
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1000(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_9f} :catch_a0

    .line 293
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_a4

    .line 291
    :catch_a0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a4
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SellerVerificationFragment.AnonymousClass6 (com.digikala.dms.view.fragment.SellerVerificationFragment$6)
.class Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;
.super Ljava/lang/Object;
.source "SellerVerificationFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->fullDeliverShipment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$shipment:Lcom/digikala/dms/model/domain/Shipment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    .line 349
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->val$shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 370
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 373
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1000(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 374
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 378
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 380
    :cond_53
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/Boolean;

    .line 352
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 355
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 356
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->val$shipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 357
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 358
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1000(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1100(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->access$1200(Lcom/digikala/dms/view/fragment/SellerVerificationFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 363
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 366
    :cond_5e
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 349
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment$6;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
