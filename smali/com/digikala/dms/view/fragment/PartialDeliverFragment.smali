###### Class com.digikala.dms.view.fragment.PartialDeliverFragment (com.digikala.dms.view.fragment.PartialDeliverFragment)
.class public Lcom/digikala/dms/view/fragment/PartialDeliverFragment;
.super Landroid/support/v4/app/Fragment;
.source "PartialDeliverFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;
    }
.end annotation


# static fields
.field private static final PARAM_ORDER_ID:Ljava/lang/String; = "order_id"


# instance fields
.field EXTRA_SCAN_ACTION:Ljava/lang/String;

.field private adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

.field amountPayable:Landroid/widget/TextView;

.field amountPayableTitle:Landroid/widget/TextView;

.field backButton:Landroid/widget/ImageButton;

.field deliverItemsButton:Landroid/support/design/widget/FloatingActionButton;

.field index_delete:I

.field isCountedshippingCost:Z

.field isdecreasedShippingCost:Z

.field private mListener:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;

.field private mOrderId:Ljava/lang/String;

.field private mShipmentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;"
        }
    .end annotation
.end field

.field private nonRealmReturnedProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/NonRealmSerialItems;",
            ">;"
        }
    .end annotation
.end field

.field private payableAmount:J

.field private payableShippingCost:J

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field rejectReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;"
        }
    .end annotation
.end field

.field scanBTN:Landroid/widget/TextView;

.field shipment:Lcom/digikala/dms/model/domain/Shipment;

.field shippingCost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field swipeMenuCallback:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->index_delete:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->isCountedshippingCost:Z

    .line 94
    iput-boolean v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->isdecreasedShippingCost:Z

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 69
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mShipmentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 69
    iget-wide v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableAmount:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J
    .registers 3
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;
    .param p1, "x1"    # J

    .line 69
    iput-wide p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableAmount:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 69
    iget-wide v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableShippingCost:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J
    .registers 3
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;
    .param p1, "x1"    # J

    .line 69
    iput-wide p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableShippingCost:J

    return-wide p1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/PartialDeliverFragment;
    .registers 4
    .param p0, "orderId"    # Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;-><init>()V

    .line 102
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/PartialDeliverFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "order_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v0
.end method


