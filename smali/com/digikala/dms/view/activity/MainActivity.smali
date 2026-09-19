###### Class com.digikala.dms.view.activity.MainActivity (com.digikala.dms.view.activity.MainActivity)
.class public Lcom/digikala/dms/view/activity/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INDEX_INIT_TAB:I = 0x2

.field private static final TAG_DEBUG:Ljava/lang/String;

.field private static final TAG_REQUEST:Ljava/lang/String;


# instance fields
.field private GpsLocationReceiver:Landroid/content/BroadcastReceiver;

.field private darkLayout:Landroid/view/View;

.field gps_enabled:Z

.field private isPopupOpen:Z

.field private mAvatarCircleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

.field private mDeliveryIdTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private mDeliveryNameTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private mFinalizeTripFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field private mFinalizingTripProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

.field private mFullyDeliveredShipments:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftShipments:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

.field private mMainPagesAdapter:Lcom/digikala/dms/adapter/MainPagesAdapter;

.field private mMainPagesTabLayout:Landroid/support/design/widget/TabLayout;

.field private mMainPagesViewPager:Landroid/support/v4/view/ViewPager;

.field private mMissedCallShipments:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenShipments:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private mPartiallyDeliveredShipments:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnedShipments:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private popupWindow:Landroid/widget/PopupWindow;

.field private ratingBar:Landroid/widget/RatingBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    const-class v0, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/activity/MainActivity;->TAG_DEBUG:Ljava/lang/String;

    .line 74
    const-class v0, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/activity/MainActivity;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->isPopupOpen:Z

    .line 104
    iput-boolean v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->gps_enabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/digikala/dms/view/activity/MainActivity;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .line 70
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/widget/RatingBar;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->ratingBar:Landroid/widget/RatingBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFinalizeTripFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/activity/MainActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 70
    iget-boolean v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->isPopupOpen:Z

    return v0
.end method

