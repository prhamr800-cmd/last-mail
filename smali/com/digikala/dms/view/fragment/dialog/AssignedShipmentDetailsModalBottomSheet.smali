###### Class com.digikala.dms.view.fragment.dialog.AssignedShipmentDetailsModalBottomSheet (com.digikala.dms.view.fragment.dialog.AssignedShipmentDetailsModalBottomSheet)
.class public Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "AssignedShipmentDetailsModalBottomSheet.java"


# instance fields
.field private mBottomSheetBehaviorCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field private mBottomSheetIsExpanded:Ljava/lang/Boolean;

.field private mShipment:Lcom/digikala/dms/model/domain/Shipment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$1;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$1;-><init>(Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mBottomSheetBehaviorCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 22
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mBottomSheetIsExpanded:Ljava/lang/Boolean;

    return-object p1
.end method

.method private fillData(Landroid/app/Dialog;)V
    .registers 14
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 78
    const v0, 0x7f090084

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x7f090169

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 81
    .local v1, "shipmentItemsRowContainer":Landroid/widget/LinearLayout;
    :try_start_12
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getBasketCount()I

    .line 87
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c0

    .line 88
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_33
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    if-ge v4, v5, :cond_bc

    .line 89
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 90
    .local v5, "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c008d

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 91
    .local v6, "row":Landroid/view/View;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v7, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x24

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 93
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const v8, 0x7f090168

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 95
    .local v8, "codeTextView":Landroid/widget/TextView;
    const v9, 0x7f09016b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 96
    .local v9, "descTextView":Landroid/widget/TextView;
    const v10, 0x7f09016a

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 97
    .local v10, "countTextView":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_b8} :catch_c1

    .line 88
    .end local v5    # "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v6    # "row":Landroid/view/View;
    .end local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "codeTextView":Landroid/widget/TextView;
    .end local v9    # "descTextView":Landroid/widget/TextView;
    .end local v10    # "countTextView":Landroid/widget/TextView;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_33

    .line 87
    .end local v4    # "j":I
    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_26

    .line 105
    .end local v3    # "i":I
    :cond_c0
    goto :goto_c2

    .line 103
    :catch_c1
    move-exception v2

    .line 106
    :goto_c2
    return-void
.end method


# virtual methods
.method public setBottomSheetIsExpanded(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "expandedBottomSheets"    # Ljava/lang/Boolean;

    .line 47
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mBottomSheetIsExpanded:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method public setShipment(Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 2
    .param p1, "shipment"    # Lcom/digikala/dms/model/domain/Shipment;

    .line 43
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    .line 44
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I

    .line 52
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/BottomSheetDialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 54
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0041

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 57
    const v1, 0x7f0900ac

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    .line 59
    .local v1, "postalAddressCardView":Landroid/support/v7/widget/CardView;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 60
    .local v2, "params":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v3

    .line 61
    .local v3, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v3, :cond_41

    instance-of v4, v3, Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v4, :cond_41

    .line 62
    move-object v4, v3

    check-cast v4, Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v5, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->mBottomSheetBehaviorCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    .line 65
    new-instance v4, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$2;

    invoke-direct {v4, p0, v3, v1}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$2;-><init>(Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;Landroid/support/design/widget/CoordinatorLayout$Behavior;Landroid/support/v7/widget/CardView;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/CardView;->post(Ljava/lang/Runnable;)Z

    .line 74
    :cond_41
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->fillData(Landroid/app/Dialog;)V

    .line 75
    return-void
.end method

###### Class com.digikala.dms.view.fragment.dialog.AssignedShipmentDetailsModalBottomSheet.AnonymousClass1 (com.digikala.dms.view.fragment.dialog.AssignedShipmentDetailsModalBottomSheet$1)
.class Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$1;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "AssignedShipmentDetailsModalBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;

    .line 26
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$1;->this$0:Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "slideOffset"    # F

    .line 39
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 5
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newState"    # I

    .line 29
    const/4 v0, 0x5

    if-ne p2, v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$1;->this$0:Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->dismiss()V

    goto :goto_16

    .line 31
    :cond_9
    const/4 v0, 0x3

    if-ne p2, v0, :cond_16

    .line 32
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$1;->this$0:Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->access$002(Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 34
    :cond_16
    :goto_16
    return-void
.end method

###### Class com.digikala.dms.view.fragment.dialog.AssignedShipmentDetailsModalBottomSheet.AnonymousClass2 (com.digikala.dms.view.fragment.dialog.AssignedShipmentDetailsModalBottomSheet$2)
.class Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$2;
.super Ljava/lang/Object;
.source "AssignedShipmentDetailsModalBottomSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->setupDialog(Landroid/app/Dialog;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;

.field final synthetic val$behavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

.field final synthetic val$postalAddressCardView:Landroid/support/v7/widget/CardView;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;Landroid/support/design/widget/CoordinatorLayout$Behavior;Landroid/support/v7/widget/CardView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;

    .line 65
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$2;->this$0:Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$2;->val$behavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    iput-object p3, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$2;->val$postalAddressCardView:Landroid/support/v7/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$2;->val$behavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    check-cast v0, Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet$2;->val$postalAddressCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1}, Landroid/support/v7/widget/CardView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 69
    return-void
.end method
