###### Class com.digikala.dms.view.fragment.SwipePriorityFragment (com.digikala.dms.view.fragment.SwipePriorityFragment)
.class public final Lcom/digikala/dms/view/fragment/SwipePriorityFragment;
.super Landroid/support/v4/app/Fragment;
.source "SwipePriorityFragment.kt"

# interfaces
.implements Lcom/digikala/dms/helper/touch/OnStartDragListener;
.implements Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipePriorityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipePriorityFragment.kt\ncom/digikala/dms/view/fragment/SwipePriorityFragment\n*L\n1#1,128:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 -2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001-B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J&\u0010\u001a\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u0011H\u0016J\u0016\u0010#\u001a\u00020\u00182\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0018\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u001a\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u00082\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0006\u0010,\u001a\u00020\u0018R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006."
    }
    d2 = {
        "Lcom/digikala/dms/view/fragment/SwipePriorityFragment;",
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
        "mOpenShipments",
        "Ljava/util/ArrayList;",
        "Lcom/digikala/dms/model/domain/Shipment;",
        "mPriority_Rv",
        "Landroid/support/v7/widget/RecyclerView;",
        "getMPriority_Rv",
        "()Landroid/support/v7/widget/RecyclerView;",
        "mPriority_Rv$delegate",
        "loadAllShipmentOffline",
        "",
        "loadData",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onShipmentItemSwiped",
        "mShipment",
        "onShipmentListChanged",
        "mShipments",
        "onStartDrag",
        "viewHolder",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "position",
        "",
        "onViewCreated",
        "view",
        "showPriorityAlert",
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

.field public static final Companion:Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;

.field private static packId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

.field private final mErrorView$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mOpenShipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriority_Rv$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mPriority_Rv"

    const-string v4, "getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mErrorView"

    const-string v4, "getMErrorView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->Companion:Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    new-instance v0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mPriority_Rv$2;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mPriority_Rv$2;-><init>(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mPriority_Rv$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mErrorView$2;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mErrorView$2;-><init>(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mErrorView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMAdapter$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/SwipePriorityFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    return-object v0
.end method

.method public static final synthetic access$getMItemTouchHelper$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/SwipePriorityFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method public static final synthetic access$getMPriority_Rv$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/SwipePriorityFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getPackId$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    sget-object v0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->packId:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setMAdapter$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/SwipePriorityFragment;
    .param p1, "<set-?>"    # Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 28
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    return-void
.end method

.method public static final synthetic access$setMItemTouchHelper$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/SwipePriorityFragment;
    .param p1, "<set-?>"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 28
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-void
.end method

.method public static final synthetic access$setPackId$cp(Ljava/lang/String;)V
    .registers 1
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 28
    sput-object p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->packId:Ljava/lang/String;

    return-void
.end method

.method private final getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;
    .registers 4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mPriority_Rv$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private final loadAllShipmentOffline()V
    .registers 6

    .line 68
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 69
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

    .line 70
    .local v1, "loggedInDeliveries":Lio/realm/RealmResults;
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_93

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v3

    goto :goto_2f

    :cond_2e
    move-object v3, v4

    :goto_2f
    if-eqz v3, :cond_93

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    if-lez v3, :cond_93

    .line 72
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    if-eqz v3, :cond_60

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v3

    if-eqz v3, :cond_60

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v3

    goto :goto_61

    :cond_60
    move-object v3, v4

    .line 73
    .local v3, "allShipments":Lio/realm/RealmList;
    :goto_61
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    if-eqz v2, :cond_74

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v2

    if-eqz v2, :cond_74

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Batch;->getId()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_74
    sput-object v4, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->packId:Ljava/lang/String;

    .line 74
    if-eqz v3, :cond_93

    .line 75
    sget-object v2, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->setOfflineShipmentCount(I)V

    .line 76
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mOpenShipments:Ljava/util/ArrayList;

    if-nez v2, :cond_8d

    const-string v4, "mOpenShipments"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8d
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    .end local v3    # "allShipments":Lio/realm/RealmList;
    :cond_93
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 81
    return-void
.end method

.method private final loadData()V
    .registers 6

    .line 84
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->loadAllShipmentOffline()V

    .line 85
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mOpenShipments:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    const-string v1, "mOpenShipments"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_4e

    .line 86
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getMErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    new-instance v0, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    sget-object v1, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->Companion:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;->getEXTRA_SWIPE_MODE()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mOpenShipments:Ljava/util/ArrayList;

    if-nez v2, :cond_34

    const-string v3, "mOpenShipments"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_34
    move-object v3, p0

    check-cast v3, Lcom/digikala/dms/helper/touch/OnStartDragListener;

    move-object v4, p0

    check-cast v4, Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/digikala/dms/helper/touch/OnStartDragListener;Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    .line 89
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;-><init>(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_5c

    .line 98
    :cond_4e
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getMErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_5c
    nop

    .line 101
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_9
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mErrorView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

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

    .line 52
    const v0, 0x7f0c0051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onShipmentItemSwiped(Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 4
    .param p1, "mShipment"    # Lcom/digikala/dms/model/domain/Shipment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mShipment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    nop

    .line 126
    nop

    .line 125
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_28

    check-cast v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    .line 126
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mAdapter:Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->updateTabLayout(I)V

    .line 127
    return-void

    .line 125
    :cond_28
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.digikala.dms.view.activity.NewShipmentPriorityActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 104
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mOpenShipments:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    const-string v1, "mOpenShipments"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mOpenShipments:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    const-string v1, "mOpenShipments"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
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

    .line 64
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 65
    :cond_d
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
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

    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->mOpenShipments:Ljava/util/ArrayList;

    .line 58
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->loadData()V

    .line 59
    return-void
.end method

.method public final showPriorityAlert()V
    .registers 6

    .line 110
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_47

    .local v0, "it":Landroid/support/v4/app/FragmentActivity;
    const/4 v1, 0x0

    move v2, v1

    .line 111
    .local v2, "$i$a$1$let":I
    nop

    .line 119
    nop

    .line 111
    nop

    .line 115
    nop

    .line 111
    nop

    .line 114
    nop

    .line 111
    nop

    .line 113
    nop

    .line 111
    nop

    .line 112
    nop

    .line 111
    new-instance v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    const v4, 0x7f1000ba

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    .line 113
    const v4, 0x7f10009b

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    .line 114
    invoke-virtual {v3, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 115
    new-instance v3, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$showPriorityAlert$$inlined$let$lambda$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$showPriorityAlert$$inlined$let$lambda$1;-><init>(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)V

    check-cast v3, Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 110
    .end local v0    # "it":Landroid/support/v4/app/FragmentActivity;
    .end local v2    # "$i$a$1$let":I
    nop

    .line 121
    :cond_47
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SwipePriorityFragment.Companion (com.digikala.dms.view.fragment.SwipePriorityFragment$Companion)
.class public final Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;
.super Ljava/lang/Object;
.source "SwipePriorityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/SwipePriorityFragment;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;",
        "",
        "()V",
        "packId",
        "",
        "getPackId",
        "()Ljava/lang/String;",
        "setPackId",
        "(Ljava/lang/String;)V",
        "newInstance",
        "Lcom/digikala/dms/view/fragment/SwipePriorityFragment;",
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 30
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPackId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    invoke-static {}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$getPackId$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newInstance()Lcom/digikala/dms/view/fragment/SwipePriorityFragment;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    new-instance v0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;-><init>()V

    .line 34
    .local v0, "mFragment":Lcom/digikala/dms/view/fragment/SwipePriorityFragment;
    return-object v0
.end method

.method public final setPackId(Ljava/lang/String;)V
    .registers 2
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-static {p1}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$setPackId$cp(Ljava/lang/String;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.SwipePriorityFragment.AnonymousClass1 (com.digikala.dms.view.fragment.SwipePriorityFragment$loadData$1)
.class final Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;
.super Ljava/lang/Object;
.source "SwipePriorityFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->loadData()V
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
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$getMPriority_Rv$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 91
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$getMPriority_Rv$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$getMAdapter$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 92
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$getMPriority_Rv$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-virtual {v2}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 93
    new-instance v0, Lcom/digikala/dms/helper/touch/SwipeItemTouchHelperCallback;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$getMAdapter$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;

    invoke-direct {v0, v1}, Lcom/digikala/dms/helper/touch/SwipeItemTouchHelperCallback;-><init>(Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;)V

    .line 94
    .local v0, "callback":Lcom/digikala/dms/helper/touch/SwipeItemTouchHelperCallback;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    invoke-static {v1, v2}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$setMItemTouchHelper$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    .line 95
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$getMItemTouchHelper$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$loadData$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-static {v2}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->access$getMPriority_Rv$p(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    nop

    .line 96
    .end local v0    # "callback":Lcom/digikala/dms/helper/touch/SwipeItemTouchHelperCallback;
    :cond_5d
    return-void
.end method

###### Class com.digikala.dms.view.fragment.SwipePriorityFragment$mErrorView$2 (com.digikala.dms.view.fragment.SwipePriorityFragment$mErrorView$2)
.class final Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mErrorView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipePriorityFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SwipePriorityFragment;-><init>()V
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
    value = "SMAP\nSwipePriorityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipePriorityFragment.kt\ncom/digikala/dms/view/fragment/SwipePriorityFragment$mErrorView$2\n*L\n1#1,128:1\n*E\n"
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
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mErrorView$2;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mErrorView$2;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

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

    .line 48
    .local v2, "$i$a$1$apply":I
    nop

    .line 47
    .end local v1    # "$receiver":Landroid/view/View;
    .end local v2    # "$i$a$1$apply":I
    nop

    .line 48
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mErrorView$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.SwipePriorityFragment$mPriority_Rv$2 (com.digikala.dms.view.fragment.SwipePriorityFragment$mPriority_Rv$2)
.class final Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mPriority_Rv$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipePriorityFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SwipePriorityFragment;-><init>()V
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
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mPriority_Rv$2;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/support/v7/widget/RecyclerView;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mPriority_Rv$2;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    sget v1, Lcom/digikala/dms/R$id;->activity_shipment_priority_rv:I

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$mPriority_Rv$2;->invoke()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.SwipePriorityFragment$showPriorityAlert$$inlined$let$lambda$1 (com.digikala.dms.view.fragment.SwipePriorityFragment$showPriorityAlert$$inlined$let$lambda$1)
.class final Lcom/digikala/dms/view/fragment/SwipePriorityFragment$showPriorityAlert$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SwipePriorityFragment.kt"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->showPriorityAlert()V
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
        "com/digikala/dms/view/fragment/SwipePriorityFragment$showPriorityAlert$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/SwipePriorityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$showPriorityAlert$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .registers 6
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

    .line 116
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 117
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$showPriorityAlert$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "send priority to server"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method
