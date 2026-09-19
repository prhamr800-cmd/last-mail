###### Class com.digikala.dms.adapter.ShipmentsListAdapter (com.digikala.dms.adapter.ShipmentsListAdapter)
.class public Lcom/digikala/dms/adapter/ShipmentsListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShipmentsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "shipments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/domain/Shipment;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mContext:Landroid/content/Context;

    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method static synthetic access$700(Lcom/digikala/dms/adapter/ShipmentsListAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    .line 31
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/digikala/dms/adapter/ShipmentsListAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    .line 31
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 31
    check-cast p1, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;I)V
    .registers 7
    .param p1, "holder"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;
    .param p2, "position"    # I

    .line 52
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    if-ne v0, v2, :cond_27

    .line 53
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$000(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_b6

    .line 54
    :cond_27
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4b

    .line 55
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$000(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_b6

    .line 56
    :cond_4b
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6f

    .line 57
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$000(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_b6

    .line 58
    :cond_6f
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_92

    .line 59
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$000(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_b6

    .line 60
    :cond_92
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b6

    .line 61
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$000(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    :cond_b6
    :goto_b6
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$100(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$200(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$300(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->isTupleIsSyncedWithServer()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_110

    .line 67
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$400(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_117

    .line 69
    :cond_110
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$400(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_117
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-lez v0, :cond_1cc

    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/BasketItems;->getBasketId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1cc

    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/BasketItems;->getBasketId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 74
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getFmcg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 75
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$500(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getBasketCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u0633\u0628\u062f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c4

    .line 77
    :cond_19c
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$500(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getBasketCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u0641\u0642\u0631\u0647"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_1c4
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$500(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setVisibility(I)V

    goto :goto_1d3

    .line 82
    :cond_1cc
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$500(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setVisibility(I)V

    .line 85
    :goto_1d3
    const-string v0, ""

    .line 87
    .local v0, "deliveryTime":Ljava/lang/String;
    :try_start_1d5
    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1fd

    .line 88
    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1fc} :catch_1fe

    move-object v0, v1

    .line 92
    :cond_1fd
    goto :goto_202

    .line 90
    :catch_1fe
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_202
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$600(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;

    move-result-object v1

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->access$000(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;-><init>(Lcom/digikala/dms/adapter/ShipmentsListAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;-><init>(Lcom/digikala/dms/adapter/ShipmentsListAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method showAlert(Landroid/content/Context;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "priorityNumber"    # I

    .line 139
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 141
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0c002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, "toastRoot":Landroid/view/View;
    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 143
    .local v2, "alert_txt":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f1000aa

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 146
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 147
    const/16 v5, 0x11

    invoke-virtual {v3, v5, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 148
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 149
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 150
    return-void
.end method

###### Class com.digikala.dms.adapter.ShipmentsListAdapter.AnonymousClass1 (com.digikala.dms.adapter.ShipmentsListAdapter$1)
.class Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;
.super Ljava/lang/Object;
.source "ShipmentsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/ShipmentsListAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/ShipmentsListAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    .line 96
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    iput p2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getCloseListSize(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5f

    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->access$700(Lcom/digikala/dms/adapter/ShipmentsListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getCloseListSize(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->access$700(Lcom/digikala/dms/adapter/ShipmentsListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getPriority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_5f

    .line 100
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    invoke-static {v2}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->access$700(Lcom/digikala/dms/adapter/ShipmentsListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getPriority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->showAlert(Landroid/content/Context;I)V

    .line 102
    :cond_5f
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->access$800(Lcom/digikala/dms/adapter/ShipmentsListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "order_id"

    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    invoke-static {v2}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->access$700(Lcom/digikala/dms/adapter/ShipmentsListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$1;->this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->access$800(Lcom/digikala/dms/adapter/ShipmentsListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

###### Class com.digikala.dms.adapter.ShipmentsListAdapter.ShipmentViewHolder (com.digikala.dms.adapter.ShipmentsListAdapter$ShipmentViewHolder)
.class public Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShipmentsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/adapter/ShipmentsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShipmentViewHolder"
.end annotation


# instance fields
.field private basketCountTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private deliveryTimeTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private itemNoTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private itemView:Landroid/view/View;

.field private orderIdTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private postalAddressTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private shipment_sync_status_img:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;


# direct methods
.method public constructor <init>(Lcom/digikala/dms/adapter/ShipmentsListAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 126
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->this$0:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    .line 127
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 128
    iput-object p2, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->itemView:Landroid/view/View;

    .line 129
    const v0, 0x7f090161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->itemNoTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 130
    const v0, 0x7f090162

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->orderIdTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 131
    const v0, 0x7f09015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->basketCountTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 132
    const v0, 0x7f090164

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->postalAddressTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 133
    const v0, 0x7f090160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->deliveryTimeTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 134
    const v0, 0x7f09015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->shipment_sync_status_img:Landroid/widget/ImageView;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->itemNoTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->orderIdTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->postalAddressTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->shipment_sync_status_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->basketCountTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;)Lcom/digikala/dms/view/custom/XeiTextView;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentsListAdapter$ShipmentViewHolder;->deliveryTimeTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    return-object v0
.end method
