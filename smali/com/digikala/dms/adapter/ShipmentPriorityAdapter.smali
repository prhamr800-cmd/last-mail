###### Class com.digikala.dms.adapter.ShipmentPriorityAdapter (com.digikala.dms.adapter.ShipmentPriorityAdapter)
.class public final Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShipmentPriorityAdapter.kt"

# interfaces
.implements Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;,
        Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;",
        ">;",
        "Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShipmentPriorityAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShipmentPriorityAdapter.kt\ncom/digikala/dms/adapter/ShipmentPriorityAdapter\n*L\n1#1,135:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002,-B/\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0014\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001cH\u0017J\u0018\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001cH\u0016J\u0010\u0010$\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u001cH\u0016J,\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u001c2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006."
    }
    d2 = {
        "Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;",
        "Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;",
        "touchType",
        "",
        "shipments",
        "Ljava/util/ArrayList;",
        "Lcom/digikala/dms/model/domain/Shipment;",
        "mDragStartListener",
        "Lcom/digikala/dms/helper/touch/OnStartDragListener;",
        "mShipmentListChangeListener",
        "Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;",
        "(Ljava/lang/String;Ljava/util/ArrayList;Lcom/digikala/dms/helper/touch/OnStartDragListener;Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;)V",
        "mShipments",
        "mSourceShipments",
        "getShipments",
        "()Ljava/util/ArrayList;",
        "setShipments",
        "(Ljava/util/ArrayList;)V",
        "getTouchType",
        "()Ljava/lang/String;",
        "setTouchType",
        "(Ljava/lang/String;)V",
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
        "onItemDismiss",
        "onItemMove",
        "",
        "fromPosition",
        "toPosition",
        "viewHolderSource",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "viewHolderTarget",
        "Companion",
        "ShipmentPriorityViewholder",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# static fields
.field public static final Companion:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;

.field private static EXTRA_DRAG_MODE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static EXTRA_SWIPE_MODE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mDragStartListener:Lcom/digikala/dms/helper/touch/OnStartDragListener;

.field private mShipmentListChangeListener:Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;

.field private mShipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceShipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private shipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private touchType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->Companion:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;

    .line 38
    const-string v0, "extra_swipe_mode"

    sput-object v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->EXTRA_SWIPE_MODE:Ljava/lang/String;

    .line 39
    const-string v0, "extra_drag_mode"

    sput-object v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->EXTRA_DRAG_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/digikala/dms/helper/touch/OnStartDragListener;Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;)V
    .registers 7
    .param p1, "touchType"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "shipments"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "mDragStartListener"    # Lcom/digikala/dms/helper/touch/OnStartDragListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "mShipmentListChangeListener"    # Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;",
            "Lcom/digikala/dms/helper/touch/OnStartDragListener;",
            "Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;",
            ")V"
        }
    .end annotation

    const-string v0, "shipments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDragStartListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mShipmentListChangeListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    nop

    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->touchType:Ljava/lang/String;

    iput-object p2, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->shipments:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mDragStartListener:Lcom/digikala/dms/helper/touch/OnStartDragListener;

    iput-object p4, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipmentListChangeListener:Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mSourceShipments:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->shipments:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mSourceShipments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->shipments:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/digikala/dms/helper/touch/OnStartDragListener;Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_7

    .line 29
    const/4 p1, 0x0

    check-cast p1, Ljava/lang/String;

    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/digikala/dms/helper/touch/OnStartDragListener;Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getEXTRA_DRAG_MODE$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    sget-object v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->EXTRA_DRAG_MODE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTRA_SWIPE_MODE$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    sget-object v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->EXTRA_SWIPE_MODE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMDragStartListener$p(Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;)Lcom/digikala/dms/helper/touch/OnStartDragListener;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mDragStartListener:Lcom/digikala/dms/helper/touch/OnStartDragListener;

    return-object v0
.end method

