###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment (com.digikala.dms.view.fragment.AssignedShipmentsFragment)
.class public Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;
.super Landroid/support/v4/app/Fragment;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# static fields
.field private static final TAG_DEBUG:Ljava/lang/String;

.field private static final TAG_REQUEST:Ljava/lang/String;

.field private static mSselectAllLayout:Landroid/widget/LinearLayout;

.field private static scanEditText:Landroid/widget/EditText;

.field private static scanStr:Ljava/lang/String;


# instance fields
.field private GpsLocationReceiver:Landroid/content/BroadcastReceiver;

.field private darkLayout:Landroid/view/View;

.field gps_enabled:Z

.field private isPopupOpen:Z

.field private mAssignedShipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private mAvatarCircleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

.field private mBatch:Lcom/digikala/dms/model/domain/Batch;

.field private mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

.field private mConfirmingShipmentsProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

.field private mDeliveryIdTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private mDeliveryNameTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private mEmptyListMsgTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private mIsExpandedBottomSheets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSelectedShipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSettledBottomSheets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

.field private mReloadBatchSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mSelectAll_btn:Landroid/widget/CheckBox;

.field private mShipmentsListAdapter:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

.field private mShipmentsListRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const-class v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->TAG_DEBUG:Ljava/lang/String;

    .line 82
    const-class v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->TAG_REQUEST:Ljava/lang/String;

    .line 104
    const-string v0, ""

    sput-object v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mAssignedShipments:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mIsSelectedShipments:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mIsSettledBottomSheets:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mIsExpandedBottomSheets:Ljava/util/ArrayList;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->isPopupOpen:Z

    .line 113
    iput-boolean v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->gps_enabled:Z

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .line 79
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLocationManager:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 79
    sget-object v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->TAG_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mIsSettledBottomSheets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mIsExpandedBottomSheets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/adapter/AssignedBatchAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mShipmentsListAdapter:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mShipmentsListRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/view/custom/XeiTextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mEmptyListMsgTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Ljava/util/ArrayList;)I
    .registers 3
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->countTrues(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getAssignedShipments()V

    return-void
.end method

.method static synthetic access$1700(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mConfirmingShipmentsProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .line 79
    sget-object v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 79
    sput-object p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900()Landroid/widget/EditText;
    .registers 1

    .line 79
    sget-object v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/pnikosis/materialishprogress/ProgressWheel;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLoadingProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-boolean v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->isPopupOpen:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->isPopupOpen:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->darkLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->showPopupWindows()V

    return-void
.end method

.method static synthetic access$2500(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lde/hdodenhof/circleimageview/CircleImageView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mAvatarCircleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mReloadBatchSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$400()Landroid/widget/LinearLayout;
    .registers 1

    .line 79
    sget-object v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mSselectAllLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->initRecyclerView()V

    return-void
.end method

.method static synthetic access$600(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/model/domain/Batch;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mBatch:Lcom/digikala/dms/model/domain/Batch;

    return-object v0
.end method

.method static synthetic access$602(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Lcom/digikala/dms/model/domain/Batch;)Lcom/digikala/dms/model/domain/Batch;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;
    .param p1, "x1"    # Lcom/digikala/dms/model/domain/Batch;

    .line 79
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mBatch:Lcom/digikala/dms/model/domain/Batch;

    return-object p1
.end method

.method static synthetic access$700(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->confirmBatchOffline()V

    return-void
.end method

.method static synthetic access$800(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mAssignedShipments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mIsSelectedShipments:Ljava/util/ArrayList;

    return-object v0
.end method

.method private confirmBatchOffline()V
    .registers 7

    .line 369
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 370
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

    .line 371
    .local v1, "loggedInDeliveries":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_55

    .line 372
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    .line 373
    .local v2, "loggedInCourier":Lcom/digikala/dms/model/domain/Courier;
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 374
    const-class v3, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Batch;

    .line 375
    .local v3, "newBatch":Lcom/digikala/dms/model/domain/Batch;
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mBatch:Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Batch;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/Batch;->setId(Ljava/lang/String;)V

    .line 376
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mBatch:Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Batch;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/Batch;->setStatus(I)V

    .line 377
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v4

    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getModifiedShipments()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/realm/RealmList;->addAll(Ljava/util/Collection;)Z

    .line 378
    invoke-virtual {v2, v3}, Lcom/digikala/dms/model/domain/Courier;->setBatch(Lcom/digikala/dms/model/domain/Batch;)V

    .line 379
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 380
    .end local v2    # "loggedInCourier":Lcom/digikala/dms/model/domain/Courier;
    .end local v3    # "newBatch":Lcom/digikala/dms/model/domain/Batch;
    goto :goto_5c

    .line 381
    :cond_55
    sget-object v2, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->TAG_DEBUG:Ljava/lang/String;

    const-string v3, "There is no one logged in delivery!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_5c
    return-void
.end method

.method private confirmShipments()V
    .registers 5

    .line 331
    const-string v0, "TAG"

    const-string v1, "makeConfirmBatchRequestResponse CALLED: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mBatch:Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Batch;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v2, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/digikala/dms/helper/webservice/WebApi;->makeConfirmBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 363
    return-void
.end method

.method private countTrues(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 435
    .local p1, "booleanArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 436
    .local v0, "trueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 437
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 438
    add-int/lit8 v0, v0, 0x1

    .line 436
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 441
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method private createActionBarMenu()V
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    new-instance v1, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$11;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$11;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    return-void
.end method

.method public static deliveryHasOpenShipments(Lcom/digikala/dms/model/domain/Courier;)Z
    .registers 5
    .param p0, "courier"    # Lcom/digikala/dms/model/domain/Courier;

    .line 426
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 427
    .local v1, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 428
    return v3

    .line 430
    .end local v1    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    :cond_20
    goto :goto_c

    .line 431
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private getAssignedShipments()V
    .registers 5

    .line 233
    const-string v0, "TAG"

    const-string v1, "getAssignedShipments: CALLed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "deliveryId":Ljava/lang/String;
    sget-object v1, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v2, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/digikala/dms/helper/webservice/WebApi;->makeGetBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 296
    return-void
.end method

.method private getModifiedShipments()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, "shipmentList":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/Shipment;>;"
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mBatch:Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v1

    .line 411
    .local v1, "shipments":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    .line 412
    .local v3, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v4

    .line 413
    .local v4, "status":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2b

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2b

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2b

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2e

    .line 414
    :cond_2b
    invoke-virtual {v3, v5}, Lcom/digikala/dms/model/domain/Shipment;->setStatus(I)V

    .line 416
    :cond_2e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v3    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    .end local v4    # "status":I
    goto :goto_f

    .line 418
    :cond_32
    return-object v0
.end method

.method private initRecyclerView()V
    .registers 14

    .line 226
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mShipmentsListRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 227
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mShipmentsListRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 228
    new-instance v0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mAssignedShipments:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mIsSettledBottomSheets:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mIsExpandedBottomSheets:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mIsSelectedShipments:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v12

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/design/widget/FloatingActionButton;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mShipmentsListAdapter:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 229
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mShipmentsListRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mShipmentsListAdapter:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 230
    return-void
.end method

.method private loadDeliveryProfile()V
    .registers 8

    .line 590
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 591
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

    .line 592
    .local v1, "loggedInDeliveries":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_91

    .line 593
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    .line 594
    .local v2, "loggedInCourier":Lcom/digikala/dms/model/domain/Courier;
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mDeliveryNameTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    const-string v3, "0"

    .line 596
    .local v3, "userName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getUserName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 597
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getUserName()Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    .line 598
    :cond_40
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 599
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 603
    :cond_4a
    :goto_4a
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mDeliveryIdTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f1000a8

    invoke-virtual {p0, v6}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    :try_start_72
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_7a
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_7a} :catch_7b

    .line 609
    .local v4, "avatarUrl":Ljava/lang/String;
    goto :goto_7e

    .line 607
    .end local v4    # "avatarUrl":Ljava/lang/String;
    :catch_7b
    move-exception v4

    .line 608
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v4, ""

    .line 610
    .local v4, "avatarUrl":Ljava/lang/String;
    :goto_7e
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_90

    .line 611
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getAvatarUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$12;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$12;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    invoke-static {v5, v6}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->downloadAndMemoryCacheBitmap(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 628
    .end local v2    # "loggedInCourier":Lcom/digikala/dms/model/domain/Courier;
    .end local v3    # "userName":Ljava/lang/String;
    .end local v4    # "avatarUrl":Ljava/lang/String;
    :cond_90
    goto :goto_98

    .line 629
    :cond_91
    sget-object v2, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->TAG_DEBUG:Ljava/lang/String;

    const-string v3, "There exist more than one logged in delivery!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_98
    return-void
.end method

.method public static newInstance()Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;
    .registers 1

    .line 126
    new-instance v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;-><init>()V

    return-object v0
.end method

.method public static resetScanEditText()V
    .registers 2

    .line 445
    sget-object v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method

.method private scanDialog()V
    .registers 8

    .line 449
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 450
    .local v0, "scanDialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 451
    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 453
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v1

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v1, v3

    .line 454
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3fc999999999999aL    # 0.2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    .line 455
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 457
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    const v2, 0x7f090173

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanEditText:Landroid/widget/EditText;

    .line 460
    const v2, 0x7f09003d

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 461
    .local v2, "mScan_btn":Landroid/widget/ImageButton;
    new-instance v4, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$5;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$5;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    sget-object v4, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$6;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$6;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 487
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 488
    return-void
.end method

.method private showPopupWindows()V
    .registers 11

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->isPopupOpen:Z

    .line 515
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 517
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c007d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 519
    .local v2, "popupView":Landroid/view/View;
    const v3, 0x7f09018b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 520
    .local v3, "settingLayout":Landroid/widget/LinearLayout;
    const v4, 0x7f09010a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 521
    .local v4, "logoutLayout":Landroid/widget/LinearLayout;
    const v5, 0x7f090174

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 523
    .local v5, "scanLayout":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$7;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$7;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    new-instance v6, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$8;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$8;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    new-instance v6, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$9;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$9;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-direct {v6, v2, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 555
    iget-object v6, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 556
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 558
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    iget-object v8, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v8}, Lcom/digikala/dms/view/custom/XeiTextView;->getWidth()I

    move-result v8

    neg-int v8, v8

    iget-object v9, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v9}, Lcom/digikala/dms/view/custom/XeiTextView;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 560
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->darkLayout:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->darkLayout:Landroid/view/View;

    new-instance v6, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$10;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$10;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    return-void
.end method

.method private static updateDeliveryTable(Lcom/digikala/dms/model/domain/Batch;)Lcom/digikala/dms/model/domain/Batch;
    .registers 5
    .param p0, "batch"    # Lcom/digikala/dms/model/domain/Batch;

    .line 390
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 391
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Batch;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 392
    .local v1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Batch;>;"
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-nez v2, :cond_42

    .line 393
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 394
    const-class v2, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Batch;

    .line 395
    .local v2, "newBatch":Lcom/digikala/dms/model/domain/Batch;
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Batch;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/digikala/dms/model/domain/Batch;->setId(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Batch;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/digikala/dms/model/domain/Batch;->setStatus(I)V

    .line 397
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/digikala/dms/model/domain/Batch;->setShipments(Lio/realm/RealmList;)V

    .line 398
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 399
    return-object v2

    .line 400
    .end local v2    # "newBatch":Lcom/digikala/dms/model/domain/Batch;
    :cond_42
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_51

    .line 401
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Batch;

    return-object v2

    .line 403
    :cond_51
    sget-object v2, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->TAG_DEBUG:Ljava/lang/String;

    const-string v3, "There are more than one similar batch in the Batch table!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 496
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 497
    .local v0, "result":Lcom/google/zxing/integration/android/IntentResult;
    if-eqz v0, :cond_34

    .line 498
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    .line 499
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_41

    .line 501
    :cond_20
    sget-object v1, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const-string v1, "Found Item"

    invoke-static {v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 503
    const-string v1, "Found Item"

    invoke-static {v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    goto :goto_41

    .line 506
    :cond_34
    const-string v1, "Not Found Item"

    invoke-static {v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 507
    const-string v1, "Not Found Item"

    invoke-static {v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 508
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 510
    :goto_41
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "clickedView"    # Landroid/view/View;

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900a7

    if-eq v0, v1, :cond_a

    goto :goto_13

    .line 323
    :cond_a
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mConfirmingShipmentsProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->show()V

    .line 324
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->confirmShipments()V

    .line 325
    nop

    .line 328
    :goto_13
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/core/GpsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "userId"

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    nop

    .line 139
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLocationManager:Landroid/location/LocationManager;

    .line 141
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->gps_enabled:Z

    .line 143
    iget-boolean v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->gps_enabled:Z

    if-nez v1, :cond_55

    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/digikala/dms/core/NoGpsAccessActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v1, "pushIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    .end local v1    # "pushIntent":Landroid/content/Intent;
    goto :goto_62

    .line 148
    :cond_55
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 149
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/core/NoGpsAccessActivity;->finish()V

    .line 153
    :cond_62
    :goto_62
    new-instance v1, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$1;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->GpsLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->GpsLocationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    const v1, 0x7f0c003f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f09003c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 195
    const v3, 0x7f09003b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mDeliveryNameTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 196
    const v3, 0x7f090039

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mAvatarCircleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 197
    const v3, 0x7f09003a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mDeliveryIdTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 198
    const v3, 0x7f0900a8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pnikosis/materialishprogress/ProgressWheel;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLoadingProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    .line 199
    const v3, 0x7f0900aa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mReloadBatchSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 200
    const v3, 0x7f0900ab

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mEmptyListMsgTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 201
    const v3, 0x7f0900a9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mShipmentsListRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 202
    const v3, 0x7f0900a7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/FloatingActionButton;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    .line 203
    const v3, 0x7f09001d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/github/jorgecastilloprz/FABProgressCircle;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mConfirmingShipmentsProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    .line 204
    const v3, 0x7f090080

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->darkLayout:Landroid/view/View;

    .line 205
    const v3, 0x7f0900b9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mSelectAll_btn:Landroid/widget/CheckBox;

    .line 206
    const v3, 0x7f090187

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    sput-object v3, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mSselectAllLayout:Landroid/widget/LinearLayout;

    .line 209
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mReloadBatchSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x7f060032

    aput v5, v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 212
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->initRecyclerView()V

    .line 215
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mReloadBatchSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 216
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mLogoutButton:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v2, p0}, Lcom/digikala/dms/view/custom/XeiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->loadDeliveryProfile()V

    .line 219
    const-string v2, "TAG"

    const-string v3, "onCreateView: getAssignedShipments"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getAssignedShipments()V

    .line 221
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->createActionBarMenu()V

    .line 222
    return-object v1
.end method

.method public onRefresh()V
    .registers 1

    .line 315
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->initRecyclerView()V

    .line 316
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getAssignedShipments()V

    .line 317
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 300
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 301
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->mSelectAll_btn:Landroid/widget/CheckBox;

    new-instance v1, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$3;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$3;-><init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 311
    return-void
.end method

.method public scanFromFragment()V
    .registers 3

    .line 491
    invoke-static {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->forSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object v0

    const v1, 0x7f100087

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    .line 492
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass1 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$1)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AssignedShipmentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 153
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$1;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 156
    if-eqz p2, :cond_54

    if-eqz p1, :cond_54

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 161
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$1;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 162
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 161
    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$002(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 164
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$1;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$1;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$000(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->gps_enabled:Z

    .line 166
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$1;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    iget-boolean v0, v0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->gps_enabled:Z

    if-nez v0, :cond_47

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/digikala/dms/core/NoGpsAccessActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, "pushIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 170
    .end local v0    # "pushIntent":Landroid/content/Intent;
    goto :goto_54

    .line 171
    :cond_47
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 172
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/core/NoGpsAccessActivity;->finish()V

    .line 183
    :cond_54
    :goto_54
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass10 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$10)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$10;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 561
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$10;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 564
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$10;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2002(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Z)Z

    .line 565
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$10;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 566
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$10;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2300(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass11 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$11)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$11;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->createActionBarMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 573
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$11;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 576
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$11;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2000(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 577
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$11;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 578
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$11;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2002(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Z)Z

    .line 579
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$11;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2300(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 581
    :cond_23
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$11;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2400(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    .line 583
    :goto_28
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass12 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$12)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$12;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->loadDeliveryProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 611
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$12;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 623
    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$100()Ljava/lang/String;

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

    .line 624
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 7
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .line 614
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 615
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_24

    .line 616
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$12;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2500(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 617
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$12;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2500(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$12;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v2}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 619
    :cond_24
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass2 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$2)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getAssignedShipments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
        "Lcom/digikala/dms/model/domain/Batch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 236
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 288
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$300(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 292
    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not get assigned shipments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method

.method public onResponse(Lcom/digikala/dms/model/domain/Batch;)V
    .registers 8
    .param p1, "response"    # Lcom/digikala/dms/model/domain/Batch;

    .line 239
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sjdnsjndjsndjsnd214 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$200(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$300(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 245
    const-string v0, "TAG"

    const-string v3, "getAssignedShipments: RESPONSE"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz p1, :cond_15b

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_15b

    .line 248
    const-string v0, "bug_status_confirm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAssignedShipments status_confirm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Batch;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-lez v0, :cond_174

    .line 251
    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$400()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$500(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    .line 253
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0, p1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$602(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Lcom/digikala/dms/model/domain/Batch;)Lcom/digikala/dms/model/domain/Batch;

    .line 254
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$600(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    .line 255
    .local v3, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 257
    .end local v3    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    goto :goto_95

    .line 258
    :cond_a6
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Batch;->getStatus()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d6

    .line 259
    const-string v0, "bug_status_confirm"

    const-string v1, "status_confirm"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$700(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    .line 261
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v2}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->startActivity(Landroid/content/Intent;)V

    .line 262
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_174

    .line 264
    :cond_d6
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$800(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$900(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1000(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 267
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_102
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    .line 269
    .restart local v3    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$800(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$900(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1000(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v3    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    goto :goto_102

    .line 274
    :cond_13f
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1200(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->notifyDataSetChanged()V

    .line 275
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1300(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1400(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setVisibility(I)V

    goto :goto_174

    .line 280
    :cond_15b
    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$400()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1300(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1400(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setVisibility(I)V

    .line 284
    :cond_174
    :goto_174
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 236
    check-cast p1, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$2;->onResponse(Lcom/digikala/dms/model/domain/Batch;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass3 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$3)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$3;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 301
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$3;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 304
    if-eqz p2, :cond_c

    .line 305
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$3;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1200(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->selectAllShipment()V

    goto :goto_15

    .line 307
    :cond_c
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$3;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1200(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->deSelectAllShipment()V

    .line 309
    :goto_15
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass4 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$4)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->confirmShipments()V
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
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 333
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 355
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1700(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 359
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "ack"    # Ljava/lang/Boolean;

    .line 336
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConfirmBatchRequestResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 340
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$700(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    .line 341
    const-string v0, ""

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$600(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1000(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1500(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Ljava/util/ArrayList;)I

    move-result v2

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1500(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Ljava/util/ArrayList;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logConfirmBatchEvent(Ljava/lang/String;III)V

    .line 342
    const-string v0, ""

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$600(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/model/domain/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->confirmBatchEvent(Ljava/lang/String;I)V

    .line 343
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->setShipmentNextStepIsPriority(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 344
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v2}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->startActivity(Landroid/content/Intent;)V

    .line 345
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_b1

    .line 347
    :cond_9b
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u062a\u063a\u06cc\u06cc\u0631\u0627\u062a\u06cc \u0631\u062e \u062f\u0627\u062f\u0647 \u0627\u0633\u062a \u0644\u0637\u0641\u0627 \u062f\u0648\u0628\u0627\u0631\u0647 \u062a\u0627\u06cc\u06cc\u062f \u06a9\u0646\u06cc\u062f."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1600(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    .line 350
    :goto_b1
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1700(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V

    .line 351
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 333
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$4;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass5 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$5)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$5;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 461
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 464
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanFromFragment()V

    .line 465
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass6 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$6)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$6;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->scanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 468
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "editable"    # Landroid/text/Editable;

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1900()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 484
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1200(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    move-result-object v0

    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$1800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->scanItem(Ljava/lang/String;)V

    .line 485
    :cond_39
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 472
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 477
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass7 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$7)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$7;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 523
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$7;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 526
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$7;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2002(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Z)Z

    .line 527
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$7;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 528
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$7;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$7;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-virtual {v2}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->startActivity(Landroid/content/Intent;)V

    .line 529
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass8 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$8)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$8;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 532
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$8;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 535
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$8;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 536
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$8;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2002(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Z)Z

    .line 537
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->logout()V

    .line 538
    return-void
.end method

###### Class com.digikala.dms.view.fragment.AssignedShipmentsFragment.AnonymousClass9 (com.digikala.dms.view.fragment.AssignedShipmentsFragment$9)
.class Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$9;
.super Ljava/lang/Object;
.source "AssignedShipmentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    .line 541
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$9;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 544
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$9;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2002(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;Z)Z

    .line 545
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$9;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2100(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 546
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment$9;->this$0:Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->access$2200(Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;)V

    .line 547
    return-void
.end method
