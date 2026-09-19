###### Class com.digikala.dms.adapter.SyncDataAdapter (com.digikala.dms.adapter.SyncDataAdapter)
.class public final Lcom/digikala/dms/adapter/SyncDataAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SyncDataAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0013H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0013H\u0016J\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001dJ\u0016\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u000eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/digikala/dms/adapter/SyncDataAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;",
        "context",
        "Landroid/content/Context;",
        "syncListener",
        "Lcom/digikala/dms/helper/touch/OnStartSyncListener;",
        "(Landroid/content/Context;Lcom/digikala/dms/helper/touch/OnStartSyncListener;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "mShipments",
        "Ljava/util/ArrayList;",
        "Lcom/digikala/dms/model/domain/Shipment;",
        "addItem",
        "",
        "newShipment",
        "getItemCount",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "removeById",
        "shipmentId",
        "",
        "updateById",
        "shipment",
        "ShipmentPriorityViewHolder",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mShipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private syncListener:Lcom/digikala/dms/helper/touch/OnStartSyncListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/digikala/dms/helper/touch/OnStartSyncListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "syncListener"    # Lcom/digikala/dms/helper/touch/OnStartSyncListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "syncListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    nop

    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->syncListener:Lcom/digikala/dms/helper/touch/OnStartSyncListener;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getMShipments$p(Lcom/digikala/dms/adapter/SyncDataAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/adapter/SyncDataAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getSyncListener$p(Lcom/digikala/dms/adapter/SyncDataAdapter;)Lcom/digikala/dms/helper/touch/OnStartSyncListener;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/adapter/SyncDataAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->syncListener:Lcom/digikala/dms/helper/touch/OnStartSyncListener;

    return-object v0
.end method

.method public static final synthetic access$setMShipments$p(Lcom/digikala/dms/adapter/SyncDataAdapter;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/adapter/SyncDataAdapter;
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 26
    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setSyncListener$p(Lcom/digikala/dms/adapter/SyncDataAdapter;Lcom/digikala/dms/helper/touch/OnStartSyncListener;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/adapter/SyncDataAdapter;
    .param p1, "<set-?>"    # Lcom/digikala/dms/helper/touch/OnStartSyncListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 26
    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->syncListener:Lcom/digikala/dms/helper/touch/OnStartSyncListener;

    return-void
.end method


# virtual methods
.method public final addItem(Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "newShipment"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newShipment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 36
    .local v0, "size":I
    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/digikala/dms/adapter/SyncDataAdapter;->notifyItemRangeRemoved(II)V

    .line 38
    iget-object v2, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/digikala/dms/adapter/SyncDataAdapter;->notifyItemRangeInserted(II)V

    .line 40
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 76
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->context:Landroid/content/Context;

    const-string v1, "run makeFinalized() getItemCount"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->syncListener:Lcom/digikala/dms/helper/touch/OnStartSyncListener;

    invoke-interface {v0}, Lcom/digikala/dms/helper/touch/OnStartSyncListener;->finalizeSync()V

    .line 79
    :cond_1b
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 26
    check-cast p1, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/SyncDataAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->getMShipment_address()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mShipments[position]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryAddress()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->getMShipment_time()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mShipments[position]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getInvoiceId()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->getShipment_sync_retry_btn()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/adapter/SyncDataAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/digikala/dms/adapter/SyncDataAdapter$onBindViewHolder$1;-><init>(Lcom/digikala/dms/adapter/SyncDataAdapter;I)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/SyncDataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;

    const-string/jumbo v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public final removeById(Ljava/lang/String;)V
    .registers 7
    .param p1, "shipmentId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shipmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, -0x1

    .line 44
    .local v0, "indexOfArray":I
    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_54

    .line 45
    .local v2, "i":I
    iget-object v3, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mShipments[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 46
    move v0, v2

    .line 47
    const-string v1, "SyncDataActivityLogg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shipment size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and index in delete is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in adapter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    goto :goto_54

    .line 44
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 51
    .end local v2    # "i":I
    :cond_54
    :goto_54
    const-string v1, "SyncDataActivityLogg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shipment deleted is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mShipments[indexOfArray]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, -0x1

    if-eq v0, v1, :cond_94

    .line 53
    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, v0}, Lcom/digikala/dms/adapter/SyncDataAdapter;->notifyItemRemoved(I)V

    .line 55
    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/digikala/dms/adapter/SyncDataAdapter;->notifyItemRangeChanged(II)V

    .line 57
    :cond_94
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final updateById(Ljava/lang/String;Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 8
    .param p1, "shipmentId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "shipment"    # Lcom/digikala/dms/model/domain/Shipment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shipmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shipment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const/4 v0, -0x1

    .line 61
    .local v0, "indexOfArray":I
    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2f

    .line 62
    .local v2, "i":I
    iget-object v3, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mShipments[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 63
    move v0, v2

    .line 61
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 65
    .end local v2    # "i":I
    :cond_2f
    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    .line 66
    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0, v0}, Lcom/digikala/dms/adapter/SyncDataAdapter;->notifyItemRemoved(I)V

    .line 68
    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/digikala/dms/adapter/SyncDataAdapter;->notifyItemInserted(I)V

    .line 72
    :cond_42
    return-void
.end method

###### Class com.digikala.dms.adapter.SyncDataAdapter.ShipmentPriorityViewHolder (com.digikala.dms.adapter.SyncDataAdapter$ShipmentPriorityViewHolder)
.class public final Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SyncDataAdapter.kt"

# interfaces
.implements Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/adapter/SyncDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShipmentPriorityViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001fH\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "mShipment_address",
        "Landroid/widget/TextView;",
        "getMShipment_address",
        "()Landroid/widget/TextView;",
        "setMShipment_address",
        "(Landroid/widget/TextView;)V",
        "mShipment_itemNo",
        "getMShipment_itemNo",
        "setMShipment_itemNo",
        "mShipment_time",
        "getMShipment_time",
        "setMShipment_time",
        "mSyncAdapter_item_pb",
        "Landroid/widget/ProgressBar;",
        "getMSyncAdapter_item_pb",
        "()Landroid/widget/ProgressBar;",
        "setMSyncAdapter_item_pb",
        "(Landroid/widget/ProgressBar;)V",
        "shipment_sync_retry_btn",
        "Landroid/widget/ImageView;",
        "getShipment_sync_retry_btn",
        "()Landroid/widget/ImageView;",
        "setShipment_sync_retry_btn",
        "(Landroid/widget/ImageView;)V",
        "onItemClear",
        "",
        "onItemSelected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field private mShipment_address:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mShipment_itemNo:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mShipment_time:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSyncAdapter_item_pb:Landroid/widget/ProgressBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shipment_sync_retry_btn:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 109
    sget v0, Lcom/digikala/dms/R$id;->shipment_priority_row_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v1, "itemView.shipment_priority_row_time"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mShipment_time:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/digikala/dms/R$id;->shipment_priority_row_address:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v1, "itemView.shipment_priority_row_address"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mShipment_address:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/digikala/dms/R$id;->rowRecyclerviewShipmentsPriority_xeiTextView_itemNo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v1, "itemView.rowRecyclerview\u2026iority_xeiTextView_itemNo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mShipment_itemNo:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/digikala/dms/R$id;->syncAdapter_item_pb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "itemView.syncAdapter_item_pb"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mSyncAdapter_item_pb:Landroid/widget/ProgressBar;

    .line 113
    sget v0, Lcom/digikala/dms/R$id;->shipment_sync_retry_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "itemView.shipment_sync_retry_btn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->shipment_sync_retry_btn:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getMShipment_address()Landroid/widget/TextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mShipment_address:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMShipment_itemNo()Landroid/widget/TextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mShipment_itemNo:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMShipment_time()Landroid/widget/TextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mShipment_time:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMSyncAdapter_item_pb()Landroid/widget/ProgressBar;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mSyncAdapter_item_pb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final getShipment_sync_retry_btn()Landroid/widget/ImageView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->shipment_sync_retry_btn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onItemClear()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->itemView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    return-void
.end method

.method public onItemSelected()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->itemView:Landroid/view/View;

    const-string v1, "#B2EBF2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    return-void
.end method

.method public final setMShipment_address(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mShipment_address:Landroid/widget/TextView;

    return-void
.end method

.method public final setMShipment_itemNo(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mShipment_itemNo:Landroid/widget/TextView;

    return-void
.end method

.method public final setMShipment_time(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mShipment_time:Landroid/widget/TextView;

    return-void
.end method

.method public final setMSyncAdapter_item_pb(Landroid/widget/ProgressBar;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/widget/ProgressBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->mSyncAdapter_item_pb:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final setShipment_sync_retry_btn(Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;->shipment_sync_retry_btn:Landroid/widget/ImageView;

    return-void
.end method

###### Class com.digikala.dms.adapter.SyncDataAdapter.AnonymousClass1 (com.digikala.dms.adapter.SyncDataAdapter$onBindViewHolder$1)
.class final Lcom/digikala/dms/adapter/SyncDataAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "SyncDataAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/SyncDataAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic this$0:Lcom/digikala/dms/adapter/SyncDataAdapter;


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/SyncDataAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$onBindViewHolder$1;->this$0:Lcom/digikala/dms/adapter/SyncDataAdapter;

    iput p2, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$onBindViewHolder$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "it"    # Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$onBindViewHolder$1;->this$0:Lcom/digikala/dms/adapter/SyncDataAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/SyncDataAdapter;->access$getSyncListener$p(Lcom/digikala/dms/adapter/SyncDataAdapter;)Lcom/digikala/dms/helper/touch/OnStartSyncListener;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$onBindViewHolder$1;->this$0:Lcom/digikala/dms/adapter/SyncDataAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/SyncDataAdapter;->access$getMShipments$p(Lcom/digikala/dms/adapter/SyncDataAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/digikala/dms/adapter/SyncDataAdapter$onBindViewHolder$1;->$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mShipments[position]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-interface {v0, v1}, Lcom/digikala/dms/helper/touch/OnStartSyncListener;->retrySync(Lcom/digikala/dms/model/domain/Shipment;)V

    .line 88
    return-void
.end method