.method static synthetic access$202(Lcom/digikala/dms/view/activity/MainActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/digikala/dms/view/activity/MainActivity;->isPopupOpen:Z

    return p1
.end method

.method static synthetic access$300(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->darkLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 70
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/MainActivity;->showPopupWindows()V

    return-void
.end method

.method static synthetic access$600(Lcom/digikala/dms/view/activity/MainActivity;)Lde/hdodenhof/circleimageview/CircleImageView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mAvatarCircleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .line 70
    sget-object v0, Lcom/digikala/dms/view/activity/MainActivity;->TAG_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .line 70
    sget-object v0, Lcom/digikala/dms/view/activity/MainActivity;->TAG_REQUEST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFinalizingTripProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    return-object v0
.end method

.method private createActionBarMenu()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    new-instance v1, Lcom/digikala/dms/view/activity/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/activity/MainActivity$5;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void
.end method

.method private finalizeTrip()V
    .registers 14

    .line 460
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v7

    .line 461
    .local v7, "realm":Lio/realm/Realm;
    const-class v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "isLoggedIn"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v8

    .line 462
    .local v8, "loggedInDeliveries":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v8}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-ne v0, v2, :cond_78

    .line 463
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v9

    .line 464
    .local v9, "deliveryId":Ljava/lang/String;
    invoke-virtual {v8, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Batch;->getId()Ljava/lang/String;

    move-result-object v10

    .line 465
    .local v10, "batchId":Ljava/lang/String;
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v7, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v2, "tupleIsSyncedWithServer"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v11

    .line 466
    .local v11, "notSyncedShipments":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Shipment;>;"
    invoke-virtual {v11}, Lio/realm/RealmResults;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 468
    sget-object v0, Lcom/digikala/dms/view/activity/MainActivity;->TAG_REQUEST:Ljava/lang/String;

    new-instance v1, Lcom/digikala/dms/view/activity/MainActivity$10;

    invoke-direct {v1, p0, v7, v8, v9}, Lcom/digikala/dms/view/activity/MainActivity$10;-><init>(Lcom/digikala/dms/view/activity/MainActivity;Lio/realm/Realm;Lio/realm/RealmResults;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v10, v0, v1, v2}, Lcom/digikala/dms/helper/webservice/WebApi;->makeFinalizeBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    goto :goto_77

    .line 593
    :cond_63
    new-instance v12, Lcom/digikala/dms/view/activity/MainActivity$11;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move-object v3, v7

    move-object v4, v10

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/digikala/dms/view/activity/MainActivity$11;-><init>(Lcom/digikala/dms/view/activity/MainActivity;Lio/realm/RealmResults;Lio/realm/Realm;Ljava/lang/String;Lio/realm/RealmResults;Ljava/lang/String;)V

    new-instance v0, Lcom/digikala/dms/view/activity/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/activity/MainActivity$12;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    invoke-static {v9, v10, v11, v12, v0}, Lcom/digikala/dms/helper/webservice/WebApi;->makeSyncShipmentsWithBackOfficeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 788
    .end local v11    # "notSyncedShipments":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Shipment;>;"
    :goto_77
    goto :goto_92

    .line 789
    .end local v9    # "deliveryId":Ljava/lang/String;
    .end local v10    # "batchId":Ljava/lang/String;
    :cond_78
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFinalizingTripProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 790
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFinalizeTripFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 791
    sget-object v0, Lcom/digikala/dms/view/activity/MainActivity;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "There is no exactly one logged-in delivery!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v0, "There is no exactly one logged-in delivery!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 795
    :goto_92
    return-void
.end method

.method private initTabLayout()V
    .registers 7

    .line 343
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 345
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0087

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    .line 346
    .local v0, "mapTabView":Lcom/digikala/dms/view/custom/XeiTextView;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/view/custom/XeiTextView;

    .line 347
    .local v3, "openShipmentsTabView":Lcom/digikala/dms/view/custom/XeiTextView;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    .line 349
    .local v1, "closeShipmentsTabView":Lcom/digikala/dms/view/custom/XeiTextView;
    const v2, 0x7f1000d3

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const v2, 0x7f1000d4

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const v2, 0x7f1000d2

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const/4 v2, 0x0

    const v4, 0x7f08007c

    invoke-virtual {v0, v2, v4, v2, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 354
    const v4, 0x7f08007d

    invoke-virtual {v3, v2, v4, v2, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 355
    const v4, 0x7f08007b

    invoke-virtual {v1, v2, v4, v2, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 357
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/digikala/dms/view/custom/XeiTextView;->setSelected(Z)V

    .line 359
    iget-object v5, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 360
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 361
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesTabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 362
    return-void
.end method

.method private isGoogleServicesUpdate()Z
    .registers 4

    .line 829
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 830
    .local v0, "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 831
    .local v1, "resultCode":I
    if-nez v1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

.method private isNetworkAvailable()Z
    .registers 4

    .line 879
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 880
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_18

    .line 881
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 882
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_19

    if-eqz v2, :cond_18

    .line 883
    const/4 v2, 0x1

    return v2

    .line 888
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_18
    goto :goto_1d

    .line 886
    :catch_19
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 889
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method private loadDeliveryProfile()V
    .registers 8

    .line 381
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 382
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "isLoggedIn"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 383
    .local v1, "loggedInDeliveries":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_76

    .line 384
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    .line 385
    .local v2, "loggedInCourier":Lcom/digikala/dms/model/domain/Courier;
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity;->mDeliveryNameTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    const-string v3, "0"

    .line 387
    .local v3, "userName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getUserName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 388
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getUserName()Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    .line 389
    :cond_40
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 390
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 394
    :cond_4a
    :goto_4a
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity;->mDeliveryIdTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    :try_start_57
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_57 .. :try_end_5f} :catch_60

    .line 400
    .local v4, "avatarUrl":Ljava/lang/String;
    goto :goto_63

    .line 398
    .end local v4    # "avatarUrl":Ljava/lang/String;
    :catch_60
    move-exception v4

    .line 399
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v4, ""

    .line 401
    .local v4, "avatarUrl":Ljava/lang/String;
    :goto_63
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_75

    .line 402
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getAvatarUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/digikala/dms/view/activity/MainActivity$9;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/activity/MainActivity$9;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    invoke-static {v5, v6}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->downloadAndMemoryCacheBitmap(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 424
    .end local v2    # "loggedInCourier":Lcom/digikala/dms/model/domain/Courier;
    .end local v3    # "userName":Ljava/lang/String;
    .end local v4    # "avatarUrl":Ljava/lang/String;
    :cond_75
    goto :goto_7d

    .line 425
    :cond_76
    sget-object v2, Lcom/digikala/dms/view/activity/MainActivity;->TAG_DEBUG:Ljava/lang/String;

    const-string v3, "There exist more than one logged in delivery!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_7d
    return-void
.end method

.method private loadShipmentsFromDatabase()V
    .registers 11

    .line 430
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 431
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "isLoggedIn"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 432
    .local v1, "loggedInDeliveries":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_fa

    .line 434
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Batch;->getId()Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "bachId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "deliveryId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Courier;->getDistributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/DistributionCenter;->getId()I

    move-result v6

    .line 437
    .local v6, "dcId":I
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, "currentTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/digikala/dms/util/Util;->setBachId(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    const-string v8, "setupTracker"

    const-string v9, "loadShipmentsFromDatabase and set tracker"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5, v4, v7}, Lcom/digikala/dms/view/activity/MainActivity;->startTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v2

    .line 445
    .local v2, "allShipments":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    invoke-virtual {v2}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v8

    const-string v9, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v3

    iput-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity;->mOpenShipments:Lio/realm/RealmResults;

    .line 446
    invoke-virtual {v2}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v3

    const-string v8, "status"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v3

    iput-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFullyDeliveredShipments:Lio/realm/RealmResults;

    .line 447
    invoke-virtual {v2}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v3

    const-string v8, "status"

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v3

    iput-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity;->mPartiallyDeliveredShipments:Lio/realm/RealmResults;

    .line 448
    invoke-virtual {v2}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v3

    const-string v8, "status"

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v3

    iput-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity;->mReturnedShipments:Lio/realm/RealmResults;

    .line 449
    invoke-virtual {v2}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v3

    const-string v8, "status"

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v3

    iput-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMissedCallShipments:Lio/realm/RealmResults;

    .line 450
    invoke-virtual {v2}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v3

    const-string v8, "status"

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v3

    iput-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLeftShipments:Lio/realm/RealmResults;

    .line 451
    .end local v2    # "allShipments":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    .end local v4    # "bachId":Ljava/lang/String;
    .end local v5    # "deliveryId":Ljava/lang/String;
    .end local v6    # "dcId":I
    .end local v7    # "currentTime":Ljava/lang/String;
    goto :goto_101

    .line 452
    :cond_fa
    sget-object v2, Lcom/digikala/dms/view/activity/MainActivity;->TAG_DEBUG:Ljava/lang/String;

    const-string v3, "The number of logged-in deliveries must be exactly one"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_101
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 455
    return-void
.end method

.method private showPopupWindows()V
    .registers 11

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->isPopupOpen:Z

    .line 277
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    .line 278
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 280
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c007d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 282
    .local v2, "popupView":Landroid/view/View;
    const v3, 0x7f09018b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 283
    .local v3, "settingLayout":Landroid/widget/LinearLayout;
    const v4, 0x7f09010a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 284
    .local v4, "logoutLayout":Landroid/widget/LinearLayout;
    const v5, 0x7f090174

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 286
    .local v5, "mScanLayout":Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    new-instance v6, Lcom/digikala/dms/view/activity/MainActivity$6;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/activity/MainActivity$6;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    new-instance v6, Lcom/digikala/dms/view/activity/MainActivity$7;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/activity/MainActivity$7;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-direct {v6, v2, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/digikala/dms/view/activity/MainActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 307
    iget-object v6, p0, Lcom/digikala/dms/view/activity/MainActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 308
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 310
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    iget-object v8, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v8}, Lcom/digikala/dms/view/custom/XeiTextView;->getWidth()I

    move-result v8

    neg-int v8, v8

    iget-object v9, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v9}, Lcom/digikala/dms/view/custom/XeiTextView;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 312
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->darkLayout:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->darkLayout:Landroid/view/View;

    new-instance v6, Lcom/digikala/dms/view/activity/MainActivity$8;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/activity/MainActivity$8;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-void
.end method

.method private startTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "dcId"    # Ljava/lang/String;
    .param p2, "deliveryId"    # Ljava/lang/String;
    .param p3, "packId"    # Ljava/lang/String;
    .param p4, "currentTimeSystem"    # Ljava/lang/String;

    .line 822
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getCourierTrackingType(Landroid/content/Context;)Lcom/digikala/dms/model/design/TrackingType;

    move-result-object v0

    .line 823
    .local v0, "trackingType":Lcom/digikala/dms/model/design/TrackingType;
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/MainActivity;->isGoogleServicesUpdate()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/digikala/dms/model/design/TrackingType;->getHasTrack()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 826
    :cond_15
    return-void
.end method


# virtual methods
.method public getFullyDeliveredShipments()Lio/realm/RealmResults;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFullyDeliveredShipments:Lio/realm/RealmResults;

    return-object v0
.end method

.method public getLeftShipments()Lio/realm/RealmResults;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLeftShipments:Lio/realm/RealmResults;

    return-object v0
.end method

.method public getMissedCallShipments()Lio/realm/RealmResults;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMissedCallShipments:Lio/realm/RealmResults;

    return-object v0
.end method

.method public getOpenShipments()Lio/realm/RealmResults;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mOpenShipments:Lio/realm/RealmResults;

    return-object v0
.end method

.method public getPartiallyDeliveredShipments()Lio/realm/RealmResults;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mPartiallyDeliveredShipments:Lio/realm/RealmResults;

    return-object v0
.end method

.method public getReturnedShipments()Lio/realm/RealmResults;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->mReturnedShipments:Lio/realm/RealmResults;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09001e

    if-eq v0, v1, :cond_11

    .line 376
    sget-object v0, Lcom/digikala/dms/view/activity/MainActivity;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "Clicked on the unregistered view!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 369
    :cond_11
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/MainActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 370
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/MainActivity;->finalizeTrip()V

    goto :goto_1f

    .line 372
    :cond_1b
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->showNetworkAlertAlert()V

    .line 374
    nop

    .line 378
    :goto_1f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 107
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/MainActivity;->setContentView(I)V

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/digikala/dms/core/LocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "locationIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/digikala/dms/core/ForegroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "userId"

    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_36

    .line 121
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4e

    .line 123
    :cond_36
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/digikala/dms/core/GpsService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "userId"

    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_4e
    nop

    .line 130
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 132
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->gps_enabled:Z

    .line 134
    iget-boolean v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->gps_enabled:Z

    if-nez v2, :cond_83

    .line 135
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/core/NoGpsAccessActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v2, "pushIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    .end local v2    # "pushIntent":Landroid/content/Intent;
    goto :goto_90

    .line 139
    :cond_83
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 140
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/core/NoGpsAccessActivity;->finish()V

    .line 144
    :cond_90
    :goto_90
    new-instance v2, Lcom/digikala/dms/view/activity/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/activity/MainActivity$1;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->GpsLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->GpsLocationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/digikala/dms/view/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 185
    const v2, 0x7f09014f

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->ratingBar:Landroid/widget/RatingBar;

    .line 186
    const v2, 0x7f090032

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mAvatarCircleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 187
    const v2, 0x7f090036

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mDeliveryNameTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 188
    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mDeliveryIdTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 189
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->ratingBar:Landroid/widget/RatingBar;

    new-instance v3, Lcom/digikala/dms/view/activity/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/activity/MainActivity$2;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    const-string v2, ""

    new-instance v3, Lcom/digikala/dms/view/activity/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/activity/MainActivity$3;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    new-instance v4, Lcom/digikala/dms/view/activity/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/activity/MainActivity$4;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    invoke-static {v2, v3, v4}, Lcom/digikala/dms/helper/webservice/WebApi;->getRateRequest(Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 230
    const v2, 0x7f090034

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesTabLayout:Landroid/support/design/widget/TabLayout;

    .line 231
    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesViewPager:Landroid/support/v4/view/ViewPager;

    .line 232
    const v2, 0x7f09001e

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFinalizeTripFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 233
    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/jorgecastilloprz/FABProgressCircle;

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFinalizingTripProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    .line 235
    new-instance v2, Lcom/digikala/dms/adapter/MainPagesAdapter;

    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/digikala/dms/adapter/MainPagesAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesAdapter:Lcom/digikala/dms/adapter/MainPagesAdapter;

    .line 236
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesAdapter:Lcom/digikala/dms/adapter/MainPagesAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 237
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mMainPagesViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 238
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/MainActivity;->initTabLayout()V

    .line 240
    const v2, 0x7f090080

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->darkLayout:Landroid/view/View;

    .line 241
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFinalizeTripFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/MainActivity;->loadDeliveryProfile()V

    .line 244
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/MainActivity;->createActionBarMenu()V

    .line 246
    invoke-static {p0}, Lcom/digikala/dms/util/Util;->getServerDateTimeResponse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->isTimeValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 247
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/MainActivity;->showTimeAlert()V

    .line 249
    :cond_15f
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/digikala/dms/util/Util;->setServerDateTimeResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 271
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 272
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity;->GpsLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 325
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/digikala/dms/core/LocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 328
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/MainActivity;->loadShipmentsFromDatabase()V

    .line 329
    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity;->mOpenShipments:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 330
    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity;->mFinalizeTripFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 334
    :cond_1e
    return-void
.end method

.method showNetworkAlertAlert()V
    .registers 3

    .line 857
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 858
    const v1, 0x7f10008a

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 859
    const v1, 0x7f10008d

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 860
    const v1, 0x7f1000bb

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/activity/MainActivity$16;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/activity/MainActivity$16;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    .line 861
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/activity/MainActivity$15;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/activity/MainActivity$15;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    .line 868
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 875
    return-void
.end method

.method showTimeAlert()V
    .registers 3

    .line 835
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 836
    const v1, 0x7f1000cf

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 837
    const v1, 0x7f100062

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 838
    const v1, 0x7f1000bb

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/activity/MainActivity$14;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/activity/MainActivity$14;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    .line 839
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/activity/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/activity/MainActivity$13;-><init>(Lcom/digikala/dms/view/activity/MainActivity;)V

    .line 846
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 854
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass1 (com.digikala.dms.view.activity.MainActivity$1)
.class Lcom/digikala/dms/view/activity/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 144
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$1;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 147
    if-eqz p2, :cond_54

    if-eqz p1, :cond_54

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 152
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$1;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    .line 153
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 152
    invoke-static {v0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->access$002(Lcom/digikala/dms/view/activity/MainActivity;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 155
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$1;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity$1;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/MainActivity;->access$000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/digikala/dms/view/activity/MainActivity;->gps_enabled:Z

    .line 157
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$1;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    iget-boolean v0, v0, Lcom/digikala/dms/view/activity/MainActivity;->gps_enabled:Z

    if-nez v0, :cond_47

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/digikala/dms/core/NoGpsAccessActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "pushIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 161
    .end local v0    # "pushIntent":Landroid/content/Intent;
    goto :goto_54

    .line 162
    :cond_47
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 163
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/core/NoGpsAccessActivity;->finish()V

    .line 174
    :cond_54
    :goto_54
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass10 (com.digikala.dms.view.activity.MainActivity$10)
.class Lcom/digikala/dms/view/activity/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->finalizeTrip()V
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
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;

.field final synthetic val$deliveryId:Ljava/lang/String;

.field final synthetic val$loggedInDeliveries:Lio/realm/RealmResults;

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;Lio/realm/Realm;Lio/realm/RealmResults;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 468
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$loggedInDeliveries:Lio/realm/RealmResults;

    iput-object p4, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$deliveryId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 576
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 582
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 584
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot finalize the batch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 588
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 9
    .param p1, "successfullyFinalized"    # Ljava/lang/Boolean;

    .line 472
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 476
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$loggedInDeliveries:Lio/realm/RealmResults;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/digikala/dms/model/domain/Courier;->setBatchFinalized(Z)V

    .line 477
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 479
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_92

    .line 480
    const-string v0, "Success"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "Success"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$deliveryId:Ljava/lang/String;

    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/digikala/dms/view/activity/MainActivity$10$1;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/activity/MainActivity$10$1;-><init>(Lcom/digikala/dms/view/activity/MainActivity$10;)V

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/digikala/dms/helper/webservice/WebApi;->makeLogoutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 552
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$loggedInDeliveries:Lio/realm/RealmResults;

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    .line 553
    .local v0, "batchSize":I
    const/4 v1, 0x0

    .line 554
    .local v1, "notSyncedShipmentsSize":I
    move v3, v0

    .line 555
    .local v3, "syncedShipmentsSize":I
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$deliveryId:Ljava/lang/String;

    invoke-static {v4, v0, v3, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logFinalizeTripEvent(Ljava/lang/String;III)V

    .line 556
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->val$deliveryId:Ljava/lang/String;

    invoke-static {v4, v0, v3, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripEvent(Ljava/lang/String;III)V

    .line 558
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/digikala/dms/util/Util;->saveLatestShipmentIDToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 560
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    iget-object v5, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v5}, Lcom/digikala/dms/view/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 561
    .end local v0    # "batchSize":I
    .end local v1    # "notSyncedShipmentsSize":I
    .end local v3    # "syncedShipmentsSize":I
    goto :goto_d1

    .line 562
    :cond_92
    const-string v0, "Error"

    const-string v1, "Error1"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "Error"

    const-string v1, "Error1"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 566
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 567
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsuccessful Finalize Process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 572
    :goto_d1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 468
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/MainActivity$10;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass10.AnonymousClass1 (com.digikala.dms.view.activity.MainActivity$10$1)
.class Lcom/digikala/dms/view/activity/MainActivity$10$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity$10;->onResponse(Ljava/lang/Boolean;)V
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
.field final synthetic this$1:Lcom/digikala/dms/view/activity/MainActivity$10;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity$10;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/activity/MainActivity$10;

    .line 483
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 542
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 546
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 547
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot Logout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 8
    .param p1, "successfullyLogout"    # Ljava/lang/Boolean;

    .line 486
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_ee

    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/digikala/dms/core/ForegroundService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 494
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/core/GpsService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v2, "gpsService":Landroid/content/Intent;
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 497
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3}, Lio/realm/Realm;->beginTransaction()V

    .line 498
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->val$loggedInDeliveries:Lio/realm/RealmResults;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/Courier;->setIsLoggedIn(Z)V

    .line 499
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3}, Lio/realm/Realm;->commitTransaction()V

    .line 502
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getCourierTrackingType(Landroid/content/Context;)Lcom/digikala/dms/model/design/TrackingType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TrackingType;->getHasTrack()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 503
    const-string v3, "setupTracker"

    const-string v4, "cancelRepeat() in sync method"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_73
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setDeliveryAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setDeliveryId(Landroid/content/Context;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setBachId(Landroid/content/Context;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setDistributionPointId(Landroid/content/Context;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setCourierTrackingType(Landroid/content/Context;Lcom/digikala/dms/model/design/TrackingType;)V

    .line 514
    invoke-static {}, Lcom/digikala/dms/helper/RealmHelper;->deleteRealmTables()V

    .line 515
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->val$realm:Lio/realm/Realm;

    new-instance v5, Lcom/digikala/dms/view/activity/MainActivity$10$1$1;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/activity/MainActivity$10$1$1;-><init>(Lcom/digikala/dms/view/activity/MainActivity$10$1;)V

    invoke-virtual {v3, v5}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 522
    :try_start_aa
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->saveLastLocationToSharedPreference(Landroid/content/Context;Landroid/location/Location;)V

    .line 523
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/digikala/dms/util/Util;->saveDistanceTraveledToSharedPreference(Landroid/content/Context;D)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ba} :catch_bb

    .line 526
    goto :goto_bf

    .line 524
    :catch_bb
    move-exception v3

    .line 525
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_bf
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v3}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 529
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v3}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 530
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const-class v4, Lcom/digikala/dms/view/activity/LauncherActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 532
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v3, v1}, Lcom/digikala/dms/view/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 533
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "gpsService":Landroid/content/Intent;
    goto :goto_10d

    .line 534
    :cond_ee
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 535
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$10;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$10;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 536
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsuccessful Logout Process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_10d
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 483
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/MainActivity$10$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass10.AnonymousClass1.C00091 (com.digikala.dms.view.activity.MainActivity$10$1$1)
.class Lcom/digikala/dms/view/activity/MainActivity$10$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity$10$1;->onResponse(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/digikala/dms/view/activity/MainActivity$10$1;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity$10$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/digikala/dms/view/activity/MainActivity$10$1;

    .line 515
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$10$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 2
    .param p1, "realm"    # Lio/realm/Realm;

    .line 518
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    .line 519
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass11 (com.digikala.dms.view.activity.MainActivity$11)
.class Lcom/digikala/dms/view/activity/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->finalizeTrip()V
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
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;

.field final synthetic val$batchId:Ljava/lang/String;

.field final synthetic val$deliveryId:Ljava/lang/String;

.field final synthetic val$loggedInDeliveries:Lio/realm/RealmResults;

.field final synthetic val$notSyncedShipments:Lio/realm/RealmResults;

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;Lio/realm/RealmResults;Lio/realm/Realm;Ljava/lang/String;Lio/realm/RealmResults;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 593
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$notSyncedShipments:Lio/realm/RealmResults;

    iput-object p3, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$realm:Lio/realm/Realm;

    iput-object p4, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$batchId:Ljava/lang/String;

    iput-object p5, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$loggedInDeliveries:Lio/realm/RealmResults;

    iput-object p6, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$deliveryId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 593
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/MainActivity$11;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 596
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x1

    :try_start_13
    const-string v1, "Data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 601
    .local v1, "successfullySynced":Z
    if-eqz v1, :cond_6a

    .line 602
    const-string v2, "Success"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v2, "Success"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$notSyncedShipments:Lio/realm/RealmResults;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$notSyncedShipments:Lio/realm/RealmResults;

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-eqz v2, :cond_56

    .line 607
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2}, Lio/realm/Realm;->beginTransaction()V

    .line 608
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$notSyncedShipments:Lio/realm/RealmResults;

    invoke-virtual {v3}, Lio/realm/RealmResults;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 609
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$notSyncedShipments:Lio/realm/RealmResults;

    invoke-virtual {v3, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3, v0}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 611
    .end local v2    # "i":I
    :cond_51
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2}, Lio/realm/Realm;->commitTransaction()V

    .line 614
    :cond_56
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$batchId:Ljava/lang/String;

    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/digikala/dms/view/activity/MainActivity$11$1;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/activity/MainActivity$11$1;-><init>(Lcom/digikala/dms/view/activity/MainActivity$11;)V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/digikala/dms/helper/webservice/WebApi;->makeFinalizeBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v2

    .line 732
    invoke-virtual {v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    goto :goto_a2

    .line 734
    :cond_6a
    const-string v2, "Error"

    const-string v3, "Error2"

    invoke-static {v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v2, "Error"

    const-string v3, "Error2"

    invoke-static {v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v2}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 738
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v2}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 739
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unsuccessful Sync Process!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const-string v3, "Message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_a2} :catch_a4

    .line 762
    .end local v1    # "successfullySynced":Z
    :goto_a2
    goto/16 :goto_125

    .line 745
    :catch_a4
    move-exception v1

    .line 746
    .local v1, "joe":Lorg/json/JSONException;
    if-eqz v1, :cond_dc

    .line 747
    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e3

    .line 750
    :cond_dc
    const-string v2, "Error"

    const-string v3, "Json Error"

    invoke-static {v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :goto_e3
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v2}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 754
    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v2}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 755
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject exception on the response of \"SyncShipmentsWithBackOffice\" request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :try_start_111
    const-string v2, "Message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_120
    .catch Lorg/json/JSONException; {:try_start_111 .. :try_end_120} :catch_121

    .line 761
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_125

    .line 759
    :catch_121
    move-exception v0

    .line 760
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 764
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "joe":Lorg/json/JSONException;
    :goto_125
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass11.AnonymousClass1 (com.digikala.dms.view.activity.MainActivity$11$1)
.class Lcom/digikala/dms/view/activity/MainActivity$11$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity$11;->onResponse(Lorg/json/JSONObject;)V
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
.field final synthetic this$1:Lcom/digikala/dms/view/activity/MainActivity$11;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity$11;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/activity/MainActivity$11;

    .line 614
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 721
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 725
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 726
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot finalize the batch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 730
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 9
    .param p1, "successfullyFinalized"    # Ljava/lang/Boolean;

    .line 618
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 622
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$loggedInDeliveries:Lio/realm/RealmResults;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/digikala/dms/model/domain/Courier;->setBatchFinalized(Z)V

    .line 623
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 625
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_ae

    .line 626
    const-string v0, "Success"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, "Success"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$deliveryId:Ljava/lang/String;

    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;-><init>(Lcom/digikala/dms/view/activity/MainActivity$11$1;)V

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/digikala/dms/helper/webservice/WebApi;->makeLogoutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 700
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->val$loggedInDeliveries:Lio/realm/RealmResults;

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    .line 701
    .local v0, "batchSize":I
    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v1, v1, Lcom/digikala/dms/view/activity/MainActivity$11;->val$notSyncedShipments:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    .line 702
    .local v1, "notSyncedShipmentsSize":I
    sub-int v3, v0, v1

    .line 703
    .local v3, "syncedShipmentsSize":I
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v4, v4, Lcom/digikala/dms/view/activity/MainActivity$11;->val$deliveryId:Ljava/lang/String;

    invoke-static {v4, v0, v3, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logFinalizeTripEvent(Ljava/lang/String;III)V

    .line 704
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v4, v4, Lcom/digikala/dms/view/activity/MainActivity$11;->val$deliveryId:Ljava/lang/String;

    invoke-static {v4, v0, v3, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripEvent(Ljava/lang/String;III)V

    .line 706
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v4, v4, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/digikala/dms/util/Util;->saveLatestShipmentIDToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 708
    iget-object v4, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v4, v4, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    iget-object v5, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v5, v5, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v5}, Lcom/digikala/dms/view/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 709
    .end local v0    # "batchSize":I
    .end local v1    # "notSyncedShipmentsSize":I
    .end local v3    # "syncedShipmentsSize":I
    goto :goto_e7

    .line 710
    :cond_ae
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 711
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 712
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsuccessful Finalize Process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v1, v1, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 717
    :goto_e7
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 614
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/MainActivity$11$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass11.AnonymousClass1.C00101 (com.digikala.dms.view.activity.MainActivity$11$1$1)
.class Lcom/digikala/dms/view/activity/MainActivity$11$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity$11$1;->onResponse(Ljava/lang/Boolean;)V
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
.field final synthetic this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity$11$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/digikala/dms/view/activity/MainActivity$11$1;

    .line 629
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 688
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 694
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 695
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot Logout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 8
    .param p1, "successfullyLogout"    # Ljava/lang/Boolean;

    .line 632
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_102

    .line 637
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/digikala/dms/core/ForegroundService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 638
    .local v0, "foregroundService":Landroid/content/Intent;
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 640
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/core/GpsService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    .local v2, "gpsService":Landroid/content/Intent;
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 643
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3}, Lio/realm/Realm;->beginTransaction()V

    .line 644
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->val$loggedInDeliveries:Lio/realm/RealmResults;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/Courier;->setIsLoggedIn(Z)V

    .line 645
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3}, Lio/realm/Realm;->commitTransaction()V

    .line 647
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getCourierTrackingType(Landroid/content/Context;)Lcom/digikala/dms/model/design/TrackingType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TrackingType;->getHasTrack()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 648
    const-string v3, "setupTracker"

    const-string v4, "cancelRepeat() in sync method"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_79
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setDeliveryAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 652
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setDeliveryId(Landroid/content/Context;Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setBachId(Landroid/content/Context;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setDistributionPointId(Landroid/content/Context;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->setCourierTrackingType(Landroid/content/Context;Lcom/digikala/dms/model/design/TrackingType;)V

    .line 660
    invoke-static {}, Lcom/digikala/dms/helper/RealmHelper;->deleteRealmTables()V

    .line 661
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->val$realm:Lio/realm/Realm;

    new-instance v5, Lcom/digikala/dms/view/activity/MainActivity$11$1$1$1;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/activity/MainActivity$11$1$1$1;-><init>(Lcom/digikala/dms/view/activity/MainActivity$11$1$1;)V

    invoke-virtual {v3, v5}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 668
    :try_start_b6
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/digikala/dms/util/Util;->saveLastLocationToSharedPreference(Landroid/content/Context;Landroid/location/Location;)V

    .line 669
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/digikala/dms/util/Util;->saveDistanceTraveledToSharedPreference(Landroid/content/Context;D)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c6} :catch_c7

    .line 672
    goto :goto_cb

    .line 670
    :catch_c7
    move-exception v3

    .line 671
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_cb
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v3}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 675
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v3}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 676
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const-class v4, Lcom/digikala/dms/view/activity/LauncherActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 677
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 678
    iget-object v3, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v3, v3, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v3, v1}, Lcom/digikala/dms/view/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 679
    .end local v0    # "foregroundService":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "gpsService":Landroid/content/Intent;
    goto :goto_125

    .line 680
    :cond_102
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 681
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->this$2:Lcom/digikala/dms/view/activity/MainActivity$11$1;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11$1;->this$1:Lcom/digikala/dms/view/activity/MainActivity$11;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/MainActivity$11;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 682
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsuccessful Logout Process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_125
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 629
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass11.AnonymousClass1.C00101.C00111 (com.digikala.dms.view.activity.MainActivity$11$1$1$1)
.class Lcom/digikala/dms/view/activity/MainActivity$11$1$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity$11$1$1;->onResponse(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/digikala/dms/view/activity/MainActivity$11$1$1;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity$11$1$1;)V
    .registers 2
    .param p1, "this$3"    # Lcom/digikala/dms/view/activity/MainActivity$11$1$1;

    .line 661
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$11$1$1$1;->this$3:Lcom/digikala/dms/view/activity/MainActivity$11$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 2
    .param p1, "realm"    # Lio/realm/Realm;

    .line 664
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    .line 665
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass12 (com.digikala.dms.view.activity.MainActivity$12)
.class Lcom/digikala/dms/view/activity/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->finalizeTrip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 765
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$12;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 768
    if-eqz p1, :cond_67

    .line 769
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 774
    :cond_67
    const-string v0, "Response"

    const-string v1, "Response Error"

    const-string v2, "Volley Error"

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v0, "Response"

    const-string v1, "Response Error"

    const-string v2, "Volley Error"

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v0, "Error"

    const-string v1, "Volley Error"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :goto_80
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$12;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$900(Lcom/digikala/dms/view/activity/MainActivity;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 780
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$12;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$1000(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 781
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot sync shipments with the server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$12;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$12;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v2}, Lcom/digikala/dms/view/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 785
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass13 (com.digikala.dms.view.activity.MainActivity$13)
.class Lcom/digikala/dms/view/activity/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->showTimeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 846
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$13;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .registers 6
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "which"    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 849
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 850
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$13;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DATE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 851
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass14 (com.digikala.dms.view.activity.MainActivity$14)
.class Lcom/digikala/dms/view/activity/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->showTimeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 839
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$14;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .registers 3
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "which"    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 842
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 843
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->logout()V

    .line 844
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass15 (com.digikala.dms.view.activity.MainActivity$15)
.class Lcom/digikala/dms/view/activity/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->showNetworkAlertAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 868
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$15;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .registers 3
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "which"    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 871
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 872
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass16 (com.digikala.dms.view.activity.MainActivity$16)
.class Lcom/digikala/dms/view/activity/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->showNetworkAlertAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 861
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$16;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .registers 6
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "which"    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 864
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 865
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$16;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 866
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass2 (com.digikala.dms.view.activity.MainActivity$2)
.class Lcom/digikala/dms/view/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 189
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$2;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 192
    const-string v0, "rate"

    const-string v1, "click"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$2;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/RateFragment;->newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/RateFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity$2;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/view/fragment/RateFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    return v0
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass3 (com.digikala.dms.view.activity.MainActivity$3)
.class Lcom/digikala/dms/view/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
        "Lcom/digikala/dms/model/domain/Rate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 198
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$3;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 216
    const-string v0, "Rate"

    const-string v1, "errorMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public onResponse(Lcom/digikala/dms/model/domain/Rate;)V
    .registers 5
    .param p1, "response"    # Lcom/digikala/dms/model/domain/Rate;

    .line 201
    if-eqz p1, :cond_10

    .line 210
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$3;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$100(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getRate()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 212
    :cond_10
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 198
    check-cast p1, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/MainActivity$3;->onResponse(Lcom/digikala/dms/model/domain/Rate;)V

    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass4 (com.digikala.dms.view.activity.MainActivity$4)
.class Lcom/digikala/dms/view/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 218
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$4;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRequestToLoadList(Lcom/digikala/dms/helper/webservice/WebApiRequest;Z)V
    .registers 3
    .param p2, "loadDataOnResume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "*>;Z)V"
        }
    .end annotation

    .line 222
    .local p1, "request":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<*>;"
    return-void
.end method

.method public reloadRequests()V
    .registers 1

    .line 227
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass5 (com.digikala.dms.view.activity.MainActivity$5)
.class Lcom/digikala/dms/view/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->createActionBarMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 253
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$5;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 256
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$5;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$200(Lcom/digikala/dms/view/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 257
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$5;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$300(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 258
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$5;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->access$202(Lcom/digikala/dms/view/activity/MainActivity;Z)Z

    .line 259
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$5;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$400(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 261
    :cond_23
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$5;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$500(Lcom/digikala/dms/view/activity/MainActivity;)V

    .line 263
    :goto_28
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass6 (com.digikala.dms.view.activity.MainActivity$6)
.class Lcom/digikala/dms/view/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 288
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$6;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$6;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$6;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const-class v3, Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass7 (com.digikala.dms.view.activity.MainActivity$7)
.class Lcom/digikala/dms/view/activity/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 295
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$7;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 298
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->logout()V

    .line 299
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass8 (com.digikala.dms.view.activity.MainActivity$8)
.class Lcom/digikala/dms/view/activity/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 313
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$8;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$8;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/activity/MainActivity;->access$202(Lcom/digikala/dms/view/activity/MainActivity;Z)Z

    .line 317
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$8;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$300(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 318
    iget-object v0, p0, Lcom/digikala/dms/view/activity/MainActivity$8;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/MainActivity;->access$400(Lcom/digikala/dms/view/activity/MainActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    return-void
.end method

###### Class com.digikala.dms.view.activity.MainActivity.AnonymousClass9 (com.digikala.dms.view.activity.MainActivity$9)
.class Lcom/digikala/dms/view/activity/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/MainActivity;->loadDeliveryProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/MainActivity;

    .line 402
    iput-object p1, p0, Lcom/digikala/dms/view/activity/MainActivity$9;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 419
    invoke-static {}, Lcom/digikala/dms/view/activity/MainActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not get avatar bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 7
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .line 406
    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_20

    .line 409
    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity$9;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/MainActivity;->access$600(Lcom/digikala/dms/view/activity/MainActivity;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    iget-object v1, p0, Lcom/digikala/dms/view/activity/MainActivity$9;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/MainActivity;->access$600(Lcom/digikala/dms/view/activity/MainActivity;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/view/activity/MainActivity$9;->this$0:Lcom/digikala/dms/view/activity/MainActivity;

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 414
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_20
    goto :goto_22

    .line 412
    :catch_21
    move-exception v0

    .line 415
    :goto_22
    return-void
.end method
