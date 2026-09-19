###### Class com.digikala.dms.view.activity.ShipmentActivity (com.digikala.dms.view.activity.ShipmentActivity)
.class public Lcom/digikala/dms/view/activity/ShipmentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShipmentActivity.java"

# interfaces
.implements Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;
.implements Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;
.implements Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;
.implements Lcom/digikala/dms/view/fragment/PaymentMethodFragment$OnButtonPaymentMethodClickListener;


# static fields
.field public static final BASKET_ITEMS:Ljava/lang/String; = "basket_items"

.field public static final ORDER_ID:Ljava/lang/String; = "order_id"

.field private static final TAG_REQUEST:Ljava/lang/String;


# instance fields
.field private finalPayableAmount:Ljava/lang/Long;

.field private isStateDialogOpen:Z

.field private isZero:Z

.field private mOrderId:Ljava/lang/String;

.field private mRealm:Lio/realm/Realm;

.field private mShipment:Lcom/digikala/dms/model/domain/Shipment;

.field private progressBar:Landroid/view/View;

.field private returnedProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation
.end field

.field private shipmentDetailsFragment:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/activity/ShipmentActivity;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->isZero:Z

    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/activity/ShipmentActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 50
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->partialDeliverShipment()V

    return-void
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/activity/ShipmentActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 50
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->rejectShipment()V

    return-void
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/activity/ShipmentActivity;)Lio/realm/Realm;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 50
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mRealm:Lio/realm/Realm;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/view/activity/ShipmentActivity;)Lcom/digikala/dms/model/domain/Shipment;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 50
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/view/activity/ShipmentActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 50
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method private addFragment()V
    .registers 8

    .line 504
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentStatus()I

    move-result v0

    const v1, 0x7f0900ba

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_37

    iget-boolean v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->isZero:Z

    if-nez v0, :cond_37

    .line 506
    const-string v0, "partial"

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/PaymentMethodFragment;->newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/PaymentMethodFragment;

    move-result-object v0

    .line 507
    .local v0, "paymentMethodFragment":Lcom/digikala/dms/view/fragment/PaymentMethodFragment;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "backStateName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 510
    .local v4, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v4, v3, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v5

    .line 512
    .local v5, "fragmentPopped":Z
    if-nez v5, :cond_36

    .line 513
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 514
    .local v6, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v6, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 515
    invoke-virtual {v6, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 516
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 520
    .end local v0    # "paymentMethodFragment":Lcom/digikala/dms/view/fragment/PaymentMethodFragment;
    .end local v3    # "backStateName":Ljava/lang/String;
    .end local v4    # "manager":Landroid/support/v4/app/FragmentManager;
    .end local v5    # "fragmentPopped":Z
    .end local v6    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_36
    goto :goto_64

    .line 521
    :cond_37
    const-string v0, "partial"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/UserInformationFragment;

    move-result-object v0

    .line 522
    .local v0, "userInformationFragment":Lcom/digikala/dms/view/fragment/UserInformationFragment;
    invoke-direct {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 525
    .restart local v3    # "backStateName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 526
    .restart local v4    # "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v4, v3, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v5

    .line 528
    .restart local v5    # "fragmentPopped":Z
    if-nez v5, :cond_64

    .line 529
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 530
    .restart local v6    # "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 531
    invoke-virtual {v6, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 532
    invoke-virtual {v6, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 533
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 536
    .end local v0    # "userInformationFragment":Lcom/digikala/dms/view/fragment/UserInformationFragment;
    .end local v3    # "backStateName":Ljava/lang/String;
    .end local v4    # "manager":Landroid/support/v4/app/FragmentManager;
    .end local v5    # "fragmentPopped":Z
    .end local v6    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_64
    :goto_64
    iput-boolean v2, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->isZero:Z

    .line 538
    return-void
.end method

.method private cancelShipment()V
    .registers 4

    .line 359
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/UnprocessedReasonFragment;->newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/UnprocessedReasonFragment;

    move-result-object v0

    .line 360
    .local v0, "unprocessedReasonFragment":Lcom/digikala/dms/view/fragment/UnprocessedReasonFragment;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "\u062f\u0644\u06cc\u0644 \u0647\u0627"

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/view/fragment/UnprocessedReasonFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private deliverShipment()V
    .registers 7

    .line 214
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 215
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    .line 218
    .local v0, "mBasketItem":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lio/realm/RealmList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 219
    iget-object v1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    iget-object v1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getRemainingAmount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_32

    .line 220
    const-string v1, "complete"

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/PaymentMethodFragment;->newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/PaymentMethodFragment;

    move-result-object v1

    .line 221
    .local v1, "paymentMethodFragment":Lcom/digikala/dms/view/fragment/PaymentMethodFragment;
    invoke-direct {p0, v1}, Lcom/digikala/dms/view/activity/ShipmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 223
    .end local v1    # "paymentMethodFragment":Lcom/digikala/dms/view/fragment/PaymentMethodFragment;
    goto :goto_5b

    .line 224
    :cond_32
    const-string v1, "complete"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/UserInformationFragment;

    move-result-object v1

    .line 225
    .local v1, "userInformationFragment":Lcom/digikala/dms/view/fragment/UserInformationFragment;
    invoke-direct {p0, v1}, Lcom/digikala/dms/view/activity/ShipmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 226
    .end local v1    # "userInformationFragment":Lcom/digikala/dms/view/fragment/UserInformationFragment;
    goto :goto_5b

    .line 267
    :cond_3e
    const v2, 0x7f100059

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_5b

    .line 270
    .end local v0    # "mBasketItem":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    :cond_4d
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :goto_5b
    return-void
.end method

.method private missCallShipment()V
    .registers 15

    .line 281
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v1, 0x0

    if-eqz v0, :cond_c8

    .line 282
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "time":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->getLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v2

    .line 286
    .local v2, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    const-string v3, "latLongmiss"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v3, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mRealm:Lio/realm/Realm;

    invoke-virtual {v3}, Lio/realm/Realm;->beginTransaction()V

    .line 289
    iget-object v3, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mRealm:Lio/realm/Realm;

    const-class v4, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v3, v4}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/LatLong;

    .line 290
    .local v3, "location":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v2, :cond_47

    .line 291
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/digikala/dms/model/domain/LatLong;->setLatitude(D)V

    .line 292
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/digikala/dms/model/domain/LatLong;->setLongitude(D)V

    .line 294
    :cond_47
    iget-object v4, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/digikala/dms/model/domain/Shipment;->setStatus(I)V

    .line 295
    iget-object v4, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4, v0}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmTime(Ljava/lang/String;)V

    .line 296
    iget-object v4, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4, v3}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 297
    iget-object v4, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4, v1}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 298
    iget-object v4, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/digikala/dms/model/domain/Shipment;->setSignature(Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mRealm:Lio/realm/Realm;

    invoke-virtual {v4}, Lio/realm/Realm;->commitTransaction()V

    .line 301
    iget-object v4, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/digikala/dms/util/Util;->saveLatestShipmentIDToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    const-string v4, ""

    .line 305
    .local v4, "timeScope":Ljava/lang/String;
    :try_start_74
    iget-object v5, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "dateTime":[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v5, v6
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_83} :catch_85

    move-object v4, v6

    .line 309
    .end local v5    # "dateTime":[Ljava/lang/String;
    goto :goto_89

    .line 307
    :catch_85
    move-exception v5

    .line 308
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    .end local v4    # "timeScope":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .local v11, "timeScope":Ljava/lang/String;
    :goto_89
    move-object v11, v4

    const-string v4, "Missed Call"

    const-string v5, "paymentType"

    const/4 v6, -0x1

    invoke-static {v4, v11, v2, v5, v6}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logCloseShipment(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;I)V

    .line 317
    const-string v4, "Missed Call"

    invoke-static {v4, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->closeShipmentEvent(Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;)V

    .line 318
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/digikala/dms/util/Util;->getGpsStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 319
    .local v12, "gpsStatus":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 320
    .local v13, "batchId":Ljava/lang/String;
    if-eqz v13, :cond_be

    .line 321
    iget-object v5, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    sget-object v8, Lcom/digikala/dms/view/activity/ShipmentActivity;->TAG_REQUEST:Ljava/lang/String;

    new-instance v9, Lcom/digikala/dms/view/activity/ShipmentActivity$5;

    invoke-direct {v9, p0}, Lcom/digikala/dms/view/activity/ShipmentActivity$5;-><init>(Lcom/digikala/dms/view/activity/ShipmentActivity;)V

    const/4 v10, 0x0

    move-object v4, v13

    move-object v6, v3

    move-object v7, v12

    invoke-static/range {v4 .. v10}, Lcom/digikala/dms/helper/webservice/WebApi;->makeMissedCallRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    goto :goto_c7

    .line 346
    :cond_be
    const-string v4, "packId is Null!!"

    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 348
    .end local v0    # "time":Ljava/lang/String;
    .end local v2    # "latLong":Lcom/digikala/dms/model/domain/LatLong;
    .end local v3    # "location":Lcom/digikala/dms/model/domain/LatLong;
    .end local v11    # "timeScope":Ljava/lang/String;
    .end local v12    # "gpsStatus":Ljava/lang/String;
    .end local v13    # "batchId":Ljava/lang/String;
    :goto_c7
    goto :goto_d6

    .line 349
    :cond_c8
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 351
    :goto_d6
    return-void
.end method

.method private partialDeliverShipment()V
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    move-result-object v0

    .line 277
    .local v0, "deliverFragment":Lcom/digikala/dms/view/fragment/PartialDeliverFragment;
    invoke-direct {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 278
    return-void
.end method

.method private rejectShipment()V
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    move-result-object v0

    .line 355
    .local v0, "rejectReasonFragment":Lcom/digikala/dms/view/fragment/RejectReasonFragment;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "\u062f\u0644\u06cc\u0644 \u0647\u0627"

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;)V
    .registers 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "backStateName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 132
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v2

    .line 134
    .local v2, "fragmentPopped":Z
    if-nez v2, :cond_23

    .line 135
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 136
    .local v3, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v4, 0x7f0900ba

    invoke-virtual {v3, v4, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 138
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 140
    .end local v3    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_23
    return-void
.end method


# virtual methods
.method public getReturnedProducts()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->returnedProducts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getpayableAmount()Ljava/lang/Long;
    .registers 2

    .line 545
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->finalPayableAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public onApplyButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "cardTypeId"    # Ljava/lang/String;
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "PaymentMethod"    # Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    .line 551
    iget-object v2, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    move-result-object v0

    .line 552
    .local v0, "sellerVerificationFragment":Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    invoke-direct {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 553
    .end local v0    # "sellerVerificationFragment":Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    goto :goto_3b

    .line 554
    :cond_18
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->finalPayableAmount:Ljava/lang/Long;

    if-eqz v0, :cond_2d

    .line 555
    iget-object v1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    iget-object v7, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->finalPayableAmount:Ljava/lang/Long;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    move-result-object v0

    .line 556
    .restart local v0    # "sellerVerificationFragment":Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    invoke-direct {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 557
    .end local v0    # "sellerVerificationFragment":Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    goto :goto_3b

    .line 558
    :cond_2d
    iget-object v1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/digikala/dms/view/fragment/SellerVerificationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/SellerVerificationFragment;

    move-result-object v0

    .line 559
    .restart local v0    # "sellerVerificationFragment":Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    invoke-direct {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 563
    .end local v0    # "sellerVerificationFragment":Lcom/digikala/dms/view/fragment/SellerVerificationFragment;
    :goto_3b
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 106
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->shipmentDetailsFragment:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->isStateDialogOpen:Z

    if-eqz v0, :cond_19

    .line 107
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->shipmentDetailsFragment:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->collapseStateDialog()V

    goto :goto_20

    .line 109
    :cond_19
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->finish()V

    goto :goto_20

    .line 112
    :cond_1d
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 114
    :goto_20
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    .line 77
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mRealm:Lio/realm/Realm;

    .line 78
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mRealm:Lio/realm/Realm;

    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 79
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "orderId"

    iget-object v2, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    iput-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    .line 83
    if-eqz p1, :cond_36

    .line 84
    return-void

    .line 87
    :cond_36
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mOrderId:Ljava/lang/String;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->shipmentDetailsFragment:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 88
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->shipmentDetailsFragment:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-direct {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/digikala/dms/core/LocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "locationIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    return-void
.end method

.method public onPartialButtonClick(Ljava/util/ArrayList;Ljava/lang/Long;)V
    .registers 6
    .param p2, "payableAmount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 439
    .local p1, "returnedProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SerialItems;>;"
    if-eqz p1, :cond_54

    .line 441
    iput-object p1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->returnedProducts:Ljava/util/ArrayList;

    .line 442
    iput-object p2, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->finalPayableAmount:Ljava/lang/Long;

    .line 444
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 445
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_54

    .line 450
    :cond_20
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 452
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    .line 453
    .local v0, "mBasketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lio/realm/RealmList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 455
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->addFragment()V

    goto :goto_54

    .line 492
    :cond_37
    const v2, 0x7f100059

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_54

    .line 495
    .end local v0    # "mBasketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    :cond_46
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 499
    :cond_54
    :goto_54
    return-void
.end method

.method public onPaymentMethodButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "PaymentMethod"    # Ljava/lang/String;

    .line 567
    invoke-static {p1, p2}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/UserInformationFragment;

    move-result-object v0

    .line 568
    .local v0, "userInformationFragment":Lcom/digikala/dms/view/fragment/UserInformationFragment;
    invoke-direct {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 569
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 118
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 119
    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->progressBar:Landroid/view/View;

    .line 120
    return-void
.end method

.method public onStateButtonClick(I)V
    .registers 9
    .param p1, "id"    # I

    .line 149
    const v0, 0x7f090042

    const v1, 0x7f090041

    const v2, 0x7f0c002a

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_c0

    goto/16 :goto_bf

    .line 180
    :sswitch_f
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRefundable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Shipment;->getAutoRefundable()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v4, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getAutoRefundable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 182
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 183
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 185
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/digikala/dms/view/activity/ShipmentActivity$3;

    invoke-direct {v2, p0, v4}, Lcom/digikala/dms/view/activity/ShipmentActivity$3;-><init>(Lcom/digikala/dms/view/activity/ShipmentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/digikala/dms/view/activity/ShipmentActivity$4;

    invoke-direct {v1, p0, v4}, Lcom/digikala/dms/view/activity/ShipmentActivity$4;-><init>(Lcom/digikala/dms/view/activity/ShipmentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 199
    return-void

    .line 201
    .end local v4    # "dialog":Landroid/app/Dialog;
    :cond_6b
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->rejectShipment()V

    .line 202
    goto :goto_bf

    .line 154
    :sswitch_6f
    iget-object v4, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getAutoRefundable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 155
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 156
    .restart local v4    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 158
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/digikala/dms/view/activity/ShipmentActivity$1;

    invoke-direct {v2, p0, v4}, Lcom/digikala/dms/view/activity/ShipmentActivity$1;-><init>(Lcom/digikala/dms/view/activity/ShipmentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/digikala/dms/view/activity/ShipmentActivity$2;

    invoke-direct {v1, p0, v4}, Lcom/digikala/dms/view/activity/ShipmentActivity$2;-><init>(Lcom/digikala/dms/view/activity/ShipmentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 172
    return-void

    .line 174
    .end local v4    # "dialog":Landroid/app/Dialog;
    :cond_af
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->partialDeliverShipment()V

    .line 175
    goto :goto_bf

    .line 177
    :sswitch_b3
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->missCallShipment()V

    .line 178
    goto :goto_bf

    .line 204
    :sswitch_b7
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->cancelShipment()V

    goto :goto_bf

    .line 151
    :sswitch_bb
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->deliverShipment()V

    .line 152
    nop

    .line 207
    :goto_bf
    return-void

    :sswitch_data_c0
    .sparse-switch
        0x7f0900bb -> :sswitch_bb
        0x7f0900be -> :sswitch_b7
        0x7f0900c1 -> :sswitch_b3
        0x7f0900c4 -> :sswitch_6f
        0x7f0900c7 -> :sswitch_f
    .end sparse-switch
.end method

.method public setStateDialogOpen(Z)V
    .registers 2
    .param p1, "stateDialogOpen"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->isStateDialogOpen:Z

    .line 96
    return-void
.end method

.method public setToZero(Z)V
    .registers 2
    .param p1, "isZero"    # Z

    .line 572
    iput-boolean p1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity;->isZero:Z

    .line 573
    return-void
.end method

###### Class com.digikala.dms.view.activity.ShipmentActivity.AnonymousClass1 (com.digikala.dms.view.activity.ShipmentActivity$1)
.class Lcom/digikala/dms/view/activity/ShipmentActivity$1;
.super Ljava/lang/Object;
.source "ShipmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/ShipmentActivity;->onStateButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/ShipmentActivity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 158
    iput-object p1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$1;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    return-void
.end method

###### Class com.digikala.dms.view.activity.ShipmentActivity.AnonymousClass2 (com.digikala.dms.view.activity.ShipmentActivity$2)
.class Lcom/digikala/dms/view/activity/ShipmentActivity$2;
.super Ljava/lang/Object;
.source "ShipmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/ShipmentActivity;->onStateButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/ShipmentActivity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 164
    iput-object p1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$2;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 168
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$2;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->access$000(Lcom/digikala/dms/view/activity/ShipmentActivity;)V

    .line 169
    return-void
.end method

###### Class com.digikala.dms.view.activity.ShipmentActivity.AnonymousClass3 (com.digikala.dms.view.activity.ShipmentActivity$3)
.class Lcom/digikala/dms/view/activity/ShipmentActivity$3;
.super Ljava/lang/Object;
.source "ShipmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/ShipmentActivity;->onStateButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/ShipmentActivity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 185
    iput-object p1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$3;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 189
    return-void
.end method

###### Class com.digikala.dms.view.activity.ShipmentActivity.AnonymousClass4 (com.digikala.dms.view.activity.ShipmentActivity$4)
.class Lcom/digikala/dms/view/activity/ShipmentActivity$4;
.super Ljava/lang/Object;
.source "ShipmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/ShipmentActivity;->onStateButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/ShipmentActivity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 191
    iput-object p1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$4;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 195
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$4;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->access$100(Lcom/digikala/dms/view/activity/ShipmentActivity;)V

    .line 196
    return-void
.end method

###### Class com.digikala.dms.view.activity.ShipmentActivity.AnonymousClass5 (com.digikala.dms.view.activity.ShipmentActivity$5)
.class Lcom/digikala/dms/view/activity/ShipmentActivity$5;
.super Ljava/lang/Object;
.source "ShipmentActivity.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/ShipmentActivity;->missCallShipment()V
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
.field final synthetic this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/ShipmentActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/ShipmentActivity;

    .line 321
    iput-object p1, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 338
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 341
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->access$400(Lcom/digikala/dms/view/activity/ShipmentActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->finish()V

    .line 343
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/Boolean;

    .line 324
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 328
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->access$200(Lcom/digikala/dms/view/activity/ShipmentActivity;)Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 329
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->access$300(Lcom/digikala/dms/view/activity/ShipmentActivity;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 330
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->access$200(Lcom/digikala/dms/view/activity/ShipmentActivity;)Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 331
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->access$400(Lcom/digikala/dms/view/activity/ShipmentActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->this$0:Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->finish()V

    .line 334
    :cond_44
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 321
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/ShipmentActivity$5;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
