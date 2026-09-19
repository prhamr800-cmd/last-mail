###### Class com.digikala.dms.view.activity.SyncDataActivity (com.digikala.dms.view.activity.SyncDataActivity)
.class public final Lcom/digikala/dms/view/activity/SyncDataActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SyncDataActivity.kt"

# interfaces
.implements Lcom/digikala/dms/helper/touch/OnStartSyncListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncDataActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncDataActivity.kt\ncom/digikala/dms/view/activity/SyncDataActivity\n*L\n1#1,289:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010!\u001a\u00020\"H\u0016J\u0006\u0010#\u001a\u00020\u001cJ\u0008\u0010$\u001a\u00020\"H\u0002J\u0008\u0010%\u001a\u00020\"H\u0002J\u0012\u0010&\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0014J\u0006\u0010)\u001a\u00020\"J\u0010\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\nH\u0016J\u0006\u0010,\u001a\u00020\"J\u0008\u0010-\u001a\u00020\"H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0011\u001a\u0004\u0008\u0019\u0010\u000fR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006."
    }
    d2 = {
        "Lcom/digikala/dms/view/activity/SyncDataActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "Lcom/digikala/dms/helper/touch/OnStartSyncListener;",
        "()V",
        "TAG_DEBUG",
        "",
        "mAdapter",
        "Lcom/digikala/dms/adapter/SyncDataAdapter;",
        "mAllShipment",
        "Ljava/util/ArrayList;",
        "Lcom/digikala/dms/model/domain/Shipment;",
        "Lkotlin/collections/ArrayList;",
        "mErrorView",
        "Landroid/view/View;",
        "getMErrorView",
        "()Landroid/view/View;",
        "mErrorView$delegate",
        "Lkotlin/Lazy;",
        "mSync_Rv",
        "Landroid/support/v7/widget/RecyclerView;",
        "getMSync_Rv",
        "()Landroid/support/v7/widget/RecyclerView;",
        "mSync_Rv$delegate",
        "mUnsyncedShipmentList",
        "mWaitingView",
        "getMWaitingView",
        "mWaitingView$delegate",
        "shipmentIndex",
        "",
        "getShipmentIndex",
        "()I",
        "setShipmentIndex",
        "(I)V",
        "finalizeSync",
        "",
        "getUnSyncedShipmentSize",
        "loadAllShipmentOffline",
        "loadData",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "reSendAllOrder",
        "retrySync",
        "shipment",
        "showSyncErrorDialog",
        "syncDataToServer",
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


# instance fields
.field private final TAG_DEBUG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private mAdapter:Lcom/digikala/dms/adapter/SyncDataAdapter;

.field private mAllShipment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorView$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mSync_Rv$delegate:Lkotlin/Lazy;

.field private mUnsyncedShipmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingView$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shipmentIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mSync_Rv"

    const-string v4, "getMSync_Rv()Landroid/support/v7/widget/RecyclerView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/digikala/dms/view/activity/SyncDataActivity;

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

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mWaitingView"

    const-string v4, "getMWaitingView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/digikala/dms/view/activity/SyncDataActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/digikala/dms/view/activity/SyncDataActivity$mSync_Rv$2;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/activity/SyncDataActivity$mSync_Rv$2;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mSync_Rv$delegate:Lkotlin/Lazy;

    .line 40
    const-string v0, "SyncDataActivityLog"

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->TAG_DEBUG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/digikala/dms/view/activity/SyncDataActivity$mErrorView$2;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/activity/SyncDataActivity$mErrorView$2;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mErrorView$delegate:Lkotlin/Lazy;

    .line 48
    new-instance v0, Lcom/digikala/dms/view/activity/SyncDataActivity$mWaitingView$2;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/activity/SyncDataActivity$mWaitingView$2;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mWaitingView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMAdapter$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Lcom/digikala/dms/adapter/SyncDataAdapter;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/activity/SyncDataActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAdapter:Lcom/digikala/dms/adapter/SyncDataAdapter;

    return-object v0
.end method

.method public static final synthetic access$getMAllShipment$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "$this"    # Lcom/digikala/dms/view/activity/SyncDataActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    const-string v1, "mAllShipment"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public static final synthetic access$getTAG_DEBUG$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/activity/SyncDataActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->TAG_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$loadAllShipmentOffline(Lcom/digikala/dms/view/activity/SyncDataActivity;)V
    .registers 1
    .param p0, "$this"    # Lcom/digikala/dms/view/activity/SyncDataActivity;

    .line 33
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->loadAllShipmentOffline()V

    return-void
.end method

.method public static final synthetic access$setMAdapter$p(Lcom/digikala/dms/view/activity/SyncDataActivity;Lcom/digikala/dms/adapter/SyncDataAdapter;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/activity/SyncDataActivity;
    .param p1, "<set-?>"    # Lcom/digikala/dms/adapter/SyncDataAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 33
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAdapter:Lcom/digikala/dms/adapter/SyncDataAdapter;

    return-void
.end method

.method public static final synthetic access$setMAllShipment$p(Lcom/digikala/dms/view/activity/SyncDataActivity;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "$this"    # Lcom/digikala/dms/view/activity/SyncDataActivity;
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 33
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$syncDataToServer(Lcom/digikala/dms/view/activity/SyncDataActivity;)V
    .registers 1
    .param p0, "$this"    # Lcom/digikala/dms/view/activity/SyncDataActivity;

    .line 33
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->syncDataToServer()V

    return-void
.end method

.method private final getMSync_Rv()Landroid/support/v7/widget/RecyclerView;
    .registers 4

    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mSync_Rv$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/digikala/dms/view/activity/SyncDataActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private final loadAllShipmentOffline()V
    .registers 6

    .line 67
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 68
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

    .line 69
    .local v1, "loggedInDeliveries":Lio/realm/RealmResults;
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_72

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v3

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    if-eqz v3, :cond_72

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    if-lez v3, :cond_72

    .line 71
    const-class v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string/jumbo v4, "tupleIsSyncedWithServer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    .line 72
    .local v2, "allShipments":Lio/realm/RealmResults;
    if-eqz v2, :cond_72

    .line 73
    iget-object v3, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    if-nez v3, :cond_6c

    const-string v4, "mAllShipment"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6c
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    .end local v2    # "allShipments":Lio/realm/RealmResults;
    :cond_72
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 78
    return-void
.end method

.method private final loadData()V
    .registers 6

    .line 81
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->loadAllShipmentOffline()V

    .line 82
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    const-string v1, "mAllShipment"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_5e

    .line 83
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMSync_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMSync_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .local v0, "it":Landroid/support/v7/widget/RecyclerView;
    move v1, v2

    .line 86
    .local v1, "$i$a$1$let":I
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMSync_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 87
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMSync_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 88
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMSync_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAdapter:Lcom/digikala/dms/adapter/SyncDataAdapter;

    check-cast v3, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object v2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAdapter:Lcom/digikala/dms/adapter/SyncDataAdapter;

    if-eqz v2, :cond_5d

    iget-object v3, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    if-nez v3, :cond_59

    const-string v4, "mAllShipment"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_59
    invoke-virtual {v2, v3}, Lcom/digikala/dms/adapter/SyncDataAdapter;->addItem(Ljava/util/ArrayList;)V

    nop

    .line 85
    .end local v0    # "it":Landroid/support/v7/widget/RecyclerView;
    .end local v1    # "$i$a$1$let":I
    :cond_5d
    goto :goto_6c

    .line 92
    :cond_5e
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMSync_Rv()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_6c
    nop

    .line 95
    return-void
.end method

.method private final syncDataToServer()V
    .registers 8

    .line 99
    iget v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->shipmentIndex:I

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    const-string v2, "mAllShipment"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x8

    if-le v0, v1, :cond_45

    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getUnSyncedShipmentSize()I

    move-result v0

    if-nez v0, :cond_45

    .line 100
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u062f\u0631 \u062d\u0627\u0644 \u0647\u0645\u06af\u0627\u0645 \u0633\u0627\u0632\u06cc \u0628\u0627 \u0633\u0631\u0648\u0631"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMWaitingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "run makeFinalized() automatic sync"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->finalizeSync()V

    .line 105
    return-void

    .line 107
    :cond_45
    iget v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->shipmentIndex:I

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    if-nez v1, :cond_50

    const-string v4, "mAllShipment"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_62

    .line 109
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMWaitingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->showSyncErrorDialog()V

    .line 111
    return-void

    .line 112
    :cond_62
    nop

    .line 113
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "deliverId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "batchId":Ljava/lang/String;
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 116
    .local v3, "realm":Lio/realm/Realm;
    iget-object v4, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    if-nez v4, :cond_80

    const-string v5, "mAllShipment"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_80
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ba

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v2, "shipments":Ljava/util/ArrayList;
    iget-object v4, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    if-nez v4, :cond_94

    const-string v5, "mAllShipment"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_94
    iget v5, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->shipmentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMWaitingView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    new-instance v5, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;

    invoke-direct {v5, p0, v3}, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;)V

    check-cast v5, Lcom/android/volley/Response$Listener;

    .line 153
    new-instance v6, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;

    invoke-direct {v6, p0, v3}, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;)V

    check-cast v6, Lcom/android/volley/Response$ErrorListener;

    .line 120
    invoke-static {v0, v1, v4, v5, v6}, Lcom/digikala/dms/helper/webservice/WebApi;->makeSyncShipmentsWithBackOfficeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_cc

    .line 174
    .end local v2    # "shipments":Ljava/util/ArrayList;
    :cond_ba
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "run makeFinalized() automatic sync"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 176
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->finalizeSync()V

    .line 177
    :goto_cc
    nop

    .line 178
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_9
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public finalizeSync()V
    .registers 6

    .line 220
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 221
    .local v0, "realm":Lio/realm/Realm;
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 222
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "batchId":Ljava/lang/String;
    nop

    .line 242
    nop

    .line 223
    iget-object v2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->TAG_DEBUG:Ljava/lang/String;

    new-instance v3, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;

    invoke-direct {v3, p0, v0}, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;)V

    check-cast v3, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;

    .line 242
    nop

    .line 223
    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/digikala/dms/helper/webservice/WebApi;->makeFinalizeBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 243
    return-void
