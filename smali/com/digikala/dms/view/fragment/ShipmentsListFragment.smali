###### Class com.digikala.dms.view.fragment.ShipmentsListFragment (com.digikala.dms.view.fragment.ShipmentsListFragment)
.class public final Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ShipmentsListFragment.kt"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShipmentsListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShipmentsListFragment.kt\ncom/digikala/dms/view/fragment/ShipmentsListFragment\n*L\n1#1,263:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 &2\u00020\u00012\u00020\u0002:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\"\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010 \u001a\u00020\u0010H\u0016J\u0008\u0010!\u001a\u00020\u0010H\u0016J\u001a\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u001b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010$\u001a\u00020\u0010H\u0002J\u0008\u0010%\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/digikala/dms/view/fragment/ShipmentsListFragment;",
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;",
        "()V",
        "findItem",
        "",
        "mShipments",
        "Ljava/util/ArrayList;",
        "Lcom/digikala/dms/model/domain/Shipment;",
        "mShipmentsListAdapter",
        "Lcom/digikala/dms/adapter/ShipmentsListAdapter;",
        "mWhichList",
        "",
        "scanString",
        "",
        "getAssignedShipments",
        "",
        "loadShipmentsFromActivity",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onRefresh",
        "onResume",
        "onViewCreated",
        "view",
        "scanFromFragment",
        "showEmptyListMsg",
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
# The value of this static final field might be set in the static constructor
.field private static final ARG_WHICHLIST:Ljava/lang/String; = "ARG_WHICHLIST"

.field public static final Companion:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;

.field private static final TAG_DEBUG:Ljava/lang/String;

.field private static final TAG_REQUEST:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final WHICH_LIST_CLOSE:I = 0x2

# The value of this static final field might be set in the static constructor
.field private static final WHICH_LIST_OPEN:I = 0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private findItem:Z

.field private final mShipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private mShipmentsListAdapter:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

.field private mWhichList:I

.field private scanString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->Companion:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;

    .line 46
    const-class v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->TAG_DEBUG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->WHICH_LIST_OPEN:I

    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->WHICH_LIST_CLOSE:I

    .line 50
    const-string v0, "ARG_WHICHLIST"

    sput-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->ARG_WHICHLIST:Ljava/lang/String;

    .line 52
    const-class v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->scanString:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getARG_WHICHLIST$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    sget-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->ARG_WHICHLIST:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFindItem$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Z
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    .line 42
    iget-boolean v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->findItem:Z

    return v0
.end method

.method public static final synthetic access$getMShipments$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getMShipmentsListAdapter$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Lcom/digikala/dms/adapter/ShipmentsListAdapter;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipmentsListAdapter:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    return-object v0
.end method

.method public static final synthetic access$getScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->scanString:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG_DEBUG$cp()Ljava/lang/String;
    .registers 1

    .line 42
    sget-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->TAG_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getWHICH_LIST_CLOSE$cp()I
    .registers 1

    .line 42
    sget v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->WHICH_LIST_CLOSE:I

    return v0
.end method

.method public static final synthetic access$getWHICH_LIST_OPEN$cp()I
    .registers 1

    .line 42
    sget v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->WHICH_LIST_OPEN:I

    return v0
.end method

.method public static final synthetic access$scanFromFragment(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)V
    .registers 1
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    .line 42
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->scanFromFragment()V

    return-void
.end method

.method public static final synthetic access$setFindItem$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;Z)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
    .param p1, "<set-?>"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->findItem:Z

    return-void
.end method

.method public static final synthetic access$setMShipmentsListAdapter$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;Lcom/digikala/dms/adapter/ShipmentsListAdapter;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
    .param p1, "<set-?>"    # Lcom/digikala/dms/adapter/ShipmentsListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 42
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipmentsListAdapter:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    return-void
.end method

.method public static final synthetic access$setScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 42
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->scanString:Ljava/lang/String;

    return-void
.end method

.method private final getAssignedShipments()V
    .registers 5

    .line 220
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "deliveryId":Ljava/lang/String;
    nop

    .line 255
    nop

    .line 221
    sget-object v1, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v2, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;-><init>(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)V

    check-cast v2, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;

    .line 255
    nop

    .line 221
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/digikala/dms/helper/webservice/WebApi;->makeGetBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 256
    return-void
.end method