# virtual methods
.method public getRejectReasonFromDatabase()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;"
        }
    .end annotation

    .line 570
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 572
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v2, "type"

    sget-object v3, Lcom/digikala/dms/util/Constant;->Companion:Lcom/digikala/dms/util/Constant$Companion;

    invoke-virtual {v3}, Lcom/digikala/dms/util/Constant$Companion;->getEXTRA_REASON_TYPE_RETURN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 573
    .local v1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/RejectReason;>;"
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 574
    .local v2, "rejectReasons":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/RejectReason;>;"
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 575
    return-object v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 686
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 687
    .local v0, "result":Lcom/google/zxing/integration/android/IntentResult;
    if-eqz v0, :cond_a1

    .line 688
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 689
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f10005f

    invoke-virtual {p0, v3}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_ae

    .line 693
    :cond_21
    :try_start_21
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->selectScan(Ljava/lang/String;)Z

    move-result v1

    .line 694
    .local v1, "flag":Z
    if-eqz v1, :cond_a0

    .line 695
    iget-wide v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableAmount:J

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mShipmentItems:Ljava/util/List;

    iget v6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->index_delete:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableAmount:J

    .line 700
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_82

    .line 701
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableShippingCost:J

    .line 702
    nop

    .local v2, "i":I
    :goto_50
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_82

    .line 703
    iget-wide v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableAmount:J

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_7f

    .line 704
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getShippingCostConfig()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->getShippingCost()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableShippingCost:J

    .line 705
    goto :goto_82

    .line 702
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 709
    .end local v2    # "i":I
    :cond_82
    :goto_82
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayable:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableAmount:J

    iget-wide v6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableShippingCost:J

    const/4 v8, 0x0

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " \u0631\u06cc\u0627\u0644 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_9e} :catch_9f

    goto :goto_a0

    .line 713
    .end local v1    # "flag":Z
    :catch_9f
    move-exception v1

    .line 714
    :cond_a0
    :goto_a0
    goto :goto_ae

    .line 717
    :cond_a1
    const-string v1, "Not Found Item"

    invoke-static {v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 718
    const-string v1, "Not Found Item"

    invoke-static {v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 719
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 721
    :goto_ae
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 287
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 288
    instance-of v0, p1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;

    if-eqz v0, :cond_d

    .line 289
    move-object v0, p1

    check-cast v0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mListener:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;

    .line 294
    return-void

    .line 291
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement OnPartialButtonClickListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onButtonPressed()V
    .registers 12

    .line 259
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mListener:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;

    if-eqz v0, :cond_48

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, "returnedProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SerialItems;>;"
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->nonRealmReturnedProducts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 262
    .local v2, "product":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    new-instance v10, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getReasonId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getItemBatchId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getOrderItemId()Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getCount()I

    move-result v8

    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getBasketId()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/digikala/dms/model/design/SerialItems;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v2    # "product":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    goto :goto_f

    .line 267
    :cond_3d
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mListener:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;

    iget-wide v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableAmount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;->onPartialButtonClick(Ljava/util/ArrayList;Ljava/lang/Long;)V

    .line 269
    .end local v0    # "returnedProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SerialItems;>;"
    :cond_48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 224
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 226
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mOrderId:Ljava/lang/String;

    .line 228
    :cond_15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 232
    const v0, 0x7f0c0046

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 234
    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayable:Landroid/widget/TextView;

    .line 235
    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayableTitle:Landroid/widget/TextView;

    .line 236
    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->backButton:Landroid/widget/ImageButton;

    .line 237
    const v1, 0x7f090172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->scanBTN:Landroid/widget/TextView;

    .line 238
    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->deliverItemsButton:Landroid/support/design/widget/FloatingActionButton;

    .line 239
    return-object v0
.end method

.method public onDetach()V
    .registers 2

    .line 298
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mListener:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;

    .line 300
    return-void
.end method

.method public onItemClick(Lio/realm/RealmList;I)V
    .registers 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 304
    .local p1, "serialItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 305
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u0627\u0646\u062a\u062e\u0627\u0628 \u0633\u0631\u06cc\u0627\u0644 \u0628\u0627\u0631\u06a9\u062f"

    .line 306
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(Ljava/util/Collection;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;

    invoke-direct {v1, p0, p2}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;I)V

    .line 308
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 396
    :cond_28
    return-void
.end method

.method public onItemClickBasket(Lio/realm/RealmList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1    # Lio/realm/RealmList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "orderItemId"    # Ljava/lang/String;
    .param p4, "basketId"    # Ljava/lang/String;
    .param p5, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 403
    .local p1, "batchItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_76

    if-eqz p1, :cond_76

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v0, "batchItemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/BatchItem;

    .line 406
    .local v2, "batchItem":Lcom/digikala/dms/model/domain/BatchItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u0628\u0633\u062a\u0647  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/BatchItem;->getItemBatchId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\u0642\u06cc\u0645\u062a \u0645\u0635\u0631\u0641 \u06a9\u0646\u0646\u062f\u0647 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/BatchItem;->getConsumerPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\u062a\u0627\u0631\u06cc\u062e \u0627\u0646\u0642\u0636\u0627 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/BatchItem;->getExpireDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v2    # "batchItem":Lcom/digikala/dms/model/domain/BatchItem;
    goto :goto_11

    .line 410
    :cond_4f
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u0627\u0646\u062a\u062e\u0627\u0628 \u0628\u0633\u062a\u0647"

    .line 411
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 412
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(Ljava/util/Collection;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    new-instance v9, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;Ljava/lang/String;Lio/realm/RealmList;Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    invoke-virtual {v1, v9}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 556
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 558
    .end local v0    # "batchItemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_76
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 562
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 563
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 250
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 252
    const-string v0, "check_list"

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iget-object v1, v1, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    const-string v0, "reject_reason"

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iget-object v1, v1, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mRejectReasonsTemp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 254
    const-string v0, "returned_product"

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->nonRealmReturnedProducts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 255
    const-string v0, "returned_product_count"

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iget-object v1, v1, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 256
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 110
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 111
    if-nez p2, :cond_d

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->nonRealmReturnedProducts:Ljava/util/ArrayList;

    goto :goto_15

    .line 114
    :cond_d
    const-string v0, "returned_product"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->nonRealmReturnedProducts:Ljava/util/ArrayList;

    .line 116
    :goto_15
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getRejectReasonFromDatabase()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->rejectReasons:Ljava/util/List;

    .line 117
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 118
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 119
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "orderId"

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mOrderId:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    .line 122
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    if-eqz v1, :cond_170

    .line 125
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getShippingCostConfig()Lio/realm/RealmList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getShippingCostConfig()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    if-lez v1, :cond_80

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4f
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getShippingCostConfig()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    if-ge v1, v3, :cond_77

    .line 128
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getShippingCostConfig()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->getThreshold()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 131
    .end local v1    # "i":I
    :cond_77
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    :cond_80
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v1

    .line 138
    .local v1, "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    if-eqz v1, :cond_170

    invoke-virtual {v1}, Lio/realm/RealmList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_170

    .line 140
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 141
    new-instance v10, Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v7, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->nonRealmReturnedProducts:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->rejectReasons:Ljava/util/List;

    move-object v3, v10

    move-object v6, v1

    move-object v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;)V

    iput-object v10, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 142
    if-eqz p2, :cond_d2

    .line 144
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    const-string v4, "check_list"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 145
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    const-string v4, "reject_reason"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mRejectReasonsTemp:Ljava/util/ArrayList;

    .line 146
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    const-string v4, "returned_product_count"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v3, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    .line 148
    :cond_d2
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 150
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_ef

    .line 151
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayable:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayableTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12d

    .line 154
    :cond_ef
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentStatus()I

    move-result v3

    if-ne v3, v4, :cond_12d

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getRemainingAmount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_12d

    .line 155
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayable:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayableTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getRemainingAmount()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableAmount:J

    .line 158
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayable:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->payableAmount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " \u0631\u06cc\u0627\u0644 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_12d
    :goto_12d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mShipmentItems:Ljava/util/List;

    .line 163
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_138
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/BasketItems;

    .line 164
    .local v3, "basketItem":Lcom/digikala/dms/model/domain/BasketItems;
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->mShipmentItems:Ljava/util/List;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    .end local v3    # "basketItem":Lcom/digikala/dms/model/domain/BasketItems;
    goto :goto_138

    .line 167
    :cond_14e
    new-instance v2, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    new-instance v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V

    invoke-direct {v2, v3}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;-><init>(Lcom/digikala/dms/helper/touch/SwipeControllerActions;)V

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->swipeMenuCallback:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    .line 184
    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->swipeMenuCallback:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 185
    .local v2, "itemTouchhelper":Landroid/support/v7/widget/helper/ItemTouchHelper;
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 187
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$2;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$2;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 197
    .end local v1    # "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v2    # "itemTouchhelper":Landroid/support/v7/widget/helper/ItemTouchHelper;
    :cond_170
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->backButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$3;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$3;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->scanBTN:Landroid/widget/TextView;

    new-instance v2, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$4;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$4;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->deliverItemsButton:Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$5;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$5;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
.end method

.method public openInputDialog()V
    .registers 6

    .line 583
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 584
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->CENTER:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 585
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonsGravity(Lcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000af

    .line 586
    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 587
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "\u0633\u0631\u06cc\u0627\u0644 \u0628\u0627\u0631\u06a9\u062f \u0631\u0627 \u0648\u0627\u0631\u062f \u06a9\u0646\u06cc\u062f"

    const-string v3, ""

    new-instance v4, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V

    .line 588
    invoke-virtual {v0, v2, v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 621
    :cond_3a
    return-void
.end method

.method public openScanDialog()V
    .registers 3

    .line 624
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 625
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->CENTER:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 626
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonsGravity(Lcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000b7

    .line 627
    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000b0

    .line 628
    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000af

    .line 629
    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 630
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$10;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$10;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V

    .line 631
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$9;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$9;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V

    .line 638
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 647
    :cond_50
    return-void
.end method

.method public scanFromFragment()V
    .registers 3

    .line 579
    invoke-static {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->forSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object v0

    const v1, 0x7f100087

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    .line 580
    return-void
.end method

.method public selectBatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "mSerialItem"    # Ljava/lang/String;
    .param p2, "orderItemId"    # Ljava/lang/String;
    .param p3, "basketId"    # Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_44

    .line 670
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x27c5bf1d

    if-eq v3, v4, :cond_27

    const v4, -0x1ebb820f

    if-eq v3, v4, :cond_1d

    goto :goto_31

    :cond_1d
    const-string v3, "scan_for_insert"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_27
    const-string v3, "scan_for_delete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, -0x1

    :goto_32
    packed-switch v0, :pswitch_data_46

    .line 677
    return v1

    .line 675
    :pswitch_36
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->scanBatchId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 672
    :pswitch_3d
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->removeBatchItemFromReturnItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 680
    :cond_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_36
    .end packed-switch
.end method

.method public selectScan(Ljava/lang/String;)Z
    .registers 7
    .param p1, "mSerialItem"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_44

    .line 652
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x27c5bf1d

    if-eq v3, v4, :cond_27

    const v4, -0x1ebb820f

    if-eq v3, v4, :cond_1d

    goto :goto_31

    :cond_1d
    const-string v3, "scan_for_insert"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_27
    const-string v3, "scan_for_delete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, -0x1

    :goto_32
    packed-switch v0, :pswitch_data_46

    .line 659
    return v1

    .line 657
    :pswitch_36
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-virtual {v0, p1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->scanSerialId(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 654
    :pswitch_3d
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->adapter:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-virtual {v0, p1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->removeItemFromReturnItem(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 662
    :cond_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_36
    .end packed-switch
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass1 (com.digikala.dms.view.fragment.PartialDeliverFragment$1)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;
.super Lcom/digikala/dms/helper/touch/SwipeControllerActions;
.source "PartialDeliverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 167
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-direct {p0}, Lcom/digikala/dms/helper/touch/SwipeControllerActions;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightClicked(I)V
    .registers 9
    .param p1, "position"    # I

    .line 170
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    sget-object v1, Lcom/digikala/dms/util/Constant;->Companion:Lcom/digikala/dms/util/Constant$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/util/Constant$Companion;->getEXTRA_SCAN_FOR_DELETE()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 172
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->openScanDialog()V

    .line 173
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iput p1, v0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->index_delete:I

    goto :goto_66

    .line 175
    :cond_2a
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v2

    sget-object v0, Lcom/digikala/dms/util/Constant;->Companion:Lcom/digikala/dms/util/Constant$Companion;

    .line 176
    invoke-virtual {v0}, Lcom/digikala/dms/util/Constant$Companion;->getEXTRA_SCAN_FOR_DELETE()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 177
    invoke-static {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 178
    invoke-static {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBasketId()Ljava/lang/String;

    move-result-object v5

    .line 175
    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->onItemClickBasket(Lio/realm/RealmList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    :goto_66
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass10 (com.digikala.dms.view.fragment.PartialDeliverFragment$10)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$10;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->openScanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 631
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$10;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .registers 4
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "which"    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 634
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$10;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->openInputDialog()V

    .line 636
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass2 (com.digikala.dms.view.fragment.PartialDeliverFragment$2)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PartialDeliverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 187
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$2;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 190
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$2;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->swipeMenuCallback:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-virtual {v0, p1}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->onDraw(Landroid/graphics/Canvas;)V

    .line 191
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass3 (com.digikala.dms.view.fragment.PartialDeliverFragment$3)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$3;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 197
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$3;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$3;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 201
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass4 (com.digikala.dms.view.fragment.PartialDeliverFragment$4)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$4;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 204
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$4;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$4;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    sget-object v1, Lcom/digikala/dms/util/Constant;->Companion:Lcom/digikala/dms/util/Constant$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/util/Constant$Companion;->getEXTRA_SCAN_FOR_INSERT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$4;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->openScanDialog()V

    .line 209
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass5 (com.digikala.dms.view.fragment.PartialDeliverFragment$5)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$5;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 212
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$5;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$5;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->onButtonPressed()V

    .line 216
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass6 (com.digikala.dms.view.fragment.PartialDeliverFragment$6)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->onItemClick(Lio/realm/RealmList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 308
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iput p2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .registers 14
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "which"    # I
    .param p4, "text"    # Ljava/lang/CharSequence;

    .line 312
    const-string v0, "TAG"

    const-string v1, "onSelection: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    sget-object v1, Lcom/digikala/dms/util/Constant;->Companion:Lcom/digikala/dms/util/Constant$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/util/Constant$Companion;->getEXTRA_SCAN_FOR_INSERT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->selectScan(Ljava/lang/String;)Z

    move-result v0

    .line 315
    .local v0, "flag":Z
    if-eqz v0, :cond_18d

    .line 316
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v1

    if-eqz v1, :cond_18d

    .line 317
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v2}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->val$position:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$102(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 318
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6c

    .line 319
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/activity/ShipmentActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/activity/ShipmentActivity;->setToZero(Z)V

    .line 325
    :cond_6c
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v1, v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_bb

    .line 326
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v1, v3, v4}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$202(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7c
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v2, v2, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_bb

    .line 328
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v2}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v4, v4, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_b8

    .line 329
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getShippingCostConfig()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->getShippingCost()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$202(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 330
    goto :goto_bb

    .line 327
    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 334
    .end local v1    # "i":I
    :cond_bb
    :goto_bb
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelection: orderId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", PackId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/realm/internal/SyncObjectServerFacade;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v1, "mserialItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v2, v2, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_147

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/BasketItems;

    .line 337
    .local v3, "basketItem":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_113
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_146

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 338
    .local v5, "orderItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getSerialItemList()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_127
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_145

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 339
    .local v7, "serialItem":Ljava/lang/String;
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_144

    .line 340
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v7    # "serialItem":Ljava/lang/String;
    :cond_144
    goto :goto_127

    .line 342
    .end local v5    # "orderItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    :cond_145
    goto :goto_113

    .line 343
    .end local v3    # "basketItem":Lcom/digikala/dms/model/domain/BasketItems;
    :cond_146
    goto :goto_ff

    .line 344
    :cond_147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v2, "serialItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SerialItems;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_150
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_168

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 346
    .local v4, "p":Ljava/lang/String;
    new-instance v5, Lcom/digikala/dms/model/design/SerialItems;

    invoke-direct {v5}, Lcom/digikala/dms/model/design/SerialItems;-><init>()V

    .line 347
    .local v5, "serialItem":Lcom/digikala/dms/model/design/SerialItems;
    invoke-virtual {v5, v4}, Lcom/digikala/dms/model/design/SerialItems;->setSerialItem(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v4    # "p":Ljava/lang/String;
    .end local v5    # "serialItem":Lcom/digikala/dms/model/design/SerialItems;
    goto :goto_150

    .line 389
    :cond_168
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayable:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v5}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$6;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v7}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$200(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " \u0631\u06cc\u0627\u0644 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    .end local v1    # "mserialItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "serialItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SerialItems;>;"
    :cond_18d
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass7 (com.digikala.dms.view.fragment.PartialDeliverFragment$7)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->onItemClickBasket(Lio/realm/RealmList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

.field final synthetic val$basketId:Ljava/lang/String;

.field final synthetic val$batchItems:Lio/realm/RealmList;

.field final synthetic val$orderItemId:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;Ljava/lang/String;Lio/realm/RealmList;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 413
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$batchItems:Lio/realm/RealmList;

    iput-object p4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$orderItemId:Ljava/lang/String;

    iput-object p5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$basketId:Ljava/lang/String;

    iput p6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .registers 15
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "which"    # I
    .param p4, "text"    # Ljava/lang/CharSequence;

    .line 416
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$type:Ljava/lang/String;

    iput-object v1, v0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v0, "serialItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SerialItems;>;"
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 423
    .local v2, "shipmentItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/BatchItem;

    .line 424
    .local v4, "batchItem":Lcom/digikala/dms/model/domain/BatchItem;
    new-instance v5, Lcom/digikala/dms/model/design/SerialItems;

    invoke-direct {v5}, Lcom/digikala/dms/model/design/SerialItems;-><init>()V

    .line 425
    .local v5, "serialItem":Lcom/digikala/dms/model/design/SerialItems;
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/BatchItem;->getItemBatchId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$batchItems:Lio/realm/RealmList;

    invoke-virtual {v7, p3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/BatchItem;->getItemBatchId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_73

    .line 426
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBasketId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SerialItems;->setBasketId(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/BatchItem;->getCount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SerialItems;->setCount(I)V

    .line 428
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/BatchItem;->getItemBatchId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SerialItems;->setItemBatchId(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SerialItems;->setOrderItemId(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v4    # "batchItem":Lcom/digikala/dms/model/domain/BatchItem;
    .end local v5    # "serialItem":Lcom/digikala/dms/model/design/SerialItems;
    :cond_73
    goto :goto_29

    .line 433
    .end local v2    # "shipmentItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    :cond_74
    goto :goto_15

    .line 434
    :cond_75
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v1, v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->EXTRA_SCAN_ACTION:Ljava/lang/String;

    const-string v2, "scan_for_insert"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_15b

    .line 435
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$batchItems:Lio/realm/RealmList;

    invoke-virtual {v5, p3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BatchItem;->getItemBatchId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$orderItemId:Ljava/lang/String;

    iget-object v7, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$basketId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->selectBatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 436
    .local v1, "flag":Z
    if-eqz v1, :cond_159

    .line 437
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v5}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$position:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v5

    if-eqz v5, :cond_159

    .line 438
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v6}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v8}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$position:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$102(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 439
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v5}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gtz v7, :cond_e5

    .line 440
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-virtual {v5}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/view/activity/ShipmentActivity;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/digikala/dms/view/activity/ShipmentActivity;->setToZero(Z)V

    .line 442
    :cond_e5
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v5, v5, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_134

    .line 443
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v5, v3, v4}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$202(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 444
    nop

    .local v2, "i":I
    :goto_f5
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_134

    .line 445
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v5, v5, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_131

    .line 446
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v4, v4, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getShippingCostConfig()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->getShippingCost()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$202(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 447
    goto :goto_134

    .line 444
    :cond_131
    add-int/lit8 v2, v2, 0x1

    goto :goto_f5

    .line 490
    .end local v2    # "i":I
    :cond_134
    :goto_134
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v2, v2, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayable:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v6}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$200(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " \u0631\u06cc\u0627\u0644 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    .end local v1    # "flag":Z
    :cond_159
    goto/16 :goto_212

    .line 495
    :cond_15b
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$batchItems:Lio/realm/RealmList;

    invoke-virtual {v5, p3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BatchItem;->getItemBatchId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$orderItemId:Ljava/lang/String;

    iget-object v7, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$basketId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->selectBatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 496
    .restart local v1    # "flag":Z
    if-eqz v1, :cond_212

    .line 497
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v5}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$position:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v5

    if-eqz v5, :cond_212

    .line 498
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v6, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v6}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v8}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->val$position:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$102(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 502
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v5, v5, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1f5

    .line 503
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v5, v3, v4}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$202(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 504
    nop

    .restart local v2    # "i":I
    :goto_1b6
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f5

    .line 505
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v5, v5, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_1f2

    .line 506
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v4, v4, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getShippingCostConfig()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->getShippingCost()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$202(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 507
    goto :goto_1f5

    .line 504
    :cond_1f2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b6

    .line 511
    .end local v2    # "i":I
    :cond_1f5
    :goto_1f5
    invoke-static {}, Lio/realm/internal/SyncObjectServerFacade;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$1;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$1;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;)V

    new-instance v5, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$2;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$2;-><init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;)V

    invoke-static {v2, v3, v0, v4, v5}, Lcom/digikala/dms/helper/webservice/WebApi;->makeDynamicShippingCost(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 554
    .end local v1    # "flag":Z
    :cond_212
    :goto_212
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass7.AnonymousClass1 (com.digikala.dms.view.fragment.PartialDeliverFragment$7$1)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$1;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
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
.field final synthetic this$1:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;

    .line 511
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$1;->this$1:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 511
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 515
    :try_start_0
    const-string v0, "Data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dynamic_shipping_cost"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "shipping_cost"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, "shippingCost":I
    const-string v1, "newShippingCost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shipping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v1, "newShippingCost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payableAmount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$1;->this$1:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$1;->this$1:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;

    iget-object v1, v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v1, v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayable:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$1;->this$1:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " \u0631\u06cc\u0627\u0644 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6e} :catch_6f

    .line 523
    .end local v0    # "shippingCost":I
    goto :goto_8d

    .line 520
    :catch_6f
    move-exception v0

    .line 521
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newShippingCost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 524
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_8d
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass7.AnonymousClass2 (com.digikala.dms.view.fragment.PartialDeliverFragment$7$2)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$2;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;

    .line 525
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$2;->this$1:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "message":Ljava/lang/String;
    :try_start_1
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_a

    .line 531
    const-string/jumbo v1, "\u0644\u0637\u0641\u0627 \u0628\u0647 \u0627\u06cc\u0646\u062a\u0631\u0646\u062a \u0648\u0635\u0644 \u0634\u0648\u06cc\u062f!"

    move-object v0, v1

    goto :goto_32

    .line 532
    :cond_a
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_12

    .line 533
    const-string v1, "The server could not be found. Please try again after some time!!"

    move-object v0, v1

    goto :goto_32

    .line 534
    :cond_12
    instance-of v1, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v1, :cond_1a

    .line 535
    const-string v1, "Cannot connect to Internet...Please check your connection!"

    move-object v0, v1

    goto :goto_32

    .line 536
    :cond_1a
    instance-of v1, p1, Lcom/android/volley/ParseError;

    if-eqz v1, :cond_22

    .line 537
    const-string v1, "Parsing error! Please try again after some time!!"

    move-object v0, v1

    goto :goto_32

    .line 538
    :cond_22
    instance-of v1, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v1, :cond_2b

    .line 539
    const-string/jumbo v1, "\u0644\u0637\u0641\u0627 \u0628\u0647 \u0627\u06cc\u0646\u062a\u0631\u0646\u062a \u0648\u0635\u0644 \u0634\u0648\u06cc\u062f!"

    move-object v0, v1

    goto :goto_32

    .line 540
    :cond_2b
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_32

    .line 541
    const-string v1, "Connection TimeOut! Please check your internet connection."

    move-object v0, v1

    .line 543
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7$2;->this$1:Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;

    iget-object v1, v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$7;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_43

    .line 546
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_47

    .line 544
    :catch_43
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 547
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass8 (com.digikala.dms.view.fragment.PartialDeliverFragment$8)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->openInputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 588
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .registers 11
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "input"    # Ljava/lang/CharSequence;

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->selectScan(Ljava/lang/String;)Z

    move-result v0

    .line 593
    .local v0, "flag":Z
    if-eqz v0, :cond_a8

    .line 594
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v2}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$000(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget v5, v5, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->index_delete:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$102(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 599
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v1, v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_82

    .line 600
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$202(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 601
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_43
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v2, v2, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_82

    .line 602
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v2}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v4, v4, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shippingCost:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_7f

    .line 603
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getShippingCostConfig()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShippingCostConfig;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->getShippingCost()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$202(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;J)J

    .line 604
    goto :goto_82

    .line 601
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 608
    .end local v1    # "i":I
    :cond_82
    :goto_82
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    iget-object v1, v1, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->amountPayable:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$100(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$8;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-static {v5}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->access$200(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)J

    move-result-wide v5

    const/4 v7, 0x0

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " \u0631\u06cc\u0627\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a8} :catch_a9

    .line 614
    .end local v0    # "flag":Z
    :cond_a8
    goto :goto_aa

    .line 612
    :catch_a9
    move-exception v0

    .line 615
    :goto_aa
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.AnonymousClass9 (com.digikala.dms.view.fragment.PartialDeliverFragment$9)
.class Lcom/digikala/dms/view/fragment/PartialDeliverFragment$9;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->openScanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialDeliverFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    .line 638
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$9;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .registers 4
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "which"    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 641
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDeliverFragment$9;->this$0:Lcom/digikala/dms/view/fragment/PartialDeliverFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialDeliverFragment;->scanFromFragment()V

    .line 642
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialDeliverFragment.OnPartialButtonClickListener (com.digikala.dms.view.fragment.PartialDeliverFragment$OnPartialButtonClickListener)
.class public interface abstract Lcom/digikala/dms/view/fragment/PartialDeliverFragment$OnPartialButtonClickListener;
.super Ljava/lang/Object;
.source "PartialDeliverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/PartialDeliverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPartialButtonClickListener"
.end annotation


# virtual methods
.method public abstract onPartialButtonClick(Ljava/util/ArrayList;Ljava/lang/Long;)V
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
.end method