.end method

.method public final getMErrorView()Landroid/view/View;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mErrorView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/digikala/dms/view/activity/SyncDataActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getMWaitingView()Landroid/view/View;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mWaitingView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/digikala/dms/view/activity/SyncDataActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getShipmentIndex()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->shipmentIndex:I

    return v0
.end method

.method public final getUnSyncedShipmentSize()I
    .registers 6

    .line 247
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 248
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

    .line 249
    .local v1, "loggedInDeliveries":Lio/realm/RealmResults;
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_72

    .line 250
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v3

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    if-eqz v3, :cond_72

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    if-lez v3, :cond_72

    .line 251
    const-class v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string/jumbo v4, "tupleIsSyncedWithServer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    .line 252
    .local v2, "allShipments":Lio/realm/RealmResults;
    if-eqz v2, :cond_72

    .line 253
    iget-object v3, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mUnsyncedShipmentList:Ljava/util/ArrayList;

    if-nez v3, :cond_6c

    const-string v4, "mUnsyncedShipmentList"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6c
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 257
    .end local v2    # "allShipments":Lio/realm/RealmResults;
    :cond_72
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 258
    iget-object v2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mUnsyncedShipmentList:Ljava/util/ArrayList;

    if-nez v2, :cond_7e

    const-string v3, "mUnsyncedShipmentList"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMWaitingView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    new-instance v0, Lcom/digikala/dms/adapter/SyncDataAdapter;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Lcom/digikala/dms/helper/touch/OnStartSyncListener;

    invoke-direct {v0, v1, v2}, Lcom/digikala/dms/adapter/SyncDataAdapter;-><init>(Landroid/content/Context;Lcom/digikala/dms/helper/touch/OnStartSyncListener;)V

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAdapter:Lcom/digikala/dms/adapter/SyncDataAdapter;

    .line 59
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mAllShipment:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->mUnsyncedShipmentList:Ljava/util/ArrayList;

    .line 62
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->loadData()V

    .line 63
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->syncDataToServer()V

    .line 64
    return-void