.method public static final synthetic access$setEXTRA_DRAG_MODE$cp(Ljava/lang/String;)V
    .registers 1
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 28
    sput-object p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->EXTRA_DRAG_MODE:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setEXTRA_SWIPE_MODE$cp(Ljava/lang/String;)V
    .registers 1
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 28
    sput-object p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->EXTRA_SWIPE_MODE:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMDragStartListener$p(Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;Lcom/digikala/dms/helper/touch/OnStartDragListener;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;
    .param p1, "<set-?>"    # Lcom/digikala/dms/helper/touch/OnStartDragListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 28
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mDragStartListener:Lcom/digikala/dms/helper/touch/OnStartDragListener;

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

    .line 51
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 52
    .local v0, "size":I
    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->notifyItemRangeRemoved(II)V

    .line 54
    iget-object v2, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->notifyItemRangeInserted(II)V

    .line 56
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getShipments()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->shipments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTouchType()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->touchType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 28
    check-cast p1, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->getMShipment_address()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mShipments[position]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryAddress()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->getMShipment_time()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mShipments[position]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->touchType:Ljava/lang/String;

    .line 66
    sget-object v1, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->EXTRA_SWIPE_MODE:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 67
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->getMShipment_itemNo()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0600d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->getMTouchIcon()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7d

    .line 70
    :cond_58
    sget-object v1, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->EXTRA_DRAG_MODE:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 71
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->getMShipment_itemNo()Landroid/widget/TextView;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->getMTouchIcon()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    :cond_7d
    :goto_7d
    nop

    .line 80
    invoke-virtual {p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->getMTouchIcon()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$onBindViewHolder$1;-><init>(Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;I)V

    check-cast v1, Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;
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

    .line 110
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

    const-string/jumbo v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onItemDismiss(I)V
    .registers 5
    .param p1, "position"    # I

    .line 104
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipmentListChangeListener:Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mShipments[position]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-interface {v0, v1}, Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;->onShipmentItemSwiped(Lcom/digikala/dms/model/domain/Shipment;)V

    .line 105
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0, p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->notifyItemRemoved(I)V

    .line 107
    return-void
.end method

.method public onItemMove(IILandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 9
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "viewHolderSource"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "viewHolderTarget"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 90
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->notifyItemMoved(II)V

    .line 92
    instance-of v0, p4, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 93
    move-object v0, p4

    check-cast v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

    .local v0, "$receiver":Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;
    .local v1, "$i$a$1$apply":I
    invoke-virtual {v0}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->getMShipment_itemNo()Landroid/widget/TextView;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0    # "$receiver":Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;
    .end local v1    # "$i$a$1$apply":I
    :cond_25
    instance-of v0, p3, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

    if-eqz v0, :cond_3b

    .line 96
    move-object v0, p3

    check-cast v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

    .restart local v0    # "$receiver":Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;
    .local v1, "$i$a$2$apply":I
    invoke-virtual {v0}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->getMShipment_itemNo()Landroid/widget/TextView;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .end local v0    # "$receiver":Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;
    .end local v1    # "$i$a$2$apply":I
    :cond_3b
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipmentListChangeListener:Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->mShipments:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;->onShipmentListChanged(Ljava/util/ArrayList;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public final setShipments(Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
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

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->shipments:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTouchType(Ljava/lang/String;)V
    .registers 2
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 29
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->touchType:Ljava/lang/String;

    return-void
.end method

###### Class com.digikala.dms.adapter.ShipmentPriorityAdapter.Companion (com.digikala.dms.adapter.ShipmentPriorityAdapter$Companion)
.class public final Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;
.super Ljava/lang/Object;
.source "ShipmentPriorityAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;",
        "",
        "()V",
        "EXTRA_DRAG_MODE",
        "",
        "getEXTRA_DRAG_MODE",
        "()Ljava/lang/String;",
        "setEXTRA_DRAG_MODE",
        "(Ljava/lang/String;)V",
        "EXTRA_SWIPE_MODE",
        "getEXTRA_SWIPE_MODE",
        "setEXTRA_SWIPE_MODE",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 37
    invoke-direct {p0}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEXTRA_DRAG_MODE()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    invoke-static {}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->access$getEXTRA_DRAG_MODE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEXTRA_SWIPE_MODE()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    invoke-static {}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->access$getEXTRA_SWIPE_MODE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setEXTRA_DRAG_MODE(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->access$setEXTRA_DRAG_MODE$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setEXTRA_SWIPE_MODE(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->access$setEXTRA_SWIPE_MODE$cp(Ljava/lang/String;)V

    return-void
.end method

###### Class com.digikala.dms.adapter.ShipmentPriorityAdapter.ShipmentPriorityViewholder (com.digikala.dms.adapter.ShipmentPriorityAdapter$ShipmentPriorityViewholder)
.class public final Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShipmentPriorityAdapter.kt"

# interfaces
.implements Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShipmentPriorityViewholder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0019H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;",
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
        "mTouchIcon",
        "Landroid/widget/ImageView;",
        "getMTouchIcon",
        "()Landroid/widget/ImageView;",
        "setMTouchIcon",
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

.field private mTouchIcon:Landroid/widget/ImageView;
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

    .line 114
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 117
    sget v0, Lcom/digikala/dms/R$id;->shipment_priority_row_touch_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "itemView.shipment_priority_row_touch_icon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mTouchIcon:Landroid/widget/ImageView;

    .line 118
    sget v0, Lcom/digikala/dms/R$id;->shipment_priority_row_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v1, "itemView.shipment_priority_row_time"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mShipment_time:Landroid/widget/TextView;

    .line 119
    sget v0, Lcom/digikala/dms/R$id;->shipment_priority_row_address:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v1, "itemView.shipment_priority_row_address"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mShipment_address:Landroid/widget/TextView;

    .line 120
    sget v0, Lcom/digikala/dms/R$id;->rowRecyclerviewShipmentsPriority_xeiTextView_itemNo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v1, "itemView.rowRecyclerview\u2026iority_xeiTextView_itemNo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mShipment_itemNo:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getMShipment_address()Landroid/widget/TextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mShipment_address:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMShipment_itemNo()Landroid/widget/TextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mShipment_itemNo:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMShipment_time()Landroid/widget/TextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mShipment_time:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMTouchIcon()Landroid/widget/ImageView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mTouchIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onItemClear()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->itemView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    return-void
.end method

.method public onItemSelected()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->itemView:Landroid/view/View;

    const-string v1, "#B2EBF2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
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

    .line 119
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mShipment_address:Landroid/widget/TextView;

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

    .line 120
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mShipment_itemNo:Landroid/widget/TextView;

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

    .line 118
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mShipment_time:Landroid/widget/TextView;

    return-void
.end method

.method public final setMTouchIcon(Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;->mTouchIcon:Landroid/widget/ImageView;

    return-void
.end method

###### Class com.digikala.dms.adapter.ShipmentPriorityAdapter.AnonymousClass1 (com.digikala.dms.adapter.ShipmentPriorityAdapter$onBindViewHolder$1)
.class final Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "ShipmentPriorityAdapter.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;I)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "event",
        "Landroid/view/MotionEvent;",
        "onTouch"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic $holder:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;I)V
    .registers 4

    iput-object p1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$onBindViewHolder$1;->this$0:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    iput-object p2, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$onBindViewHolder$1;->$holder:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

    iput p3, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$onBindViewHolder$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "$noName_0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 81
    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    .line 82
    iget-object v0, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$onBindViewHolder$1;->this$0:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->access$getMDragStartListener$p(Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;)Lcom/digikala/dms/helper/touch/OnStartDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$onBindViewHolder$1;->$holder:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, p0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$onBindViewHolder$1;->$position:I

    invoke-interface {v0, v1, v2}, Lcom/digikala/dms/helper/touch/OnStartDragListener;->onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 84
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
