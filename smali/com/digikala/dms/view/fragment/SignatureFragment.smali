###### Class com.digikala.dms.view.fragment.SignatureFragment (com.digikala.dms.view.fragment.SignatureFragment)
.class public Lcom/digikala/dms/view/fragment/SignatureFragment;
.super Landroid/support/v4/app/Fragment;
.source "SignatureFragment.java"


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

.field private confirmDialog:Landroid/support/v7/app/AlertDialog;

.field private fab:Landroid/support/design/widget/FloatingActionButton;

.field private fabProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

.field private finalPayableAmount:Ljava/lang/Long;

.field private flag:Ljava/lang/String;

.field private mOrderId:Ljava/lang/String;

.field private mPaintingView:Lcom/digikala/dms/view/custom/PaintingView;

.field private period:D

.field private questionDialog:Landroid/app/Dialog;

.field private returnedProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation
.end field

.field private seekBarWidth:I

.field private viewHolder:Lcom/digikala/dms/view/QuestionCustomViewHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-class v0, Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/digikala/dms/view/custom/PaintingView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 56
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mPaintingView:Lcom/digikala/dms/view/custom/PaintingView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/fragment/SignatureFragment;)Landroid/support/design/widget/FloatingActionButton;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 56
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 56
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->fabProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/view/fragment/SignatureFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 56
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->flag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/view/fragment/SignatureFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 56
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->fullDeliverShipment()V

    return-void
.end method

