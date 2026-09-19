###### Class com.digikala.dms.view.fragment.DragPriorityFragment (com.digikala.dms.view.fragment.DragPriorityFragment)
.class public final Lcom/digikala/dms/view/fragment/DragPriorityFragment;
.super Landroid/support/v4/app/Fragment;
.source "DragPriorityFragment.kt"

# interfaces
.implements Lcom/digikala/dms/helper/touch/OnStartDragListener;
.implements Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragPriorityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragPriorityFragment.kt\ncom/digikala/dms/view/fragment/DragPriorityFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,238:1\n1285#2,3:239\n*E\n*S KotlinDebug\n*F\n+ 1 DragPriorityFragment.kt\ncom/digikala/dms/view/fragment/DragPriorityFragment\n*L\n156#1,3:239\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 52\u00020\u00012\u00020\u00022\u00020\u0003:\u00015B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J&\u0010\u001b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0016J\u0016\u0010%\u001a\u00020\u001a2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020$0\'H\u0016J\u0018\u0010(\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\u001a\u0010-\u001a\u00020\u001a2\u0006\u0010.\u001a\u00020\u00082\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010/\u001a\u00020\u001aH\u0002J\u0008\u00100\u001a\u00020\u001aH\u0002J\u0006\u00101\u001a\u00020\u001aJ\u0012\u00102\u001a\u00020\u001a2\u0008\u00103\u001a\u0004\u0018\u000104H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000c\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u000c\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u00066"
    }
    d2 = {
        "Lcom/digikala/dms/view/fragment/DragPriorityFragment;",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/digikala/dms/helper/touch/OnStartDragListener;",
        "Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;",
        "()V",
        "mAdapter",
        "Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;",
        "mErrorView",
        "Landroid/view/View;",
        "getMErrorView",
        "()Landroid/view/View;",
        "mErrorView$delegate",
        "Lkotlin/Lazy;",
        "mItemTouchHelper",
        "Landroid/support/v7/widget/helper/ItemTouchHelper;",
        "mPriority_Rv",
        "Landroid/support/v7/widget/RecyclerView;",
        "getMPriority_Rv",
        "()Landroid/support/v7/widget/RecyclerView;",
        "mPriority_Rv$delegate",
        "mProgressWheel",
        "Lcom/pnikosis/materialishprogress/ProgressWheel;",
        "getMProgressWheel",
        "()Lcom/pnikosis/materialishprogress/ProgressWheel;",
        "mProgressWheel$delegate",
        "loadData",
        "",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onShipmentItemSwiped",
        "mShipment",
        "Lcom/digikala/dms/model/domain/Shipment;",
        "onShipmentListChanged",
        "mShipments",
        "Ljava/util/ArrayList;",
        "onStartDrag",
        "viewHolder",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "position",
        "",
        "onViewCreated",
        "view",
        "sendorderByPriorityToServer",
        "showPriorityAlert",
        "updatePriorityAdapterData",
        "updateShipmentPriority",
        "packId",
        "",
        "Companion",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

.field private final mErrorView$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private final mPriority_Rv$delegate:Lkotlin/Lazy;

.field private final mProgressWheel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mProgressWheel"

    const-string v4, "getMProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mPriority_Rv"

    const-string v4, "getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mErrorView"

    const-string v4, "getMErrorView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->Companion:Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mProgressWheel$2;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mProgressWheel$2;-><init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mProgressWheel$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mPriority_Rv$2;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mPriority_Rv$2;-><init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mPriority_Rv$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mErrorView$2;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mErrorView$2;-><init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mErrorView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMAdapter$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/DragPriorityFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    return-object v0
.end method

.method public static final synthetic access$getMItemTouchHelper$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/DragPriorityFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method public static final synthetic access$getMPriority_Rv$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/DragPriorityFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMProgressWheel$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Lcom/pnikosis/materialishprogress/ProgressWheel;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/DragPriorityFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$sendorderByPriorityToServer(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 1
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    .line 41
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->sendorderByPriorityToServer()V

    return-void
.end method

.method public static final synthetic access$setMAdapter$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/DragPriorityFragment;
    .param p1, "<set-?>"    # Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    return-void
.end method

.method public static final synthetic access$setMItemTouchHelper$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/DragPriorityFragment;
    .param p1, "<set-?>"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-void
.end method

.method public static final synthetic access$showPriorityAlert(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 1
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    .line 41
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->showPriorityAlert()V

    return-void
.end method

.method public static final synthetic access$updateShipmentPriority(Lcom/digikala/dms/view/fragment/DragPriorityFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/DragPriorityFragment;
    .param p1, "packId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->updateShipmentPriority(Ljava/lang/String;)V

    return-void
.end method

.method private final getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;
    .registers 4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mPriority_Rv$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private final getMProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;
    .registers 4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mProgressWheel$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pnikosis/materialishprogress/ProgressWheel;

    return-object v0
.end method

.method private final loadData()V
    .registers 6

    .line 90
    new-instance v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    sget-object v1, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->Companion:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;->getEXTRA_DRAG_MODE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v2}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lcom/digikala/dms/helper/touch/OnStartDragListener;

    move-object v4, p0

    check-cast v4, Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/digikala/dms/helper/touch/OnStartDragListener;Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    .line 91
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;-><init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 98
    sget-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_45

    .line 99
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 101
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_53

    .line 103
    :cond_45
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 105
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_53
    nop

    .line 107
    return-void
.end method

.method private final sendorderByPriorityToServer()V
    .registers 12

    .line 146
    const-string v0, "TESSST"

    const-string v1, "CALL 146"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->Companion:Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;->getPackId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 148
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    .line 149
    const-string v0, "TESSST"

    const-string v2, "CALL 148"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/digikala/dms/model/design/ShipmentPriority;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/ShipmentPriority;-><init>()V

    .line 153
    .local v0, "mShipmentPriority":Lcom/digikala/dms/model/design/ShipmentPriority;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, "orderIdList":Ljava/util/ArrayList;
    sget-object v3, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v3}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$receiver$iv":Ljava/lang/Iterable;
    move v4, v1

    .line 239
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 240
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    move-object v8, v6

    check-cast v8, Lcom/digikala/dms/model/domain/Shipment;

    .line 156
    .local v1, "$i$a$1$mapTo":I
    .local v8, "it":Lcom/digikala/dms/model/domain/Shipment;
    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "it.orderId"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v1    # "$i$a$1$mapTo":I
    .end local v8    # "it":Lcom/digikala/dms/model/domain/Shipment;
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v6    # "item$iv":Ljava/lang/Object;
    goto :goto_35

    .line 241
    :cond_52
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    .line 158
    .end local v3    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    sget-object v1, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->Companion:Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;->getPackId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/digikala/dms/model/design/ShipmentPriority;->PackId:Ljava/lang/String;

    .line 159
    iput-object v2, v0, Lcom/digikala/dms/model/design/ShipmentPriority;->Priority:Ljava/util/ArrayList;

    .line 162
    new-instance v1, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;-><init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    check-cast v1, Lcom/android/volley/Response$Listener;

    .line 194
    new-instance v3, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$3;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$3;-><init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    check-cast v3, Lcom/android/volley/Response$ErrorListener;

    .line 162
    invoke-static {v0, v1, v3}, Lcom/digikala/dms/helper/webservice/WebApi;->sendShipmentListByPriority(Lcom/digikala/dms/model/design/ShipmentPriority;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_78

    .line 205
    .end local v0    # "mShipmentPriority":Lcom/digikala/dms/model/design/ShipmentPriority;
    .end local v2    # "orderIdList":Ljava/util/ArrayList;
    :cond_71
    const-string v0, ""

    const-string v1, "packId is null to send priority to server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_78
    nop

    .line 207
    return-void
.end method

.method private final showPriorityAlert()V
    .registers 6

    .line 127
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_47

    .local v0, "it":Landroid/support/v4/app/FragmentActivity;
    const/4 v1, 0x0

    move v2, v1

    .line 128
    .local v2, "$i$a$1$let":I
    nop

    .line 136
    nop

    .line 128
    nop

    .line 132
    nop

    .line 128
    nop

    .line 131
    nop

    .line 128
    nop

    .line 130
    nop

    .line 128
    nop

    .line 129
    nop

    .line 128
    new-instance v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    const v4, 0x7f1000ba

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    .line 130
    const v4, 0x7f10009b

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    .line 131
    invoke-virtual {v3, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 132
    new-instance v3, Lcom/digikala/dms/view/fragment/DragPriorityFragment$showPriorityAlert$$inlined$let$lambda$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$showPriorityAlert$$inlined$let$lambda$1;-><init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    check-cast v3, Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 127
    .end local v0    # "it":Landroid/support/v4/app/FragmentActivity;
    .end local v2    # "$i$a$1$let":I
    nop

    .line 138
    :cond_47
    return-void
.end method

.method private final updateShipmentPriority(Ljava/lang/String;)V
    .registers 11
    .param p1, "packId"    # Ljava/lang/String;

    .line 211
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 212
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 213
    .local v1, "result":Lio/realm/RealmResults;
    if-eqz v1, :cond_ca

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-lez v2, :cond_ca

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Batch;

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    if-lez v3, :cond_ca

    .line 215
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 216
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Batch;

    if-eqz v3, :cond_47

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 217
    :cond_47
    sget-object v3, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v3}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_ae

    const/4 v4, 0x0

    .line 218
    .local v4, "i":I
    :goto_56
    nop

    .line 219
    :try_start_57
    sget-object v5, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v5}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "NewShipmentPriorityActivity.mSwipedShipment[i]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/digikala/dms/model/domain/Shipment;

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/domain/Shipment;->setPriority(Ljava/lang/String;)V

    .line 220
    const-string v5, "prirityLoog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v7}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "NewShipmentPriorityActivity.mSwipedShipment[i]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/Shipment;->getPriority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "+     :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_9f} :catch_a0

    goto :goto_a8

    .line 221
    :catch_a0
    move-exception v5

    .line 222
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "prirityLoog"

    const-string v7, "error has error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_a8
    nop

    .line 217
    if-eq v4, v3, :cond_ae

    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 225
    .end local v4    # "i":I
    :cond_ae
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Batch;

    if-eqz v2, :cond_c7

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v2

    if-eqz v2, :cond_c7

    sget-object v3, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v3}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->addAll(Ljava/util/Collection;)Z

    .line 226
    :cond_c7
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 233
    :cond_ca
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 235
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_9
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 p1, 0x0

    return-object p1

    :cond_21
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public final getMErrorView()Landroid/view/View;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mErrorView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const v0, 0x7f0c0043

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onShipmentItemSwiped(Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 3
    .param p1, "mShipment"    # Lcom/digikala/dms/model/domain/Shipment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mShipment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onShipmentListChanged(Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "mShipments"    # Ljava/util/ArrayList;
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

    const-string v0, "mShipments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    sget-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    return-void
.end method

.method public onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 87
    :cond_d
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->loadData()V

    .line 71
    sget-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getPriority_submit_button()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/fragment/DragPriorityFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$onViewCreated$1;-><init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public final updatePriorityAdapterData()V
    .registers 4

    .line 110
    sget-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_2b

    .line 111
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    if-eqz v0, :cond_39

    sget-object v1, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->addItem(Ljava/util/ArrayList;)V

    goto :goto_39

    .line 115
    :cond_2b
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getMErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_39
    :goto_39
    nop

    .line 118
    return-void
.end method

###### Class com.digikala.dms.view.fragment.DragPriorityFragment.Companion (com.digikala.dms.view.fragment.DragPriorityFragment$Companion)
.class public final Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;
.super Ljava/lang/Object;
.source "DragPriorityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/DragPriorityFragment;
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/digikala/dms/view/fragment/DragPriorityFragment;",
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 43
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance()Lcom/digikala/dms/view/fragment/DragPriorityFragment;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    new-instance v0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;-><init>()V

    .line 47
    .local v0, "mFragment":Lcom/digikala/dms/view/fragment/DragPriorityFragment;
    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.DragPriorityFragment.AnonymousClass1 (com.digikala.dms.view.fragment.DragPriorityFragment$loadData$1)
.class final Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;
.super Ljava/lang/Object;
.source "DragPriorityFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/DragPriorityFragment;->loadData()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$getMPriority_Rv$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$getMAdapter$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 93
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$getMPriority_Rv$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-virtual {v2}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    new-instance v0, Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$getMAdapter$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;

    invoke-direct {v0, v1}, Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;-><init>(Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;)V

    .line 95
    .local v0, "callback":Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    invoke-static {v1, v2}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$setMItemTouchHelper$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    .line 96
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$getMItemTouchHelper$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v2}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$getMPriority_Rv$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    nop

    .line 97
    .end local v0    # "callback":Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;
    :cond_53
    return-void
.end method

###### Class com.digikala.dms.view.fragment.DragPriorityFragment.ViewOnClickListenerC00601 (com.digikala.dms.view.fragment.DragPriorityFragment$onViewCreated$1)
.class final Lcom/digikala/dms/view/fragment/DragPriorityFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "DragPriorityFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/DragPriorityFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$onViewCreated$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "it"    # Landroid/view/View;

    .line 72
    const-string v0, "bug_seton"

    const-string v1, "bug_seton"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$onViewCreated$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$getMAdapter$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->getItemCount()I

    move-result v0

    sget-object v1, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getOfflineShipmentCount()I

    move-result v1

    if-ne v0, v1, :cond_28

    .line 74
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$onViewCreated$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$showPriorityAlert(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    .line 75
    const-string v0, "bug_if"

    const-string v1, "bug_if"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 77
    :cond_28
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$onViewCreated$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v1, "\u0627\u0644\u0648\u06cc\u062a \u0647\u0645\u0647 \u0622\u06cc\u062a\u0645 \u0647\u0627 \u0645\u0634\u062e\u0635 \u0646\u0634\u062f\u0647 \u0627\u0633\u062a"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    const-string v0, "bug_else"

    const-string v1, "bug_else"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_44
    nop

    .line 80
    return-void
.end method

###### Class com.digikala.dms.view.fragment.DragPriorityFragment.AnonymousClass2 (com.digikala.dms.view.fragment.DragPriorityFragment$sendorderByPriorityToServer$2)
.class final Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;
.super Ljava/lang/Object;
.source "DragPriorityFragment.kt"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/DragPriorityFragment;->sendorderByPriorityToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lorg/json/JSONObject;",
        "kotlin.jvm.PlatformType",
        "onResponse"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 41
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onResponse(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "it"    # Lorg/json/JSONObject;

    .line 166
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->setShipmentNextStepIsPriority(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 167
    const-string v0, "TESSST"

    const-string v1, "CALL 165"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$getMProgressWheel$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    .line 170
    nop

    .line 171
    :try_start_23
    const-string v0, "Data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, "successfullySendToServer":Z
    const-string v1, "TESSST"

    const-string v2, "CALL171 "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v0, :cond_73

    .line 176
    const-string v1, "TESSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CALL 174"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    sget-object v2, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->Companion:Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;

    invoke-virtual {v2}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;->getPackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$updateShipmentPriority(Lcom/digikala/dms/view/fragment/DragPriorityFragment;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-virtual {v3}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-class v4, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->startActivity(Landroid/content/Intent;)V

    .line 182
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_ca

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_ca

    .line 184
    :cond_73
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    const v3, 0x7f1000b9

    invoke-virtual {v2, v3}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_8e} :catch_8f

    .line 185
    .end local v0    # "successfullySendToServer":Z
    goto :goto_ca

    .line 186
    :catch_8f
    move-exception v0

    .line 187
    .local v0, "joe":Lorg/json/JSONException;
    const-string v1, "TESSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v1, "Response"

    const-string v2, "Response Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b5

    goto :goto_b7

    .line 190
    :cond_b5
    const-string v3, "json parse in priority response error"

    .line 189
    :goto_b7
    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "Response"

    const-string v2, "Response Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c5

    goto :goto_c7

    .line 192
    :cond_c5
    const-string v3, "json parse in priority response error"

    .line 191
    :goto_c7
    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v0    # "joe":Lorg/json/JSONException;
    :cond_ca
    :goto_ca
    nop

    .line 194
    return-void
.end method

###### Class com.digikala.dms.view.fragment.DragPriorityFragment.AnonymousClass3 (com.digikala.dms.view.fragment.DragPriorityFragment$sendorderByPriorityToServer$3)
.class final Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$3;
.super Ljava/lang/Object;
.source "DragPriorityFragment.kt"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/DragPriorityFragment;->sendorderByPriorityToServer()V
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
        "Lcom/android/volley/VolleyError;",
        "kotlin.jvm.PlatformType",
        "onErrorResponse"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$3;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "it"    # Lcom/android/volley/VolleyError;

    .line 196
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$3;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$getMProgressWheel$p(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$3;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$sendorderByPriorityToServer$3;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    const v2, 0x7f1000b9

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    goto :goto_33

    .line 199
    :cond_31
    const-string v2, "priority response error"

    .line 198
    :goto_33
    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_41

    goto :goto_43

    .line 201
    :cond_41
    const-string v2, "priority response error"

    .line 200
    :goto_43
    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

###### Class com.digikala.dms.view.fragment.DragPriorityFragment$mErrorView$2 (com.digikala.dms.view.fragment.DragPriorityFragment$mErrorView$2)
.class final Lcom/digikala/dms/view/fragment/DragPriorityFragment$mErrorView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DragPriorityFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/DragPriorityFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragPriorityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragPriorityFragment.kt\ncom/digikala/dms/view/fragment/DragPriorityFragment$mErrorView$2\n*L\n1#1,238:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mErrorView$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mErrorView$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/digikala/dms/R$id;->activity_shipment_priority_error_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .local v1, "$receiver":Landroid/view/View;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$1$apply":I
    nop

    .line 60
    .end local v1    # "$receiver":Landroid/view/View;
    .end local v2    # "$i$a$1$apply":I
    nop

    .line 61
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mErrorView$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.DragPriorityFragment$mPriority_Rv$2 (com.digikala.dms.view.fragment.DragPriorityFragment$mPriority_Rv$2)
.class final Lcom/digikala/dms/view/fragment/DragPriorityFragment$mPriority_Rv$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DragPriorityFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/DragPriorityFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/support/v7/widget/RecyclerView;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/support/v7/widget/RecyclerView;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mPriority_Rv$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/support/v7/widget/RecyclerView;
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mPriority_Rv$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    sget v1, Lcom/digikala/dms/R$id;->activity_shipment_priority_rv:I

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mPriority_Rv$2;->invoke()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.DragPriorityFragment$mProgressWheel$2 (com.digikala.dms.view.fragment.DragPriorityFragment$mProgressWheel$2)
.class final Lcom/digikala/dms/view/fragment/DragPriorityFragment$mProgressWheel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DragPriorityFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/DragPriorityFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/pnikosis/materialishprogress/ProgressWheel;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/pnikosis/materialishprogress/ProgressWheel;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mProgressWheel$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/pnikosis/materialishprogress/ProgressWheel;
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mProgressWheel$2;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    sget v1, Lcom/digikala/dms/R$id;->activity_priorityShipment_progressWheel_loading:I

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pnikosis/materialishprogress/ProgressWheel;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$mProgressWheel$2;->invoke()Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.DragPriorityFragment$showPriorityAlert$$inlined$let$lambda$1 (com.digikala.dms.view.fragment.DragPriorityFragment$showPriorityAlert$$inlined$let$lambda$1)
.class final Lcom/digikala/dms/view/fragment/DragPriorityFragment$showPriorityAlert$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "DragPriorityFragment.kt"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/DragPriorityFragment;->showPriorityAlert()V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "<anonymous parameter 1>",
        "Lcom/afollestad/materialdialogs/DialogAction;",
        "onClick",
        "com/digikala/dms/view/fragment/DragPriorityFragment$showPriorityAlert$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$showPriorityAlert$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .registers 4
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "$noName_1"    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 134
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/DragPriorityFragment$showPriorityAlert$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->access$sendorderByPriorityToServer(Lcom/digikala/dms/view/fragment/DragPriorityFragment;)V

    .line 135
    return-void
.end method