.method private final loadShipmentsFromActivity()V
    .registers 3

    .line 171
    iget v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mWhichList:I

    .line 172
    sget v1, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->WHICH_LIST_OPEN:I

    if-ne v0, v1, :cond_28

    .line 173
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_20

    check-cast v1, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/MainActivity;->getOpenShipments()Lio/realm/RealmResults;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_d1

    :cond_20
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_28
    sget v1, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->WHICH_LIST_CLOSE:I

    if-ne v0, v1, :cond_ca

    .line 177
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_c2

    check-cast v1, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/MainActivity;->getFullyDeliveredShipments()Lio/realm/RealmResults;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_ba

    check-cast v1, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/MainActivity;->getPartiallyDeliveredShipments()Lio/realm/RealmResults;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_b2

    check-cast v1, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/MainActivity;->getReturnedShipments()Lio/realm/RealmResults;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_aa

    check-cast v1, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/MainActivity;->getMissedCallShipments()Lio/realm/RealmResults;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_a2

    check-cast v1, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/MainActivity;->getLeftShipments()Lio/realm/RealmResults;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->setCloseListSize(Landroid/content/Context;I)V

    goto :goto_d1

    .line 182
    :cond_a2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_aa
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_b2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_ba
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_c2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_ca
    sget-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "Panic! (the \"impossible\" happened.)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_d1
    nop

    .line 187
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipmentsListAdapter:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    if-eqz v0, :cond_d9

    invoke-virtual {v0}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->notifyDataSetChanged()V

    .line 188
    :cond_d9
    return-void
.end method

.method private final scanFromFragment()V
    .registers 3

    .line 200
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->forSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object v0

    const v1, 0x7f100087

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    .line 201
    return-void
.end method

