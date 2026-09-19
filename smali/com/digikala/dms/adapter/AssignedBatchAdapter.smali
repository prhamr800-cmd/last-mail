###### Class com.digikala.dms.adapter.AssignedBatchAdapter (com.digikala.dms.adapter.AssignedBatchAdapter)
.class public Lcom/digikala/dms/adapter/AssignedBatchAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AssignedBatchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

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

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedShipmentsCount:I

.field private mShipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/design/widget/FloatingActionButton;Landroid/support/v4/app/FragmentManager;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p6, "confirmShipmentsFAB"    # Landroid/support/design/widget/FloatingActionButton;
    .param p7, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/support/design/widget/FloatingActionButton;",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .line 40
    .local p2, "shipments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/domain/Shipment;>;"
    .local p3, "isSelectedShipments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p4, "settledBottomSheets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "expandedBotomSheets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mContext:Landroid/content/Context;

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    .line 44
    iput-object p3, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSelectedShipments:Ljava/util/ArrayList;

    .line 45
    iput-object p4, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSettledBottomSheets:Ljava/util/ArrayList;

    .line 46
    iput-object p5, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsExpandedBottomSheets:Ljava/util/ArrayList;

    .line 47
    iput-object p6, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    .line 48
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 49
    iput-object p7, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 50
    return-void
.end method