.method static synthetic access$500(Lcom/digikala/dms/view/fragment/SignatureFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 56
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->partialDeliverShipment()V

    return-void
.end method

.method static synthetic access$600(Lcom/digikala/dms/view/fragment/SignatureFragment;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 56
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->confirmDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/digikala/dms/view/fragment/SignatureFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .line 56
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->confirmDialog:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/digikala/dms/view/fragment/SignatureFragment;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 56
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->resetAllViewProperties(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/digikala/dms/view/fragment/SignatureFragment;Lcom/digikala/dms/view/QuestionCustomViewItem;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;
    .param p1, "x1"    # Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 56
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->setViewProperties(Lcom/digikala/dms/view/QuestionCustomViewItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/digikala/dms/view/fragment/SignatureFragment;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 56
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private fullDeliverShipment()V
    .registers 26

    .line 332
    move-object/from16 v0, p0

    const-string v1, "fullDeliverShipmentLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mOrderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->flag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardTypeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mPaintingView:Lcom/digikala/dms/view/custom/PaintingView;

    invoke-virtual {v1}, Lcom/digikala/dms/view/custom/PaintingView;->getBase64Painting()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "sign":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v14

    .line 337
    .local v14, "time":Ljava/lang/String;
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v15

    .line 338
    .local v15, "realm":Lio/realm/Realm;
    const-class v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v15, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "orderId"

    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mOrderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/digikala/dms/model/domain/Shipment;

    .line 340
    .local v13, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->getLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 341
    .local v12, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    const-string v2, "latLongfull"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v15}, Lio/realm/Realm;->beginTransaction()V

    .line 344
    const-class v2, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v15, v2}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/digikala/dms/model/domain/LatLong;

    .line 345
    .local v11, "location":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_9b

    .line 346
    invoke-virtual {v12}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/digikala/dms/model/domain/LatLong;->setLatitude(D)V

    .line 347
    invoke-virtual {v12}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/digikala/dms/model/domain/LatLong;->setLongitude(D)V

    .line 350
    :cond_9b
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDistributionPointId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 351
    .local v16, "mDcId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 352
    .local v17, "mDeliverId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 353
    .local v18, "mPackId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getGpsStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 354
    .local v19, "gpsStatus":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v2

    const-string v3, "5"

    .line 359
    invoke-virtual {v13}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v7

    .line 355
    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object v8, v14

    move-object/from16 v9, v19

    invoke-virtual/range {v2 .. v9}, Lcom/digikala/dms/core/SnowplowHelper;->meldDeliverLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setStatus(I)V

    .line 362
    invoke-virtual {v13, v14}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmTime(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v13, v11}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 364
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 365
    invoke-virtual {v13, v1}, Lcom/digikala/dms/model/domain/Shipment;->setSignature(Ljava/lang/String;)V

    .line 366
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardTypeId:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setCardTypeId(Ljava/lang/String;)V

    .line 367
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardNumber:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setCardNumber(Ljava/lang/String;)V

    .line 368
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->comment:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setComment(Ljava/lang/String;)V

    .line 370
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->PaymentMethod:Ljava/lang/String;

    if-eqz v2, :cond_106

    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->PaymentMethod:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_106

    .line 371
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->PaymentMethod:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setPaymentMethod(Ljava/lang/String;)V

    .line 373
    :cond_106
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setFinalPayableAmount(Ljava/lang/Long;)V

    .line 375
    invoke-virtual {v15}, Lio/realm/Realm;->commitTransaction()V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v13}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/digikala/dms/util/Util;->saveLatestShipmentIDToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    invoke-direct {v0, v13, v12}, Lcom/digikala/dms/view/fragment/SignatureFragment;->fullDeliverTracking(Lcom/digikala/dms/model/domain/Shipment;Lcom/digikala/dms/model/domain/LatLong;)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 381
    .local v20, "batchId":Ljava/lang/String;
    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mOrderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardTypeId:Ljava/lang/String;

    iget-object v5, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardNumber:Ljava/lang/String;

    iget-object v6, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->comment:Ljava/lang/String;

    iget-object v7, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->PaymentMethod:Ljava/lang/String;

    sget-object v21, Lcom/digikala/dms/view/fragment/SignatureFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v10, Lcom/digikala/dms/view/fragment/SignatureFragment$6;

    invoke-direct {v10, v0, v15, v13}, Lcom/digikala/dms/view/fragment/SignatureFragment$6;-><init>(Lcom/digikala/dms/view/fragment/SignatureFragment;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V

    const/16 v22, 0x0

    move-object/from16 v2, v20

    move-object v8, v1

    move-object v9, v11

    move-object/from16 v23, v10

    move-object/from16 v10, v19

    move-object/from16 v24, v11

    .end local v11    # "location":Lcom/digikala/dms/model/domain/LatLong;
    .local v24, "location":Lcom/digikala/dms/model/domain/LatLong;
    move-object/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "latLong":Lcom/digikala/dms/model/domain/LatLong;
    .local v21, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    move-object/from16 v12, v23

    move-object/from16 v23, v13

    .end local v13    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    .local v23, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    move-object/from16 v13, v22

    invoke-static/range {v2 .. v13}, Lcom/digikala/dms/helper/webservice/WebApi;->makeFullDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v2

    .line 413
    invoke-virtual {v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 415
    return-void
.end method

.method private fullDeliverTracking(Lcom/digikala/dms/model/domain/Shipment;Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 6
    .param p1, "shipment"    # Lcom/digikala/dms/model/domain/Shipment;
    .param p2, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 418
    const-string v0, ""

    .line 420
    .local v0, "timeScope":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "dateTime":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 424
    .end local v1    # "dateTime":[Ljava/lang/String;
    goto :goto_15

    .line 422
    :catch_11
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/SignatureFragment;
    .registers 9
    .param p0, "orderId"    # Ljava/lang/String;
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "cardTypeId"    # Ljava/lang/String;
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "PaymentMethod"    # Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;-><init>()V

    .line 115
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/SignatureFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "order_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "complete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "card_type_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "card_number"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "comment"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "payment_method"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/digikala/dms/view/fragment/SignatureFragment;
    .registers 12
    .param p0, "orderId"    # Ljava/lang/String;
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "cardTypeId"    # Ljava/lang/String;
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "PaymentMethod"    # Ljava/lang/String;
    .param p6, "payableAmount"    # Ljava/lang/Long;

    .line 99
    new-instance v0, Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;-><init>()V

    .line 100
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/SignatureFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "order_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "complete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "card_type_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "card_number"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "comment"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "payment_method"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "payable_amount"

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v0
.end method

.method private partialDeliverShipment()V
    .registers 28

    .line 222
    move-object/from16 v0, p0

    const-string v1, "info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mOrderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->flag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardTypeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mPaintingView:Lcom/digikala/dms/view/custom/PaintingView;

    invoke-virtual {v1}, Lcom/digikala/dms/view/custom/PaintingView;->getBase64Painting()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "sign":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v15

    .line 227
    .local v15, "time":Ljava/lang/String;
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v14

    .line 228
    .local v14, "realm":Lio/realm/Realm;
    const-class v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v14, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "orderId"

    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mOrderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/digikala/dms/model/domain/Shipment;

    .line 230
    .local v13, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_77

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v2}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getReturnedProducts()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->returnedProducts:Ljava/util/ArrayList;

    .line 234
    :cond_77
    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->getLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v12

    .line 236
    .local v12, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    invoke-virtual {v14}, Lio/realm/Realm;->beginTransaction()V

    .line 237
    const-class v2, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v14, v2}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/digikala/dms/model/domain/LatLong;

    .line 238
    .local v11, "location":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v12, :cond_97

    .line 239
    invoke-virtual {v12}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/digikala/dms/model/domain/LatLong;->setLatitude(D)V

    .line 240
    invoke-virtual {v12}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/digikala/dms/model/domain/LatLong;->setLongitude(D)V

    .line 242
    :cond_97
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDistributionPointId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 243
    .local v16, "mDcId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 244
    .local v17, "mDeliverId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 245
    .local v18, "mPackId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getGpsStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 246
    .local v19, "gpsStatus":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v2

    const-string v3, "7"

    .line 251
    invoke-virtual {v13}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v7

    .line 247
    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object v8, v15

    move-object/from16 v9, v19

    invoke-virtual/range {v2 .. v9}, Lcom/digikala/dms/core/SnowplowHelper;->meldDeliverLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setStatus(I)V

    .line 256
    invoke-virtual {v13, v15}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmTime(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v13}, Lcom/digikala/dms/model/domain/Shipment;->getReturnedProducts()Lio/realm/RealmList;

    move-result-object v2

    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->returnedProducts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {v13, v11}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 259
    invoke-virtual {v13, v1}, Lcom/digikala/dms/model/domain/Shipment;->setSignature(Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 261
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardTypeId:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setCardTypeId(Ljava/lang/String;)V

    .line 262
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardNumber:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setCardNumber(Ljava/lang/String;)V

    .line 263
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->comment:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setComment(Ljava/lang/String;)V

    .line 264
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->PaymentMethod:Ljava/lang/String;

    if-eqz v2, :cond_10b

    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->PaymentMethod:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10b

    .line 265
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->PaymentMethod:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setPaymentMethod(Ljava/lang/String;)V

    .line 267
    :cond_10b
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->finalPayableAmount:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_11e

    .line 268
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setFinalPayableAmount(Ljava/lang/Long;)V

    .line 269
    iput-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->finalPayableAmount:Ljava/lang/Long;

    goto :goto_123

    .line 271
    :cond_11e
    iget-object v2, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->finalPayableAmount:Ljava/lang/Long;

    invoke-virtual {v13, v2}, Lcom/digikala/dms/model/domain/Shipment;->setFinalPayableAmount(Ljava/lang/Long;)V

    .line 274
    :goto_123
    invoke-virtual {v14}, Lio/realm/Realm;->commitTransaction()V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v13}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/digikala/dms/util/Util;->saveLatestShipmentIDToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    invoke-direct {v0, v14, v13, v12}, Lcom/digikala/dms/view/fragment/SignatureFragment;->partialDeliverTracking(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Lcom/digikala/dms/model/domain/LatLong;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 279
    .local v20, "batchId":Ljava/lang/String;
    iget-object v3, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mOrderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardTypeId:Ljava/lang/String;

    iget-object v5, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardNumber:Ljava/lang/String;

    iget-object v6, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->comment:Ljava/lang/String;

    iget-object v7, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->PaymentMethod:Ljava/lang/String;

    iget-object v8, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->finalPayableAmount:Ljava/lang/Long;

    iget-object v9, v0, Lcom/digikala/dms/view/fragment/SignatureFragment;->returnedProducts:Ljava/util/ArrayList;

    sget-object v21, Lcom/digikala/dms/view/fragment/SignatureFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v10, Lcom/digikala/dms/view/fragment/SignatureFragment$4;

    invoke-direct {v10, v0, v14, v13}, Lcom/digikala/dms/view/fragment/SignatureFragment$4;-><init>(Lcom/digikala/dms/view/fragment/SignatureFragment;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V

    new-instance v2, Lcom/digikala/dms/view/fragment/SignatureFragment$5;

    invoke-direct {v2, v0}, Lcom/digikala/dms/view/fragment/SignatureFragment$5;-><init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V

    move-object/from16 v22, v2

    move-object/from16 v2, v20

    move-object/from16 v23, v10

    move-object v10, v1

    move-object/from16 v24, v11

    .end local v11    # "location":Lcom/digikala/dms/model/domain/LatLong;
    .local v24, "location":Lcom/digikala/dms/model/domain/LatLong;
    move-object/from16 v25, v12

    .end local v12    # "latLong":Lcom/digikala/dms/model/domain/LatLong;
    .local v25, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    move-object/from16 v12, v19

    move-object/from16 v26, v13

    .end local v13    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    .local v26, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    move-object/from16 v13, v21

    move-object/from16 v21, v14

    .end local v14    # "realm":Lio/realm/Realm;
    .local v21, "realm":Lio/realm/Realm;
    move-object/from16 v14, v23

    move-object/from16 v23, v15

    .end local v15    # "time":Ljava/lang/String;
    .local v23, "time":Ljava/lang/String;
    move-object/from16 v15, v22

    invoke-static/range {v2 .. v15}, Lcom/digikala/dms/helper/webservice/WebApi;->makePartialDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 329
    return-void
.end method

.method private partialDeliverTracking(Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 11
    .param p1, "realm"    # Lio/realm/Realm;
    .param p2, "shipment"    # Lcom/digikala/dms/model/domain/Shipment;
    .param p3, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 429
    const-string v0, ""

    .line 431
    .local v0, "timeScope":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p2}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "dateTime":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 435
    .end local v1    # "dateTime":[Ljava/lang/String;
    goto :goto_15

    .line 433
    :catch_11
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->returnedProducts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/SerialItems;

    .line 439
    .local v2, "item":Lcom/digikala/dms/model/design/SerialItems;
    const-class v3, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {p1, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "id"

    .line 440
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getReasonId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v3

    .line 441
    invoke-virtual {v3}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/RejectReason;

    .line 443
    .local v3, "reason":Lcom/digikala/dms/model/domain/RejectReason;
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getReasonId()Ljava/lang/String;

    move-result-object v5

    .line 445
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 443
    invoke-static {v4, v5, v6}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logReturnShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/SerialItems;->getReasonId()Ljava/lang/String;

    move-result-object v5

    .line 449
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 447
    invoke-static {v4, v5, v6}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->returnShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .end local v2    # "item":Lcom/digikala/dms/model/design/SerialItems;
    .end local v3    # "reason":Lcom/digikala/dms/model/domain/RejectReason;
    goto :goto_1b

    .line 451
    :cond_5c
    return-void
.end method

.method private questionDialogBox()V
    .registers 10

    .line 456
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    .line 457
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 458
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 460
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 462
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 463
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 465
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 466
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 467
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 470
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/view/custom/XeiTextView;

    .line 472
    .local v2, "confirmTextView":Lcom/digikala/dms/view/custom/XeiTextView;
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    const v4, 0x7f09004c

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 480
    .local v3, "cancelImageView":Landroid/widget/ImageView;
    new-instance v4, Lcom/digikala/dms/view/QuestionCustomViewHolder;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    invoke-direct {v4, v5, v6}, Lcom/digikala/dms/view/QuestionCustomViewHolder;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    iput-object v4, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->viewHolder:Lcom/digikala/dms/view/QuestionCustomViewHolder;

    .line 482
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->viewHolder:Lcom/digikala/dms/view/QuestionCustomViewHolder;

    invoke-virtual {v4}, Lcom/digikala/dms/view/QuestionCustomViewHolder;->getItems()Ljava/util/List;

    move-result-object v4

    .line 484
    .local v4, "viewItems":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/view/QuestionCustomViewItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 485
    .local v6, "viewItem":Lcom/digikala/dms/view/QuestionCustomViewItem;
    invoke-virtual {v6}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getLayout()Landroid/widget/RelativeLayout;

    move-result-object v7

    new-instance v8, Lcom/digikala/dms/view/fragment/SignatureFragment$7;

    invoke-direct {v8, p0, v2, v4, v6}, Lcom/digikala/dms/view/fragment/SignatureFragment$7;-><init>(Lcom/digikala/dms/view/fragment/SignatureFragment;Lcom/digikala/dms/view/custom/XeiTextView;Ljava/util/List;Lcom/digikala/dms/view/QuestionCustomViewItem;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    .end local v6    # "viewItem":Lcom/digikala/dms/view/QuestionCustomViewItem;
    goto :goto_70

    .line 552
    :cond_89
    new-instance v5, Lcom/digikala/dms/view/fragment/SignatureFragment$8;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/fragment/SignatureFragment$8;-><init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 574
    return-void
.end method

.method private resetAllViewProperties(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/view/QuestionCustomViewItem;",
            ">;)V"
        }
    .end annotation

    .line 615
    .local p1, "viewItems":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/view/QuestionCustomViewItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 616
    .local v1, "item":Lcom/digikala/dms/view/QuestionCustomViewItem;
    invoke-virtual {v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getTextView()Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/digikala/dms/view/custom/XeiTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    invoke-virtual {v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getTextView()Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/digikala/dms/view/custom/XeiTextView;->setTextColor(I)V

    .line 619
    invoke-virtual {v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    invoke-virtual {v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getViewIcon()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 621
    invoke-virtual {v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 622
    invoke-virtual {v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getCircle()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    .end local v1    # "item":Lcom/digikala/dms/view/QuestionCustomViewItem;
    goto :goto_4

    .line 624
    :cond_5f
    return-void
.end method

.method private setViewProperties(Lcom/digikala/dms/view/QuestionCustomViewItem;)V
    .registers 7
    .param p1, "viewItem"    # Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 577
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getId()I

    move-result v0

    const v1, 0x106000b

    const/4 v2, 0x0

    if-ltz v0, :cond_66

    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getId()I

    move-result v0

    const/4 v3, 0x6

    if-gt v0, v3, :cond_66

    .line 579
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getTextView()Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/digikala/dms/view/custom/XeiTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getTextView()Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setTextColor(I)V

    .line 582
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getViewIcon()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 584
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 585
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getCircle()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12c

    .line 587
    :cond_66
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getId()I

    move-result v0

    const/4 v3, 0x7

    if-lt v0, v3, :cond_c9

    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getId()I

    move-result v0

    const/16 v3, 0x8

    if-gt v0, v3, :cond_c9

    .line 589
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getTextView()Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/digikala/dms/view/custom/XeiTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getTextView()Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setTextColor(I)V

    .line 592
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getViewIcon()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 594
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 595
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getCircle()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12c

    .line 597
    :cond_c9
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getId()I

    move-result v0

    const/16 v3, 0x9

    if-lt v0, v3, :cond_12c

    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getId()I

    move-result v0

    const/16 v3, 0xa

    if-gt v0, v3, :cond_12c

    .line 599
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getTextView()Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/digikala/dms/view/custom/XeiTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getTextView()Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setTextColor(I)V

    .line 602
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getViewIcon()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 604
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 605
    invoke-virtual {p1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getCircle()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    :cond_12c
    :goto_12c
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->viewHolder:Lcom/digikala/dms/view/QuestionCustomViewHolder;

    invoke-virtual {v0, p1}, Lcom/digikala/dms/view/QuestionCustomViewHolder;->setSelectedItem(Lcom/digikala/dms/view/QuestionCustomViewItem;)V

    .line 611
    const-string v0, "selected"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->viewHolder:Lcom/digikala/dms/view/QuestionCustomViewHolder;

    invoke-virtual {v2}, Lcom/digikala/dms/view/QuestionCustomViewHolder;->getSelectedItem()Lcom/digikala/dms/view/QuestionCustomViewItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/view/QuestionCustomViewItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 131
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mOrderId:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->flag:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "card_type_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardTypeId:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "card_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->cardNumber:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->comment:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payment_method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->PaymentMethod:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payable_amount"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->finalPayableAmount:Ljava/lang/Long;

    .line 139
    :cond_63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 145
    const v0, 0x7f0c0050

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/PaintingView;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->mPaintingView:Lcom/digikala/dms/view/custom/PaintingView;

    .line 148
    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 149
    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/jorgecastilloprz/FABProgressCircle;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->fabProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    .line 152
    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 153
    .local v1, "clearButton":Landroid/widget/ImageButton;
    const v2, 0x7f0900cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 155
    .local v2, "backButton":Landroid/widget/ImageView;
    new-instance v3, Lcom/digikala/dms/view/fragment/SignatureFragment$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/SignatureFragment$1;-><init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v3, Lcom/digikala/dms/view/fragment/SignatureFragment$2;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/SignatureFragment$2;-><init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/SignatureFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v4, Lcom/digikala/dms/view/fragment/SignatureFragment$3;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/fragment/SignatureFragment$3;-><init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.SignatureFragment.AnonymousClass1 (com.digikala.dms.view.fragment.SignatureFragment$1)
.class Lcom/digikala/dms/view/fragment/SignatureFragment$1;
.super Ljava/lang/Object;
.source "SignatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SignatureFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 155
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$1;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$1;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$000(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/digikala/dms/view/custom/PaintingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/view/custom/PaintingView;->clearCanvas()V

    .line 159
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SignatureFragment.AnonymousClass2 (com.digikala.dms.view.fragment.SignatureFragment$2)
.class Lcom/digikala/dms/view/fragment/SignatureFragment$2;
.super Ljava/lang/Object;
.source "SignatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SignatureFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 162
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$2;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 166
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SignatureFragment.AnonymousClass3 (com.digikala.dms.view.fragment.SignatureFragment$3)
.class Lcom/digikala/dms/view/fragment/SignatureFragment$3;
.super Ljava/lang/Object;
.source "SignatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SignatureFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 169
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$000(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/digikala/dms/view/custom/PaintingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/view/custom/PaintingView;->getPainting()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 179
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "alertDialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 182
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c008f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 183
    .local v2, "dialogView":Landroid/view/View;
    const v3, 0x7f090199

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 185
    .local v3, "textViewConfirm":Landroid/widget/TextView;
    new-instance v4, Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;-><init>(Lcom/digikala/dms/view/fragment/SignatureFragment$3;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    nop

    .line 203
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 204
    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 206
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$602(Lcom/digikala/dms/view/fragment/SignatureFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 207
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$600(Lcom/digikala/dms/view/fragment/SignatureFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 209
    .end local v0    # "alertDialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "dialogView":Landroid/view/View;
    .end local v3    # "textViewConfirm":Landroid/widget/TextView;
    goto :goto_67

    .line 210
    :cond_56
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u0627\u0645\u0636\u0627\u06cc \u06a9\u0627\u0631\u0628\u0631 \u0627\u0644\u0632\u0627\u0645\u06cc\u0633\u062a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    :goto_67
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SignatureFragment.AnonymousClass3.AnonymousClass1 (com.digikala.dms.view.fragment.SignatureFragment$3$1)
.class Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;
.super Ljava/lang/Object;
.source "SignatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SignatureFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/digikala/dms/view/fragment/SignatureFragment$3;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SignatureFragment$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/fragment/SignatureFragment$3;

    .line 185
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;->this$1:Lcom/digikala/dms/view/fragment/SignatureFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;->this$1:Lcom/digikala/dms/view/fragment/SignatureFragment$3;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$100(Lcom/digikala/dms/view/fragment/SignatureFragment;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;->this$1:Lcom/digikala/dms/view/fragment/SignatureFragment$3;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$200(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->show()V

    .line 192
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;->this$1:Lcom/digikala/dms/view/fragment/SignatureFragment$3;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$300(Lcom/digikala/dms/view/fragment/SignatureFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 193
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;->this$1:Lcom/digikala/dms/view/fragment/SignatureFragment$3;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$400(Lcom/digikala/dms/view/fragment/SignatureFragment;)V

    goto :goto_36

    .line 195
    :cond_2f
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;->this$1:Lcom/digikala/dms/view/fragment/SignatureFragment$3;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$500(Lcom/digikala/dms/view/fragment/SignatureFragment;)V

    .line 198
    :goto_36
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$3$1;->this$1:Lcom/digikala/dms/view/fragment/SignatureFragment$3;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/SignatureFragment$3;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$600(Lcom/digikala/dms/view/fragment/SignatureFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 199
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SignatureFragment.AnonymousClass4 (com.digikala.dms.view.fragment.SignatureFragment$4)
.class Lcom/digikala/dms/view/fragment/SignatureFragment$4;
.super Ljava/lang/Object;
.source "SignatureFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SignatureFragment;->partialDeliverShipment()V
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
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$shipment:Lcom/digikala/dms/model/domain/Shipment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SignatureFragment;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 280
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->val$shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 280
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 283
    const-string v0, "HAlfReturn_log"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 288
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->val$shipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 289
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 291
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$200(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 294
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 295
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$4;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 298
    :cond_4d
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SignatureFragment.AnonymousClass5 (com.digikala.dms.view.fragment.SignatureFragment$5)
.class Lcom/digikala/dms/view/fragment/SignatureFragment$5;
.super Ljava/lang/Object;
.source "SignatureFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SignatureFragment;->partialDeliverShipment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 299
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 302
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

    .line 303
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

    .line 306
    :try_start_38
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$200(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "message":Ljava/lang/String;
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_4b

    .line 309
    const-string/jumbo v1, "\u0644\u0637\u0641\u0627 \u0628\u0647 \u0627\u06cc\u0646\u062a\u0631\u0646\u062a \u0648\u0635\u0644 \u0634\u0648\u06cc\u062f!"

    move-object v0, v1

    goto :goto_73

    .line 310
    :cond_4b
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_53

    .line 311
    const-string v1, "The server could not be found. Please try again after some time!!"

    move-object v0, v1

    goto :goto_73

    .line 312
    :cond_53
    instance-of v1, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v1, :cond_5b

    .line 313
    const-string v1, "Cannot connect to Internet...Please check your connection!"

    move-object v0, v1

    goto :goto_73

    .line 314
    :cond_5b
    instance-of v1, p1, Lcom/android/volley/ParseError;

    if-eqz v1, :cond_63

    .line 315
    const-string v1, "Parsing error! Please try again after some time!!"

    move-object v0, v1

    goto :goto_73

    .line 316
    :cond_63
    instance-of v1, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v1, :cond_6c

    .line 317
    const-string/jumbo v1, "\u0644\u0637\u0641\u0627 \u0628\u0647 \u0627\u06cc\u0646\u062a\u0631\u0646\u062a \u0648\u0635\u0644 \u0634\u0648\u06cc\u062f!"

    move-object v0, v1

    goto :goto_73

    .line 318
    :cond_6c
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_73

    .line 319
    const-string v1, "Connection TimeOut! Please check your internet connection."

    move-object v0, v1

    .line 321
    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 323
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$5;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_8a} :catch_8b

    .line 326
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_8f

    .line 324
    :catch_8b
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SignatureFragment.AnonymousClass6 (com.digikala.dms.view.fragment.SignatureFragment$6)
.class Lcom/digikala/dms/view/fragment/SignatureFragment$6;
.super Ljava/lang/Object;
.source "SignatureFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SignatureFragment;->fullDeliverShipment()V
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
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$shipment:Lcom/digikala/dms/model/domain/Shipment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SignatureFragment;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 382
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->val$shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 403
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 406
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$200(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 409
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 410
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 412
    :cond_3e
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/Boolean;

    .line 385
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 388
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 389
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->val$shipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 390
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 393
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$200(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 395
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 396
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 399
    :cond_4a
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 382
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/SignatureFragment$6;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.SignatureFragment.AnonymousClass7 (com.digikala.dms.view.fragment.SignatureFragment$7)
.class Lcom/digikala/dms/view/fragment/SignatureFragment$7;
.super Ljava/lang/Object;
.source "SignatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialogBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

.field final synthetic val$confirmTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field final synthetic val$viewItem:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field final synthetic val$viewItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SignatureFragment;Lcom/digikala/dms/view/custom/XeiTextView;Ljava/util/List;Lcom/digikala/dms/view/QuestionCustomViewItem;)V
    .registers 5
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 485
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$7;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$7;->val$confirmTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object p3, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$7;->val$viewItems:Ljava/util/List;

    iput-object p4, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$7;->val$viewItem:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 488
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$7;->val$confirmTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$7;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$7;->val$viewItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$700(Lcom/digikala/dms/view/fragment/SignatureFragment;Ljava/util/List;)V

    .line 490
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$7;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$7;->val$viewItem:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$800(Lcom/digikala/dms/view/fragment/SignatureFragment;Lcom/digikala/dms/view/QuestionCustomViewItem;)V

    .line 491
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SignatureFragment.AnonymousClass8 (com.digikala.dms.view.fragment.SignatureFragment$8)
.class Lcom/digikala/dms/view/fragment/SignatureFragment$8;
.super Ljava/lang/Object;
.source "SignatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SignatureFragment;->questionDialogBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SignatureFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/SignatureFragment;

    .line 553
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$8;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 556
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$8;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$200(Lcom/digikala/dms/view/fragment/SignatureFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->show()V

    .line 561
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$8;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$300(Lcom/digikala/dms/view/fragment/SignatureFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 562
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$8;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$400(Lcom/digikala/dms/view/fragment/SignatureFragment;)V

    goto :goto_22

    .line 564
    :cond_1d
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$8;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$500(Lcom/digikala/dms/view/fragment/SignatureFragment;)V

    .line 566
    :goto_22
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SignatureFragment$8;->this$0:Lcom/digikala/dms/view/fragment/SignatureFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SignatureFragment;->access$900(Lcom/digikala/dms/view/fragment/SignatureFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 568
    return-void
.end method