.method private final showEmptyListMsg()V
    .registers 3

    .line 191
    sget v0, Lcom/digikala/dms/R$id;->fragmentShipmentsList_xeiTextView_emptyListMsg:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v1, "fragmentShipmentsList_xeiTextView_emptyListMsg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setVisibility(I)V

    .line 192
    iget v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mWhichList:I

    .line 193
    sget v1, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->WHICH_LIST_OPEN:I

    if-ne v0, v1, :cond_31

    sget v0, Lcom/digikala/dms/R$id;->fragmentShipmentsList_xeiTextView_emptyListMsg:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v1, "fragmentShipmentsList_xeiTextView_emptyListMsg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f100083

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_56

    .line 194
    :cond_31
    sget v1, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->WHICH_LIST_CLOSE:I

    if-ne v0, v1, :cond_4f

    sget v0, Lcom/digikala/dms/R$id;->fragmentShipmentsList_xeiTextView_emptyListMsg:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v1, "fragmentShipmentsList_xeiTextView_emptyListMsg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f100082

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_56

    .line 195
    :cond_4f
    sget-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "Panic! (the \"impossible\" happened.)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_56
    nop

    .line 197
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_9
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 204
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 205
    .local v0, "result":Lcom/google/zxing/integration/android/IntentResult;
    move-object v1, v0

    .local v1, "it":Lcom/google/zxing/integration/android/IntentResult;
    const/4 v2, 0x0

    move v3, v2

    .line 206
    .local v3, "$i$a$1$let":I
    const-string v4, "result"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v4, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v4, 0x1

    :goto_1e
    if-eqz v4, :cond_41

    .line 207
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const v5, 0x7f10005f

    invoke-virtual {p0, v5}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 208
    const-string v2, "Not Found Item"

    invoke-static {v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 209
    const-string v2, "Not Found Item"

    invoke-static {v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    goto :goto_80

    .line 211
    :cond_41
    const-string v2, "scan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Barcode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget v2, Lcom/digikala/dms/R$id;->scanEditText:I

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/view/custom/XeiEditText;

    if-eqz v2, :cond_76

    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/digikala/dms/view/custom/XeiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_76
    const-string v2, "Found Item"

    invoke-static {v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 214
    const-string v2, "Found Item"

    invoke-static {v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 215
    .end local v1    # "it":Lcom/google/zxing/integration/android/IntentResult;
    .end local v3    # "$i$a$1$let":I
    :goto_80
    nop

    .line 216
    nop

    .line 205
    nop

    .line 217
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 83
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    sget-object v1, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->ARG_WHICHLIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mWhichList:I

    .line 85
    :cond_1a
    return-void
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

    .line 78
    const v0, 0x7f0c004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onRefresh()V
    .registers 1

    .line 259
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getAssignedShipments()V

    .line 260
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 159
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 160
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->loadShipmentsFromActivity()V

    .line 161
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_32

    .line 162
    sget v0, Lcom/digikala/dms/R$id;->fragmentShipmentsList_xeiTextView_emptyListMsg:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v2, "fragmentShipmentsList_xeiTextView_emptyListMsg"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setVisibility(I)V

    .line 163
    sget v0, Lcom/digikala/dms/R$id;->fragmentShipmentsList_recyclerView_shipmentsList:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "fragmentShipmentsList_recyclerView_shipmentsList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_45

    .line 165
    :cond_32
    sget v0, Lcom/digikala/dms/R$id;->fragmentShipmentsList_recyclerView_shipmentsList:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "fragmentShipmentsList_recyclerView_shipmentsList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 166
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->showEmptyListMsg()V

    .line 167
    :goto_45
    nop

    .line 168
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9
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

    .line 88
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipments:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipmentsListAdapter:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    .line 92
    sget v0, Lcom/digikala/dms/R$id;->fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .local v0, "it":Landroid/support/v4/widget/SwipeRefreshLayout;
    move v2, v1

    .line 94
    .local v2, "$i$a$1$let":I
    sget v3, Lcom/digikala/dms/R$id;->fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList:I

    invoke-virtual {p0, v3}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x7f060032

    aput v5, v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 97
    sget v1, Lcom/digikala/dms/R$id;->fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList:I

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    move-object v3, p0

    check-cast v3, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 98
    .end local v0    # "it":Landroid/support/v4/widget/SwipeRefreshLayout;
    .end local v2    # "$i$a$1$let":I
    nop

    .line 92
    nop

    .line 100
    move v1, v2

    :cond_48
    sget v0, Lcom/digikala/dms/R$id;->fragmentShipmentsList_recyclerView_shipmentsList:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_85

    .line 101
    .local v0, "it":Landroid/support/v7/widget/RecyclerView;
    .local v1, "$i$a$2$let":I
    sget v2, Lcom/digikala/dms/R$id;->fragmentShipmentsList_recyclerView_shipmentsList:I

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    const-string v3, "fragmentShipmentsList_recyclerView_shipmentsList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 102
    sget v2, Lcom/digikala/dms/R$id;->fragmentShipmentsList_recyclerView_shipmentsList:I

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    const-string v3, "fragmentShipmentsList_recyclerView_shipmentsList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->mShipmentsListAdapter:Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    check-cast v3, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    .end local v0    # "it":Landroid/support/v7/widget/RecyclerView;
    .end local v1    # "$i$a$2$let":I
    nop

    .line 100
    nop

    .line 105
    :cond_85
    sget v0, Lcom/digikala/dms/R$id;->scanEditText:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiEditText;

    if-eqz v0, :cond_b2

    .line 106
    .local v0, "it":Lcom/digikala/dms/view/custom/XeiEditText;
    .local v1, "$i$a$3$let":I
    sget v2, Lcom/digikala/dms/R$id;->scanEditText:I

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/view/custom/XeiEditText;

    if-eqz v2, :cond_9c

    invoke-virtual {v2}, Lcom/digikala/dms/view/custom/XeiEditText;->requestFocus()Z

    .line 107
    :cond_9c
    sget v2, Lcom/digikala/dms/R$id;->scanEditText:I

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/view/custom/XeiEditText;

    if-eqz v2, :cond_b0

    new-instance v3, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;-><init>(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)V

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Lcom/digikala/dms/view/custom/XeiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    :cond_b0
    nop

    .line 105
    .end local v0    # "it":Lcom/digikala/dms/view/custom/XeiEditText;
    .end local v1    # "$i$a$3$let":I
    nop

    .line 151
    :cond_b2
    sget v0, Lcom/digikala/dms/R$id;->shipment_fragment_scan_btn:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_c8

    .line 152
    .local v0, "it":Landroid/widget/ImageButton;
    .local v1, "$i$a$4$let":I
    new-instance v2, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$2;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$2;-><init>(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .end local v0    # "it":Landroid/widget/ImageButton;
    .end local v1    # "$i$a$4$let":I
    nop

    .line 151
    nop

    .line 156
    :cond_c8
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentsListFragment.Companion (com.digikala.dms.view.fragment.ShipmentsListFragment$Companion)
.class public final Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;
.super Ljava/lang/Object;
.source "ShipmentsListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;",
        "",
        "()V",
        "ARG_WHICHLIST",
        "",
        "TAG_DEBUG",
        "kotlin.jvm.PlatformType",
        "TAG_REQUEST",
        "WHICH_LIST_CLOSE",
        "",
        "getWHICH_LIST_CLOSE",
        "()I",
        "WHICH_LIST_OPEN",
        "getWHICH_LIST_OPEN",
        "newInstance",
        "Lcom/digikala/dms/view/fragment/ShipmentsListFragment;",
        "whichList",
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 44
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWHICH_LIST_CLOSE()I
    .registers 2

    .line 48
    invoke-static {}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getWHICH_LIST_CLOSE$cp()I

    move-result v0

    return v0
.end method

.method public final getWHICH_LIST_OPEN()I
    .registers 2

    .line 47
    invoke-static {}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getWHICH_LIST_OPEN$cp()I

    move-result v0

    return v0
.end method

.method public final newInstance(I)Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
    .registers 5
    .param p1, "whichList"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 63
    new-instance v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;-><init>()V

    .line 64
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v1, "args":Landroid/os/Bundle;
    invoke-static {}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getARG_WHICHLIST$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.ShipmentsListFragment.AnonymousClass1 (com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1)
.class public final Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;
.super Ljava/lang/Object;
.source "ShipmentsListFragment.kt"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getAssignedShipments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;",
        "Lcom/digikala/dms/model/domain/Batch;",
        "onErrorResponse",
        "",
        "errorMessage",
        "",
        "onResponse",
        "response",
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
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)V
    .registers 2
    .param p1, "$outer"    # Lcom/digikala/dms/view/fragment/ShipmentsListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "errorMessage"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 249
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    sget v1, Lcom/digikala/dms/R$id;->fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList:I

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string v1, "fragmentShipmentsList_sw\u2026ayout_reloadShipmentsList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 252
    invoke-static {}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getTAG_DEBUG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not get assigned shipments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    return-void
.end method

.method public onResponse(Lcom/digikala/dms/model/domain/Batch;)V
    .registers 6
    .param p1, "response"    # Lcom/digikala/dms/model/domain/Batch;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 223
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    sget v1, Lcom/digikala/dms/R$id;->fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList:I

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string v1, "fragmentShipmentsList_sw\u2026ayout_reloadShipmentsList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 228
    if-eqz p1, :cond_51

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-lez v0, :cond_51

    .line 229
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 230
    .local v0, "realm":Lio/realm/Realm;
    new-instance v1, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$1;

    invoke-direct {v1, p1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$1;-><init>(Lcom/digikala/dms/model/domain/Batch;)V

    check-cast v1, Lio/realm/Realm$Transaction;

    .line 237
    new-instance v2, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$2;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$2;-><init>(Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;)V

    check-cast v2, Lio/realm/Realm$Transaction$OnSuccess;

    .line 239
    sget-object v3, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$3;->INSTANCE:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$3;

    check-cast v3, Lio/realm/Realm$Transaction$OnError;

    .line 230
    invoke-virtual {v0, v1, v2, v3}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    goto :goto_6b

    .line 244
    .end local v0    # "realm":Lio/realm/Realm;
    :cond_51
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    const v3, 0x7f10007b

    invoke-virtual {v2, v3}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    :goto_6b
    nop

    .line 246
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 221
    check-cast p1, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->onResponse(Lcom/digikala/dms/model/domain/Batch;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1$onResponse$1 (com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1$onResponse$1)
.class final Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$1;
.super Ljava/lang/Object;
.source "ShipmentsListFragment.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->onResponse(Lcom/digikala/dms/model/domain/Batch;)V
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
        "bgRealm",
        "Lio/realm/Realm;",
        "kotlin.jvm.PlatformType",
        "execute"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic $response:Lcom/digikala/dms/model/domain/Batch;


# direct methods
.method constructor <init>(Lcom/digikala/dms/model/domain/Batch;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$1;->$response:Lcom/digikala/dms/model/domain/Batch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .registers 7
    .param p1, "bgRealm"    # Lio/realm/Realm;

    .line 231
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$1;->$response:Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 233
    .local v1, "newShipment":Lcom/digikala/dms/model/domain/Shipment;
    nop

    .line 234
    nop

    .line 233
    nop

    .line 234
    nop

    .line 233
    const-class v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    .line 234
    invoke-static {}, Lcom/digikala/dms/model/domain/Shipment;->getColumnOrderId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "newShipment"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v2

    .line 233
    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    .line 235
    .local v2, "item":Lcom/digikala/dms/model/domain/Shipment;
    if-eqz v2, :cond_41

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getPayableAmount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/digikala/dms/model/domain/Shipment;->setPayableAmount(J)V

    nop

    .line 231
    .end local v1    # "newShipment":Lcom/digikala/dms/model/domain/Shipment;
    .end local v2    # "item":Lcom/digikala/dms/model/domain/Shipment;
    :cond_41
    goto :goto_a

    .line 237
    :cond_42
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1$onResponse$2 (com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1$onResponse$2)
.class final Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$2;
.super Ljava/lang/Object;
.source "ShipmentsListFragment.kt"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->onResponse(Lcom/digikala/dms/model/domain/Batch;)V
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
        "onSuccess"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess()V
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getMShipmentsListAdapter$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Lcom/digikala/dms/adapter/ShipmentsListAdapter;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {v0}, Lcom/digikala/dms/adapter/ShipmentsListAdapter;->notifyDataSetChanged()V

    .line 239
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1$onResponse$3 (com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1$onResponse$3)
.class final Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$3;
.super Ljava/lang/Object;
.source "ShipmentsListFragment.kt"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1;->onResponse(Lcom/digikala/dms/model/domain/Batch;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "error",
        "",
        "kotlin.jvm.PlatformType",
        "onError"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$3;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$3;-><init>()V

    sput-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$3;->INSTANCE:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1$onResponse$3;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 240
    invoke-static {}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getTAG_DEBUG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1 (com.digikala.dms.view.fragment.ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1)
.class public final Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "ShipmentsListFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J(\u0010\r\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016\u00a8\u0006\u000e\u00b8\u0006\u0000"
    }
    d2 = {
        "com/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$3$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "editable",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "charSequence",
        "",
        "i",
        "",
        "i1",
        "i2",
        "onTextChanged",
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
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 16
    .param p1, "editable"    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    sget v3, Lcom/digikala/dms/R$id;->scanEditText:I

    invoke-virtual {v2, v3}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/view/custom/XeiEditText;

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/digikala/dms/view/custom/XeiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    goto :goto_1f

    :cond_1e
    move-object v2, v3

    :goto_1f
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$setScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;Ljava/lang/String;)V

    .line 120
    const-string v0, "scan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v2}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$setFindItem$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;Z)V

    .line 122
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_178

    .line 123
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getMShipments$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/Shipment;

    .line 125
    .local v4, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v5}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "DK"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    invoke-static {v5, v6, v1, v7, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 126
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v5}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9c
    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v7, [Ljava/lang/String;

    const-string v5, "DK"

    aput-object v5, v9, v1

    const-string v5, "_"

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 127
    .local v5, "parts":Ljava/util/List;
    const-string v6, "scan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "part_orderId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v6, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$setScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;Ljava/lang/String;)V

    .line 130
    .end local v5    # "parts":Ljava/util/List;
    :cond_d8
    const-string v5, "scan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "afterTextChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "shipment"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v7}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v6}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 132
    const-string v5, "Found Item"

    invoke-static {v5}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 133
    const-string v5, "Found Item"

    invoke-static {v5}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 134
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v5, v2}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$setFindItem$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;Z)V

    .line 135
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-virtual {v6}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-class v7, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "order_id"

    iget-object v7, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v7}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getScanString$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v6, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    sget v7, Lcom/digikala/dms/R$id;->scanEditText:I

    invoke-virtual {v6, v7}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/view/custom/XeiEditText;

    if-eqz v6, :cond_151

    const-string v7, ""

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/digikala/dms/view/custom/XeiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_151
    iget-object v6, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-virtual {v6}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_15d

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    nop

    .line 123
    .end local v4    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_15d
    goto/16 :goto_6e

    .line 141
    :cond_15f
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$getFindItem$p(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)Z

    move-result v0

    if-nez v0, :cond_178

    .line 142
    const-string v0, "scan"

    const-string v1, "not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "Not Found Item"

    invoke-static {v0}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 144
    const-string v0, "Not Found Item"

    invoke-static {v0}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->searchWithBarcodeEvent(Ljava/lang/String;)V

    .line 147
    :cond_178
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentsListFragment$onViewCreated$$inlined$let$lambda$2 (com.digikala.dms.view.fragment.ShipmentsListFragment$onViewCreated$$inlined$let$lambda$2)
.class final Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "ShipmentsListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$4$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "it"    # Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$onViewCreated$$inlined$let$lambda$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->access$scanFromFragment(Lcom/digikala/dms/view/fragment/ShipmentsListFragment;)V

    .line 154
    return-void
.end method