.method static synthetic access$1000(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 27
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsExpandedBottomSheets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Landroid/support/v4/app/FragmentManager;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 27
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 27
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSettledBottomSheets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/digikala/dms/adapter/AssignedBatchAdapter;I)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;
    .param p1, "x1"    # I

    .line 27
    invoke-direct {p0, p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->toggleRowSelection(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 27
    iget v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mSelectedShipmentsCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Landroid/support/design/widget/FloatingActionButton;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 27
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 27
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    return-object v0
.end method

.method private toggleRowSelection(I)V
    .registers 4
    .param p1, "position"    # I

    .line 151
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSelectedShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 152
    iget v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mSelectedShipmentsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mSelectedShipmentsCount:I

    goto :goto_1b

    .line 154
    :cond_15
    iget v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mSelectedShipmentsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mSelectedShipmentsCount:I

    .line 156
    :goto_1b
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSelectedShipments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSelectedShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->notifyDataSetChanged()V

    .line 158
    return-void
.end method


# virtual methods
.method public deSelectAllShipment()V
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 66
    iget-object v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSelectedShipments:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 68
    .end local v1    # "i":I
    :cond_1e
    iput v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mSelectedShipmentsCount:I

    .line 69
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 70
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->notifyItemRangeChanged(II)V

    .line 72
    :cond_2e
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 27
    check-cast p1, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;
    .param p2, "position"    # I

    .line 82
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$000(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$100(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_e8

    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/BasketItems;->getBasketId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/BasketItems;->getBasketId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e8

    .line 86
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getFmcg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 87
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$200(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getBasketCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u0633\u0628\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e0

    .line 89
    :cond_b8
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$200(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getBasketCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u0641\u0642\u0631\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_e0
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$200(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f1

    .line 94
    :cond_e8
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$200(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_f1
    const-string v0, ""

    .line 99
    .local v0, "deliveryTime":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_f4
    iget-object v3, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_108} :catch_10a

    move-object v0, v3

    .line 102
    goto :goto_10e

    .line 100
    :catch_10a
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_10e
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$300(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSelectedShipments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_13a

    iget-object v3, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSelectedShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 106
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$400(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f08009e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_144

    .line 108
    :cond_13a
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$400(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0800d9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :goto_144
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$500(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 113
    .local v3, "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    const/4 v4, 0x0

    .line 114
    .local v4, "bottomMargin":I
    invoke-virtual {p0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne p2, v5, :cond_163

    .line 115
    iget-object v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07004e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 117
    :cond_163
    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 119
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$500(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;-><init>(Lcom/digikala/dms/adapter/AssignedBatchAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-static {p1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->access$500(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;-><init>(Lcom/digikala/dms/adapter/AssignedBatchAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 143
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 76
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;-><init>(Lcom/digikala/dms/adapter/AssignedBatchAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public scanItem(Ljava/lang/String;)V
    .registers 5
    .param p1, "orderId"    # Ljava/lang/String;

    .line 162
    const/4 v0, -0x1

    .line 163
    .local v0, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 164
    iget-object v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 165
    move v0, v1

    .line 166
    goto :goto_21

    .line 163
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    .end local v1    # "i":I
    :cond_21
    :goto_21
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a

    .line 171
    invoke-direct {p0, v0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->toggleRowSelection(I)V

    .line 172
    iget v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mSelectedShipmentsCount:I

    invoke-virtual {p0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->getItemCount()I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 173
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    goto :goto_3a

    .line 175
    :cond_35
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 179
    :cond_3a
    :goto_3a
    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->resetScanEditText()V

    .line 180
    return-void
.end method

.method public selectAllShipment()V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 55
    iget-object v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mIsSelectedShipments:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 57
    .end local v1    # "i":I
    :cond_1f
    invoke-virtual {p0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->getItemCount()I

    move-result v1

    iput v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mSelectedShipmentsCount:I

    .line 58
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mConfirmShipmentsFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    .line 59
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->notifyItemRangeChanged(II)V

    .line 61
    :cond_33
    return-void
.end method

###### Class com.digikala.dms.adapter.AssignedBatchAdapter.AnonymousClass1 (com.digikala.dms.adapter.AssignedBatchAdapter$1)
.class Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;
.super Ljava/lang/Object;
.source "AssignedBatchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/AssignedBatchAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/AssignedBatchAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 119
    iput-object p1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    iput p2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    iget v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->access$600(Lcom/digikala/dms/adapter/AssignedBatchAdapter;I)V

    .line 123
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->access$700(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-virtual {v1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 124
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->access$800(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    goto :goto_28

    .line 126
    :cond_1f
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$1;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->access$800(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 128
    :goto_28
    return-void
.end method

###### Class com.digikala.dms.adapter.AssignedBatchAdapter.AnonymousClass2 (com.digikala.dms.adapter.AssignedBatchAdapter$2)
.class Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;
.super Ljava/lang/Object;
.source "AssignedBatchAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/AssignedBatchAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/AssignedBatchAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 131
    iput-object p1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    iput p2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 134
    new-instance v0, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;-><init>()V

    .line 135
    .local v0, "bottomSheetDialogFragment":Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->access$900(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->setShipment(Lcom/digikala/dms/model/domain/Shipment;)V

    .line 136
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->access$1000(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->setBottomSheetIsExpanded(Ljava/lang/Boolean;)V

    .line 137
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->access$1100(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/view/fragment/dialog/AssignedShipmentDetailsModalBottomSheet;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/AssignedBatchAdapter;->access$1200(Lcom/digikala/dms/adapter/AssignedBatchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$2;->val$position:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 v1, 0x0

    return v1
.end method

###### Class com.digikala.dms.adapter.AssignedBatchAdapter.ShipmentViewHolder (com.digikala.dms.adapter.AssignedBatchAdapter$ShipmentViewHolder)
.class public Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AssignedBatchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/adapter/AssignedBatchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShipmentViewHolder"
.end annotation


# instance fields
.field private basketCountTextView:Landroid/widget/TextView;

.field private checkBox:Landroid/widget/ImageView;

.field private deliveryTimeTextView:Landroid/widget/TextView;

.field private itemView:Landroid/view/View;

.field private orderIdTextView:Landroid/widget/TextView;

.field private postalAddressTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;


# direct methods
.method public constructor <init>(Lcom/digikala/dms/adapter/AssignedBatchAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 191
    iput-object p1, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->this$0:Lcom/digikala/dms/adapter/AssignedBatchAdapter;

    .line 192
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 194
    iput-object p2, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->itemView:Landroid/view/View;

    .line 196
    const v0, 0x7f090158

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->checkBox:Landroid/widget/ImageView;

    .line 197
    const v0, 0x7f09015b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->orderIdTextView:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f09015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->postalAddressTextView:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f09015a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->deliveryTimeTextView:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f090159

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->basketCountTextView:Landroid/widget/TextView;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->orderIdTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->postalAddressTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->basketCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->deliveryTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->checkBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/adapter/AssignedBatchAdapter$ShipmentViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method
