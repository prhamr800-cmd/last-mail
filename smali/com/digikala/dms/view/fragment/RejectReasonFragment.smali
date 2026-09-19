###### Class com.digikala.dms.view.fragment.RejectReasonFragment (com.digikala.dms.view.fragment.RejectReasonFragment)
.class public Lcom/digikala/dms/view/fragment/RejectReasonFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RejectReasonFragment.java"


# static fields
.field private static final ORDER_ID:Ljava/lang/String; = "orderId"

.field private static final TAG_REQUEST:Ljava/lang/String;


# instance fields
.field cancelButton:Landroid/widget/TextView;

.field listView:Landroid/widget/ListView;

.field private mOrderId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/fragment/RejectReasonFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    .line 38
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 38
    sget-object v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->TAG_REQUEST:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/RejectReasonFragment;
    .registers 4
    .param p0, "orderId"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;-><init>()V

    .line 52
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/RejectReasonFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "orderId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 70
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->mOrderId:Ljava/lang/String;

    .line 72
    :cond_15
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 62
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 63
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 204
    const v0, 0x7f0c004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f090153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->listView:Landroid/widget/ListView;

    .line 206
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->cancelButton:Landroid/widget/TextView;

    .line 207
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 79
    .local v0, "mRealm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 80
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "orderId"

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->mOrderId:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 84
    .local v1, "mShipment":Lcom/digikala/dms/model/domain/Shipment;
    const-class v2, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string/jumbo v3, "type"

    sget-object v4, Lcom/digikala/dms/util/Constant;->Companion:Lcom/digikala/dms/util/Constant$Companion;

    invoke-virtual {v4}, Lcom/digikala/dms/util/Constant$Companion;->getEXTRA_REASON_TYPE_CANCEL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    .line 85
    .local v2, "realmRejectReasons":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/RejectReason;>;"
    invoke-virtual {v0, v2}, Lio/realm/Realm;->copyToRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "rejectReasons1":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/RejectReason;>;"
    if-eqz v1, :cond_7b

    .line 88
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    .line 90
    .local v5, "rejectReasons":[Ljava/lang/String;
    :try_start_3b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_43

    move-object v5, v6

    .line 93
    goto :goto_47

    .line 91
    :catch_43
    move-exception v6

    .line 92
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_47
    nop

    .local v4, "i":I
    :goto_48
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5d

    .line 95
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 98
    .end local v4    # "i":I
    :cond_5d
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0084

    const v8, 0x7f0901b7

    invoke-direct {v4, v6, v7, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 99
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v6, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->listView:Landroid/widget/ListView;

    new-instance v7, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    invoke-direct {v7, p0, v3, v0, v1}, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;-><init>(Lcom/digikala/dms/view/fragment/RejectReasonFragment;Ljava/util/List;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5    # "rejectReasons":[Ljava/lang/String;
    :cond_7b
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->cancelButton:Landroid/widget/TextView;

    new-instance v5, Lcom/digikala/dms/view/fragment/RejectReasonFragment$2;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment$2;-><init>(Lcom/digikala/dms/view/fragment/RejectReasonFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

###### Class com.digikala.dms.view.fragment.RejectReasonFragment.AnonymousClass1 (com.digikala.dms.view.fragment.RejectReasonFragment$1)
.class Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;
.super Ljava/lang/Object;
.source "RejectReasonFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/RejectReasonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

.field final synthetic val$mRealm:Lio/realm/Realm;

.field final synthetic val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

.field final synthetic val$rejectReasons1:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/RejectReasonFragment;Ljava/util/List;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 5
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    .line 101
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$rejectReasons1:Ljava/util/List;

    iput-object p3, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mRealm:Lio/realm/Realm;

    iput-object p4, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 22
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 104
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v1, p0

    move/from16 v2, p3

    new-instance v0, Lcom/digikala/dms/model/design/ReturnedShipment;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/ReturnedShipment;-><init>()V

    move-object v10, v0

    .line 105
    .local v10, "returnedShipment":Lcom/digikala/dms/model/design/ReturnedShipment;
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->access$000(Lcom/digikala/dms/view/fragment/RejectReasonFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/digikala/dms/model/design/ReturnedShipment;->setShipmentId(Ljava/lang/String;)V

    .line 106
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$rejectReasons1:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/RejectReason;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/digikala/dms/model/design/ReturnedShipment;->setReasonId(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->getLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v11

    .line 109
    .local v11, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, "time":Ljava/lang/String;
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 112
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mRealm:Lio/realm/Realm;

    const-class v3, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/digikala/dms/model/domain/LatLong;

    .line 113
    .local v13, "location":Lcom/digikala/dms/model/domain/LatLong;
    if-eqz v11, :cond_4a

    .line 114
    invoke-virtual {v11}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/digikala/dms/model/domain/LatLong;->setLatitude(D)V

    .line 115
    invoke-virtual {v11}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/digikala/dms/model/domain/LatLong;->setLongitude(D)V

    .line 117
    :cond_4a
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/digikala/dms/model/domain/Shipment;->setStatus(I)V

    .line 118
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    iget-object v3, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$rejectReasons1:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/RejectReason;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/digikala/dms/model/domain/Shipment;->setRejectReasonId(I)V

    .line 119
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v12}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmTime(Ljava/lang/String;)V

    .line 120
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v13}, Lcom/digikala/dms/model/domain/Shipment;->setConfirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 121
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 122
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/digikala/dms/model/domain/Shipment;->setSignature(Ljava/lang/String;)V

    .line 123
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 125
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v4, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/digikala/dms/util/Util;->saveLatestShipmentIDToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    const-string v0, ""

    move-object v4, v0

    .line 129
    .local v4, "timeScope":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_94
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v0

    const-string v6, "\\s+"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "dateTime":[Ljava/lang/String;
    aget-object v6, v0, v5
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a2} :catch_a4

    move-object v4, v6

    .line 133
    .end local v0    # "dateTime":[Ljava/lang/String;
    goto :goto_a8

    .line 131
    :catch_a4
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v4    # "timeScope":Ljava/lang/String;
    .local v0, "timeScope":Ljava/lang/String;
    :goto_a8
    move-object v0, v4

    const-string v4, "Returned"

    const-string v6, "paymentType"

    const/4 v7, -0x1

    invoke-static {v4, v0, v11, v6, v7}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logCloseShipment(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;I)V

    .line 141
    const-string v4, "Returned"

    invoke-static {v4, v11}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->closeShipmentEvent(Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;)V

    .line 143
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b7
    iget-object v6, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v6

    if-ge v4, v6, :cond_14c

    .line 144
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_c4
    iget-object v7, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v7

    if-ge v6, v7, :cond_148

    .line 145
    iget-object v7, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$rejectReasons1:Ljava/util/List;

    .line 146
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/RejectReason;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$rejectReasons1:Ljava/util/List;

    .line 147
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v9}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 145
    invoke-static {v7, v8, v9}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logReturnShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v7, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$rejectReasons1:Ljava/util/List;

    .line 150
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/RejectReason;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$rejectReasons1:Ljava/util/List;

    .line 151
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v9}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 149
    invoke-static {v7, v8, v9}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->returnShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c4

    .line 143
    .end local v6    # "j":I
    :cond_148
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b7

    .line 155
    .end local v4    # "i":I
    :cond_14c
    iget-object v3, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v3}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 156
    .local v14, "batchId":Ljava/lang/String;
    iget-object v3, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v3}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getGpsStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 157
    .local v15, "gpsStatus":Ljava/lang/String;
    if-eqz v14, :cond_178

    .line 158
    invoke-static {}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;

    invoke-direct {v8, v1}, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;-><init>(Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;)V

    const/4 v9, 0x0

    move-object v3, v14

    move-object v4, v10

    move-object v5, v13

    move-object v6, v15

    invoke-static/range {v3 .. v9}, Lcom/digikala/dms/helper/webservice/WebApi;->makeRejectShipmentRequest(Ljava/lang/String;Lcom/digikala/dms/model/design/ReturnedShipment;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    goto :goto_187

    .line 186
    :cond_178
    iget-object v3, v1, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v3}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "pack id is null !!!"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 189
    :goto_187
    return-void
.end method

###### Class com.digikala.dms.view.fragment.RejectReasonFragment.AnonymousClass1.C00121 (com.digikala.dms.view.fragment.RejectReasonFragment$1$1)
.class Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;
.super Ljava/lang/Object;
.source "RejectReasonFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
.field final synthetic this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    .line 158
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 177
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 181
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 183
    :cond_3d
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/Boolean;

    .line 161
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 165
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 166
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mShipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 167
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->val$mRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 169
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 170
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->this$1:Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 173
    :cond_4d
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 158
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/RejectReasonFragment$1$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.RejectReasonFragment.AnonymousClass2 (com.digikala.dms.view.fragment.RejectReasonFragment$2)
.class Lcom/digikala/dms/view/fragment/RejectReasonFragment$2;
.super Ljava/lang/Object;
.source "RejectReasonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/RejectReasonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/RejectReasonFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    .line 193
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$2;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RejectReasonFragment$2;->this$0:Lcom/digikala/dms/view/fragment/RejectReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/RejectReasonFragment;->dismiss()V

    .line 197
    return-void
.end method