.end method

.method public final reSendAllOrder()V
    .registers 2

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->shipmentIndex:I

    .line 285
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->loadAllShipmentOffline()V

    .line 286
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->syncDataToServer()V

    .line 287
    return-void
.end method

.method public retrySync(Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 9
    .param p1, "shipment"    # Lcom/digikala/dms/model/domain/Shipment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shipment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "deliverId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "batchId":Ljava/lang/String;
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 185
    .local v2, "realm":Lio/realm/Realm;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, "shipments":Ljava/util/ArrayList;
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMWaitingView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 189
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    new-instance v5, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;

    invoke-direct {v5, p0, v2, p1}, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V

    check-cast v5, Lcom/android/volley/Response$Listener;

    .line 206
    new-instance v6, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;

    invoke-direct {v6, p0, v2, p1}, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V

    check-cast v6, Lcom/android/volley/Response$ErrorListener;

    .line 189
    invoke-static {v0, v1, v4, v5, v6}, Lcom/digikala/dms/helper/webservice/WebApi;->makeSyncShipmentsWithBackOfficeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 217
    return-void
.end method

.method public final setShipmentIndex(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 41
    iput p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity;->shipmentIndex:I

    return-void
.end method

.method public final showSyncErrorDialog()V
    .registers 3

    .line 262
    nop

    .line 280
    nop

    .line 262
    nop

    .line 276
    nop

    .line 262
    nop

    .line 273
    nop

    .line 262
    nop

    .line 269
    nop

    .line 262
    nop

    .line 268
    nop

    .line 262
    nop

    .line 267
    nop

    .line 262
    nop

    .line 266
    nop

    .line 262
    nop

    .line 265
    nop

    .line 262
    nop

    .line 264
    nop

    .line 262
    nop

    .line 263
    nop

    .line 262
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    const v1, 0x7f1000ca

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity(Lcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 265
    const v1, 0x7f1000cc

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 267
    const v1, 0x7f1000cd

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 268
    const v1, 0x7f1000c9

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$1;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V

    check-cast v1, Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 273
    sget-object v1, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$2;->INSTANCE:Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$2;

    check-cast v1, Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$3;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$3;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V

    check-cast v1, Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNeutral(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 281
    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity.AnonymousClass1 (com.digikala.dms.view.activity.SyncDataActivity$finalizeSync$1)
.class public final Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;->finalizeSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0017\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;",
        "",
        "onErrorResponse",
        "",
        "errorMessage",
        "",
        "onResponse",
        "successfullyFinalized",
        "(Ljava/lang/Boolean;)V",
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
.field final synthetic $realm:Lio/realm/Realm;

.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;)V
    .registers 3
    .param p1, "$outer"    # Lcom/digikala/dms/view/activity/SyncDataActivity;
    .param p2, "$captured_local_variable$1"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            ")V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    nop

    .line 240
    nop

    .line 237
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    sget v1, Lcom/digikala/dms/R$id;->activity_shipment_sync_root:I

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    const v2, 0x7f1000d6

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onErrorResponse$1;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onErrorResponse$1;-><init>(Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 241
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "successfullyFinalized"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 225
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getTAG_DEBUG$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Lcom/digikala/dms/helper/RealmHelper;->deleteRealmTables()V

    .line 227
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->$realm:Lio/realm/Realm;

    sget-object v1, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onResponse$1;->INSTANCE:Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onResponse$1;

    check-cast v1, Lio/realm/Realm$Transaction;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 228
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->logout()V

    .line 229
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 223
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity$finalizeSync$1$onErrorResponse$1 (com.digikala.dms.view.activity.SyncDataActivity$finalizeSync$1$onErrorResponse$1)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onErrorResponse$1;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->onErrorResponse(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onErrorResponse$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "it"    # Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onErrorResponse$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "run makeFinalized() snackbar"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onErrorResponse$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->finalizeSync()V

    .line 240
    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity$finalizeSync$1$onResponse$1 (com.digikala.dms.view.activity.SyncDataActivity$finalizeSync$1$onResponse$1)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onResponse$1;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1;->onResponse(Ljava/lang/Boolean;)V
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
        "realm",
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


# static fields
.field public static final INSTANCE:Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onResponse$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onResponse$1;

    invoke-direct {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onResponse$1;-><init>()V

    sput-object v0, Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onResponse$1;->INSTANCE:Lcom/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1$onResponse$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .registers 2
    .param p1, "realm"    # Lio/realm/Realm;

    .line 227
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity.C00551 (com.digikala.dms.view.activity.SyncDataActivity$retrySync$1)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;->retrySync(Lcom/digikala/dms/model/domain/Shipment;)V
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
.field final synthetic $realm:Lio/realm/Realm;

.field final synthetic $shipment:Lcom/digikala/dms/model/domain/Shipment;

.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 4

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->$shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 33
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onResponse(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "it"    # Lorg/json/JSONObject;

    .line 190
    nop

    .line 191
    :try_start_1
    const-string v0, "Data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 192
    .local v0, "successfullySynced":Z
    if-eqz v0, :cond_36

    .line 193
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->$realm:Lio/realm/Realm;

    invoke-virtual {v1}, Lio/realm/Realm;->beginTransaction()V

    .line 194
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->$shipment:Lcom/digikala/dms/model/domain/Shipment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 195
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getMAdapter$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Lcom/digikala/dms/adapter/SyncDataAdapter;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->$shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shipment.orderId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/digikala/dms/adapter/SyncDataAdapter;->removeById(Ljava/lang/String;)V

    .line 196
    :cond_2a
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->$realm:Lio/realm/Realm;

    invoke-virtual {v1}, Lio/realm/Realm;->commitTransaction()V

    .line 197
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$loadAllShipmentOffline(Lcom/digikala/dms/view/activity/SyncDataActivity;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    goto :goto_36

    .line 201
    .end local v0    # "successfullySynced":Z
    :catch_35
    move-exception v0

    .line 203
    :cond_36
    :goto_36
    nop

    .line 204
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMWaitingView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity.AnonymousClass2 (com.digikala.dms.view.activity.SyncDataActivity$retrySync$2)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;->retrySync(Lcom/digikala/dms/model/domain/Shipment;)V
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
.field final synthetic $realm:Lio/realm/Realm;

.field final synthetic $shipment:Lcom/digikala/dms/model/domain/Shipment;

.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 4

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->$shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "it"    # Lcom/android/volley/VolleyError;

    .line 207
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 210
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getMAdapter$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Lcom/digikala/dms/adapter/SyncDataAdapter;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->$shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shipment.orderId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->$shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/adapter/SyncDataAdapter;->updateById(Ljava/lang/String;Lcom/digikala/dms/model/domain/Shipment;)V

    .line 211
    :cond_36
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getTAG_DEBUG$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error and tuple is Fail with server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 213
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$loadAllShipmentOffline(Lcom/digikala/dms/view/activity/SyncDataActivity;)V

    .line 214
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$retrySync$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getMWaitingView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity.C00561 (com.digikala.dms.view.activity.SyncDataActivity$showSyncErrorDialog$1)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$1;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;->showSyncErrorDialog()V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "<anonymous parameter 1>",
        "Lcom/afollestad/materialdialogs/DialogAction;",
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
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

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

    .line 270
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 271
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->finish()V

    .line 272
    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity.C00572 (com.digikala.dms.view.activity.SyncDataActivity$showSyncErrorDialog$2)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$2;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;->showSyncErrorDialog()V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "<anonymous parameter 1>",
        "Lcom/afollestad/materialdialogs/DialogAction;",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$2;

    invoke-direct {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$2;-><init>()V

    sput-object v0, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$2;->INSTANCE:Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$2;

    return-void
.end method

.method constructor <init>()V
    .registers 1

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

    .line 274
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 275
    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity.AnonymousClass3 (com.digikala.dms.view.activity.SyncDataActivity$showSyncErrorDialog$3)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$3;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;->showSyncErrorDialog()V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "<anonymous parameter 1>",
        "Lcom/afollestad/materialdialogs/DialogAction;",
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
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$3;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

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

    .line 277
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 278
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$showSyncErrorDialog$3;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->reSendAllOrder()V

    .line 279
    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity.C00581 (com.digikala.dms.view.activity.SyncDataActivity$syncDataToServer$1)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;->syncDataToServer()V
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
.field final synthetic $realm:Lio/realm/Realm;

.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;)V
    .registers 3

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 33
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onResponse(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "it"    # Lorg/json/JSONObject;

    .line 122
    nop

    .line 123
    :try_start_1
    const-string v0, "Data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 125
    .local v0, "successfullySynced":Z
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getTAG_DEBUG$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz v0, :cond_99

    .line 129
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->$realm:Lio/realm/Realm;

    invoke-virtual {v1}, Lio/realm/Realm;->beginTransaction()V

    .line 131
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getMAllShipment$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v2}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getShipmentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mAllShipment[shipmentIndex]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 133
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getMAdapter$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Lcom/digikala/dms/adapter/SyncDataAdapter;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget-object v3, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v3}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getMAllShipment$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v4}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getShipmentIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mAllShipment[shipmentIndex]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mAllShipment[shipmentIndex].orderId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/digikala/dms/adapter/SyncDataAdapter;->removeById(Ljava/lang/String;)V

    .line 135
    :cond_6e
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getTAG_DEBUG$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "response is true and tuple is synced with server"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->$realm:Lio/realm/Realm;

    invoke-virtual {v1}, Lio/realm/Realm;->commitTransaction()V

    .line 140
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getShipmentIndex()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/digikala/dms/view/activity/SyncDataActivity;->setShipmentIndex(I)V

    .line 141
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$syncDataToServer(Lcom/digikala/dms/view/activity/SyncDataActivity;)V

    .line 143
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getTAG_DEBUG$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "after update item"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 147
    :cond_99
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$1;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getTAG_DEBUG$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "response is false  in response section"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a4} :catch_a5

    .line 148
    .end local v0    # "successfullySynced":Z
    goto :goto_a6

    .line 149
    :catch_a5
    move-exception v0

    .line 151
    :goto_a6
    nop

    .line 153
    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity.C00592 (com.digikala.dms.view.activity.SyncDataActivity$syncDataToServer$2)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;
.super Ljava/lang/Object;
.source "SyncDataActivity.kt"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;->syncDataToServer()V
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
.field final synthetic $realm:Lio/realm/Realm;

.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;Lio/realm/Realm;)V
    .registers 3

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "it"    # Lcom/android/volley/VolleyError;

    .line 154
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 160
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getMAdapter$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Lcom/digikala/dms/adapter/SyncDataAdapter;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getMAllShipment$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v2}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getShipmentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mAllShipment[shipmentIndex]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mAllShipment[shipmentIndex].orderId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v2}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getMAllShipment$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v3}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getShipmentIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mAllShipment[shipmentIndex]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/adapter/SyncDataAdapter;->updateById(Ljava/lang/String;Lcom/digikala/dms/model/domain/Shipment;)V

    .line 162
    :cond_47
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getTAG_DEBUG$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error and tuple is Fail with server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 167
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->getShipmentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->setShipmentIndex(I)V

    .line 168
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$syncDataToServer(Lcom/digikala/dms/view/activity/SyncDataActivity;)V

    .line 171
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$syncDataToServer$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SyncDataActivity;->access$getTAG_DEBUG$p(Lcom/digikala/dms/view/activity/SyncDataActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "response is false  in response section"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity$mErrorView$2 (com.digikala.dms.view.activity.SyncDataActivity$mErrorView$2)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$mErrorView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncDataActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;-><init>()V
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
    value = "SMAP\nSyncDataActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncDataActivity.kt\ncom/digikala/dms/view/activity/SyncDataActivity$mErrorView$2\n*L\n1#1,289:1\n*E\n"
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
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$mErrorView$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$mErrorView$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    sget v1, Lcom/digikala/dms/R$id;->activity_shipment_sync_error_stub:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .local v1, "$receiver":Landroid/view/View;
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$a$1$apply":I
    nop

    .line 44
    .end local v1    # "$receiver":Landroid/view/View;
    .end local v2    # "$i$a$1$apply":I
    nop

    .line 46
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity$mErrorView$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity$mSync_Rv$2 (com.digikala.dms.view.activity.SyncDataActivity$mSync_Rv$2)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$mSync_Rv$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncDataActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;-><init>()V
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
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$mSync_Rv$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/support/v7/widget/RecyclerView;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$mSync_Rv$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    sget v1, Lcom/digikala/dms/R$id;->activity_shipment_sync_rv:I

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/SyncDataActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity$mSync_Rv$2;->invoke()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.view.activity.SyncDataActivity$mWaitingView$2 (com.digikala.dms.view.activity.SyncDataActivity$mWaitingView$2)
.class final Lcom/digikala/dms/view/activity/SyncDataActivity$mWaitingView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncDataActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SyncDataActivity;-><init>()V
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
    value = "SMAP\nSyncDataActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncDataActivity.kt\ncom/digikala/dms/view/activity/SyncDataActivity$mWaitingView$2\n*L\n1#1,289:1\n*E\n"
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
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SyncDataActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$mWaitingView$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SyncDataActivity$mWaitingView$2;->this$0:Lcom/digikala/dms/view/activity/SyncDataActivity;

    sget v1, Lcom/digikala/dms/R$id;->activity_shipment_sync_waiting_view_stub:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .local v1, "$receiver":Landroid/view/View;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$1$apply":I
    sget v3, Lcom/digikala/dms/R$id;->waiting_view_anim:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v3}, Lcom/wang/avi/AVLoadingIndicatorView;->smoothToShow()V

    .line 51
    .end local v1    # "$receiver":Landroid/view/View;
    .end local v2    # "$i$a$1$apply":I
    nop

    .line 49
    nop

    .line 51
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SyncDataActivity$mWaitingView$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
