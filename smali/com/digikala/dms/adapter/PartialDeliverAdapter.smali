###### Class com.digikala.dms.adapter.PartialDeliverAdapter (com.digikala.dms.adapter.PartialDeliverAdapter)
.class public Lcom/digikala/dms/adapter/PartialDeliverAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PartialDeliverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private flag:Z

.field private fm:Landroid/support/v4/app/FragmentManager;

.field private mActivity:Landroid/app/Activity;

.field private mBasketItemId:Ljava/lang/String;

.field private mBasketItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchItemCount:I

.field public mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFoundItem:Z

.field private mOrderItemId:Ljava/lang/String;

.field public mRejectReasonsTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mReturnListCount:[I

.field private mReturnedProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/design/NonRealmSerialItems;",
            ">;"
        }
    .end annotation
.end field

.field private mSerialItemId:Ljava/lang/String;

.field private mShipmentItemIndex:I

.field private mShipmentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;"
        }
    .end annotation
.end field

.field private partialDeliverItemClick:Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;

.field private rejectReasonsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;)V
    .registers 14
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p6, "deliverItemClick"    # Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/design/NonRealmSerialItems;",
            ">;",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;",
            "Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;",
            ")V"
        }
    .end annotation

    .line 58
    .local p3, "basketItems":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .local p4, "returnedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/design/NonRealmSerialItems;>;"
    .local p5, "rejectReasons":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/RejectReason;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mFoundItem:Z

    .line 202
    const/4 v1, -0x1

    iput v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    .line 59
    iput-object p1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->fm:Landroid/support/v4/app/FragmentManager;

    .line 60
    iput-object p2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBasketItems:Ljava/util/List;

    .line 62
    iput-object p5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->rejectReasonsList:Ljava/util/List;

    .line 63
    iput-object p4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 65
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    .line 67
    .local v1, "realm":Lio/realm/Realm;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBasketItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8a

    .line 69
    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBasketItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v3

    .line 70
    .local v3, "shipmentItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    iget-object v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4d
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    if-ge v4, v5, :cond_87

    .line 91
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBasketItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BasketItems;->getBasketId()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "basketId":Ljava/lang/String;
    new-instance v6, Lcom/digikala/dms/adapter/PartialDeliverAdapter$1;

    invoke-direct {v6, p0, v5}, Lcom/digikala/dms/adapter/PartialDeliverAdapter$1;-><init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 72
    .end local v5    # "basketId":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 67
    .end local v3    # "shipmentItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    .end local v4    # "j":I
    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 106
    .end local v2    # "i":I
    :cond_8a
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mRejectReasonsTemp:Ljava/util/ArrayList;

    .line 108
    iput-object p6, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->partialDeliverItemClick:Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;

    .line 109
    iget-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    .line 110
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a1
    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b7

    .line 111
    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mRejectReasonsTemp:Ljava/util/ArrayList;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    aput v0, v3, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 115
    .end local v2    # "i":I
    :cond_b7
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->partialDeliverItemClick:Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->existBatchItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->addBatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->rejectReasonsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mSerialItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Lcom/digikala/dms/model/design/NonRealmSerialItems;)Z
    .registers 3
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;
    .param p1, "x1"    # Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 39
    invoke-direct {p0, p1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->existReturnItem(Lcom/digikala/dms/model/design/NonRealmSerialItems;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 39
    iget v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBatchItemCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mOrderItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBasketItemId:Ljava/lang/String;

    return-object v0
.end method

.method private addBatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "mSerialItemId"    # Ljava/lang/String;
    .param p2, "orderItemId"    # Ljava/lang/String;
    .param p3, "reasonId"    # Ljava/lang/String;
    .param p4, "basketId"    # Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 364
    .local v1, "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getBasketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getOrderItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getItemBatchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getReasonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 365
    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->setCount(I)V

    .line 366
    return-void

    .line 368
    .end local v1    # "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    :cond_44
    goto :goto_6

    .line 370
    :cond_45
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    new-instance v8, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    const-string v2, ""

    const/4 v6, 0x1

    move-object v1, v8

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/digikala/dms/model/design/NonRealmSerialItems;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method private existBatchItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "mSerialItemId"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "orderItemId"    # Ljava/lang/String;
    .param p4, "basketId"    # Ljava/lang/String;

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "totalCount":I
    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 397
    .local v2, "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getBasketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getOrderItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getItemBatchId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 398
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 400
    .end local v2    # "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    :cond_36
    goto :goto_7

    .line 401
    :cond_37
    if-ne v0, p2, :cond_3b

    .line 402
    const/4 v1, 0x1

    return v1

    .line 405
    :cond_3b
    const/4 v1, 0x0

    return v1
.end method

.method private existReturnItem(Lcom/digikala/dms/model/design/NonRealmSerialItems;)Z
    .registers 6
    .param p1, "nonRealmSerialItem"    # Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 341
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 342
    .local v1, "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 343
    const/4 v0, 0x1

    return v0

    .line 345
    .end local v1    # "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    :cond_22
    goto :goto_6

    .line 346
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method private existSerialItem(Ljava/lang/String;)Z
    .registers 5
    .param p1, "mSerialItemId"    # Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 352
    .local v1, "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 353
    const/4 v0, 0x1

    return v0

    .line 355
    .end local v1    # "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    :cond_1e
    goto :goto_6

    .line 356
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private removeBatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "mSerialItemId"    # Ljava/lang/String;
    .param p2, "orderItemId"    # Ljava/lang/String;
    .param p3, "basketId"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 378
    .local v1, "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getBasketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getOrderItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getItemBatchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 379
    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3d

    .line 380
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_47

    .line 382
    :cond_3d
    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->setCount(I)V

    .line 385
    goto :goto_47

    .line 387
    .end local v1    # "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    :cond_46
    goto :goto_6

    .line 388
    :cond_47
    :goto_47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 389
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 39
    check-cast p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;I)V
    .registers 11
    .param p1, "holder"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 125
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 127
    .local v0, "shipmentItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getSerialItemList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    if-nez v1, :cond_1d

    .line 128
    iget-object v1, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemLayout:Landroid/view/View;

    new-instance v2, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;-><init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_27

    .line 139
    :cond_1d
    iget-object v1, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemLayout:Landroid/view/View;

    new-instance v2, Lcom/digikala/dms/adapter/PartialDeliverAdapter$3;

    invoke-direct {v2, p0, p2}, Lcom/digikala/dms/adapter/PartialDeliverAdapter$3;-><init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :goto_27
    iget-object v1, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemBrandTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->formatPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u0631\u06cc\u0627\u0644"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "payableText":Ljava/lang/String;
    iget-object v2, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemAmountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :try_start_61
    iget-object v2, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_72} :catch_73

    .line 155
    goto :goto_77

    .line 153
    :catch_73
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 158
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_77
    iget-object v2, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 159
    .local v2, "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    const/4 v3, 0x0

    .line 160
    .local v3, "bottomMargin":I
    invoke-virtual {p0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p2, v4, :cond_95

    .line 161
    iget-object v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070134

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 163
    :cond_95
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 168
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 169
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemStateImageView:Landroid/widget/ImageView;

    const v5, 0x7f08009e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    const v6, 0x7f060021

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemCountLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    const v6, 0x7f06005c

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->separator:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemRejectReasonTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemReturnCountTextView:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemRejectReasonTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_163

    .line 178
    :cond_e7
    iget-object v5, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemStateImageView:Landroid/widget/ImageView;

    const v6, 0x7f0800a3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v5, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemLayout:Landroid/view/View;

    iget-object v6, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0600aa

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    iget-object v5, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemCountLayout:Landroid/view/View;

    iget-object v6, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0600ab

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 181
    iget-object v5, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->separator:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v5, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemRejectReasonTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemRejectReasonTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mRejectReasonsTemp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->getAdapterPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemBrandTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBrandName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :try_start_138
    iget-object v4, p1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemReturnCountTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    invoke-virtual {p1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->getAdapterPosition()I

    move-result v6

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_14d
    .catch Ljava/lang/NumberFormatException; {:try_start_138 .. :try_end_14d} :catch_14e

    .line 191
    goto :goto_152

    .line 189
    :catch_14e
    move-exception v4

    .line 190
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 192
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_152
    const-string v4, "PartialDeliver  num2"

    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mRejectReasonsTemp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->getAdapterPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_163
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public removeBatchItemFromReturnItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "mSerialItemId"    # Ljava/lang/String;
    .param p2, "orderItemId"    # Ljava/lang/String;
    .param p3, "basketId"    # Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 456
    .local v1, "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getBasketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getOrderItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-virtual {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getItemBatchId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 460
    invoke-direct {p0, p1, p2, p3}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->removeBatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "mFoundFlag":Z
    const/4 v4, -0x1

    .line 464
    .local v4, "mReturnItemIndex":I
    move v5, v4

    move v4, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v4, "mFoundFlag":Z
    .local v5, "mReturnItemIndex":I
    :goto_3a
    iget-object v6, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_ea

    .line 465
    if-eqz v4, :cond_46

    .line 466
    goto/16 :goto_ea

    .line 469
    :cond_46
    const/4 v6, 0x0

    .line 470
    .local v6, "totalCount":I
    iget-object v7, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_57
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/BatchItem;

    .line 471
    .local v8, "batchItem":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/BatchItem;->getCount()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v6, v9

    .line 472
    .end local v8    # "batchItem":Lcom/digikala/dms/model/domain/BatchItem;
    goto :goto_57

    .line 473
    :cond_6d
    iget-object v7, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v7

    if-ne v6, v7, :cond_ea

    .line 474
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7c
    iget-object v8, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v8

    if-ge v7, v8, :cond_e6

    .line 475
    iget-object v8, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBasketId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e3

    iget-object v8, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e3

    iget-object v8, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/BatchItem;->getItemBatchId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 476
    const/4 v4, 0x1

    .line 477
    move v5, v0

    .line 478
    iget-object v8, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    aget v9, v8, v0

    sub-int/2addr v9, v3

    aput v9, v8, v0

    .line 479
    iget-object v8, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    aget v8, v8, v0

    if-gtz v8, :cond_e6

    .line 480
    iget-object v8, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e6

    .line 474
    :cond_e3
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c

    .line 464
    .end local v6    # "totalCount":I
    .end local v7    # "j":I
    :cond_e6
    :goto_e6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3a

    .line 490
    .end local v0    # "i":I
    :cond_ea
    :goto_ea
    invoke-virtual {p0, v5}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->notifyItemChanged(I)V

    .line 491
    const/4 v0, 0x0

    .line 493
    .end local v4    # "mFoundFlag":Z
    .local v0, "mFoundFlag":Z
    return v3

    .line 495
    .end local v0    # "mFoundFlag":Z
    .end local v1    # "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    .end local v5    # "mReturnItemIndex":I
    :cond_ef
    goto/16 :goto_6

    .line 498
    :cond_f1
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "\u0686\u0646\u06cc\u0646 \u06a9\u0627\u0644\u0627\u06cc\u06cc \u062f\u0631 \u0644\u06cc\u0633\u062a \u0645\u0631\u062c\u0648\u0639\u06cc \u0648\u062c\u0648\u062f \u0646\u062f\u0627\u0631\u062f"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 501
    return v2
.end method

.method public removeItemFromReturnItem(Ljava/lang/String;)Z
    .registers 11
    .param p1, "mSerialItemId"    # Ljava/lang/String;

    .line 409
    invoke-direct {p0, p1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->existSerialItem(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a2

    .line 410
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    .line 411
    .local v3, "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    invoke-virtual {v3}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 415
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnedProducts:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "mFoundFlag":Z
    const/4 v4, -0x1

    .line 419
    .local v4, "mReturnItemIndex":I
    move v5, v4

    move v4, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v4, "mFoundFlag":Z
    .local v5, "mReturnItemIndex":I
    :goto_2e
    iget-object v6, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_9b

    .line 420
    if-eqz v4, :cond_39

    .line 421
    goto :goto_9b

    .line 423
    :cond_39
    iget-object v6, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/ShipmentItem;->getSerialItemList()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v7

    if-ne v6, v7, :cond_9b

    .line 424
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_58
    iget-object v7, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v7

    if-ge v6, v7, :cond_98

    .line 425
    iget-object v7, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/ShipmentItem;->getSerialItemList()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 426
    const/4 v4, 0x1

    .line 427
    move v5, v0

    .line 428
    iget-object v7, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    aget v8, v7, v0

    sub-int/2addr v8, v2

    aput v8, v7, v0

    .line 429
    iget-object v7, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    aget v7, v7, v0

    if-gtz v7, :cond_98

    .line 430
    iget-object v7, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_98

    .line 424
    :cond_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 419
    .end local v6    # "j":I
    :cond_98
    :goto_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 440
    .end local v0    # "i":I
    :cond_9b
    :goto_9b
    invoke-virtual {p0, v5}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->notifyItemChanged(I)V

    .line 441
    const/4 v0, 0x0

    .line 443
    .end local v4    # "mFoundFlag":Z
    .local v0, "mFoundFlag":Z
    return v2

    .line 445
    .end local v0    # "mFoundFlag":Z
    .end local v3    # "item":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    .end local v5    # "mReturnItemIndex":I
    :cond_a0
    goto/16 :goto_e

    .line 448
    :cond_a2
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "\u0686\u0646\u06cc\u0646 \u06a9\u0627\u0644\u0627\u06cc\u06cc \u062f\u0631 \u0644\u06cc\u0633\u062a \u0645\u0631\u062c\u0648\u0639\u06cc \u0648\u062c\u0648\u062f \u0646\u062f\u0627\u0631\u062f"

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    :cond_ae
    return v1
.end method

.method public scanBatchId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "serialId"    # Ljava/lang/String;
    .param p2, "orderItemId"    # Ljava/lang/String;
    .param p3, "basketId"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->flag:Z

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_121

    .line 278
    iget-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 279
    iget-boolean v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mFoundItem:Z

    if-eqz v2, :cond_25

    .line 280
    goto/16 :goto_121

    .line 282
    :cond_25
    const/4 v2, 0x0

    .line 283
    .local v2, "totalCount":I
    iget-object v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BatchItem;

    .line 284
    .local v5, "batchItem":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BatchItem;->getCount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v2, v6

    .line 285
    .end local v5    # "batchItem":Lcom/digikala/dms/model/domain/BatchItem;
    goto :goto_36

    .line 286
    :cond_4c
    iget-object v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v4

    if-ne v2, v4, :cond_121

    .line 287
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5b
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    if-ge v4, v5, :cond_11d

    .line 288
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBasketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BatchItem;->getItemBatchId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 289
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BatchItem;->getItemBatchId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mSerialItemId:Ljava/lang/String;

    .line 290
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mOrderItemId:Ljava/lang/String;

    .line 291
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBasketId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBasketItemId:Ljava/lang/String;

    .line 292
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/BatchItem;->getCount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBatchItemCount:I

    .line 293
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mSerialItemId:Ljava/lang/String;

    iget v6, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBatchItemCount:I

    iget-object v7, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mOrderItemId:Ljava/lang/String;

    iget-object v8, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBasketItemId:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->existBatchItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_112

    .line 294
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    aget v6, v5, v1

    add-int/2addr v6, v3

    aput v6, v5, v1

    .line 296
    :cond_112
    iput-boolean v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mFoundItem:Z

    .line 297
    iput-boolean v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->flag:Z

    .line 298
    iput v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    .line 299
    goto :goto_11d

    .line 287
    :cond_119
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5b

    .line 277
    .end local v2    # "totalCount":I
    .end local v4    # "j":I
    :cond_11d
    :goto_11d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 308
    .end local v1    # "i":I
    :cond_121
    :goto_121
    iget-boolean v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mFoundItem:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_14d

    iget v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    if-eq v1, v2, :cond_14d

    .line 309
    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mCheckedList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {v3}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->newInstance(I)Lcom/digikala/dms/view/fragment/PartialDialogFragment;

    move-result-object v1

    .line 311
    .local v1, "fragment":Lcom/digikala/dms/view/fragment/PartialDialogFragment;
    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->fm:Landroid/support/v4/app/FragmentManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 312
    new-instance v3, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;

    invoke-direct {v3, p0, v1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;-><init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Lcom/digikala/dms/view/fragment/PartialDialogFragment;)V

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->setOnItemChangeListener(Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;)V

    .line 324
    iget v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    invoke-virtual {p0, v3}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->notifyItemChanged(I)V

    .line 325
    .end local v1    # "fragment":Lcom/digikala/dms/view/fragment/PartialDialogFragment;
    goto :goto_15b

    .line 326
    :cond_14d
    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "\u0627\u06cc\u0646 \u06a9\u0627\u0644\u0627 \u0645\u0648\u062c\u0648\u062f \u0646\u0645\u06cc\u0628\u0627\u0634\u062f"

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 327
    iput-boolean v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->flag:Z

    .line 329
    :goto_15b
    iput-boolean v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mFoundItem:Z

    .line 330
    iput v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    .line 333
    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mSerialItemId:Ljava/lang/String;

    iget v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBatchItemCount:I

    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mOrderItemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mBasketItemId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->existBatchItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 334
    return v0

    .line 336
    :cond_16e
    iget-boolean v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->flag:Z

    return v0
.end method

.method public scanSerialId(Ljava/lang/String;)Z
    .registers 9
    .param p1, "serialId"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->flag:Z

    .line 212
    new-instance v1, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    invoke-direct {v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;-><init>()V

    .line 213
    .local v1, "returnedProduct":Lcom/digikala/dms/model/design/NonRealmSerialItems;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8c

    .line 214
    iget-boolean v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mFoundItem:Z

    if-eqz v3, :cond_18

    .line 215
    goto/16 :goto_8c

    .line 217
    :cond_18
    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShipmentItem;->getSerialItemList()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v5

    if-ne v3, v5, :cond_8c

    .line 218
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_37
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v5

    if-ge v3, v5, :cond_88

    .line 219
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getSerialItemList()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 220
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/ShipmentItem;->getSerialItemList()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mSerialItemId:Ljava/lang/String;

    .line 221
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mSerialItemId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->existSerialItem(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 222
    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mReturnListCount:[I

    aget v6, v5, v2

    add-int/2addr v6, v4

    aput v6, v5, v2

    .line 224
    :cond_7e
    iput-boolean v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mFoundItem:Z

    .line 225
    iput-boolean v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->flag:Z

    .line 226
    iput v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    .line 227
    goto :goto_88

    .line 218
    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 213
    .end local v3    # "j":I
    :cond_88
    :goto_88
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 235
    .end local v2    # "i":I
    :cond_8c
    :goto_8c
    iget-boolean v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mFoundItem:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_b8

    iget v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    if-eq v2, v3, :cond_b8

    .line 236
    iget-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mCheckedList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {v4}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->newInstance(I)Lcom/digikala/dms/view/fragment/PartialDialogFragment;

    move-result-object v2

    .line 238
    .local v2, "fragment":Lcom/digikala/dms/view/fragment/PartialDialogFragment;
    iget-object v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->fm:Landroid/support/v4/app/FragmentManager;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 239
    new-instance v4, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;-><init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Lcom/digikala/dms/model/design/NonRealmSerialItems;Lcom/digikala/dms/view/fragment/PartialDialogFragment;)V

    invoke-static {v4}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->setOnItemChangeListener(Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;)V

    .line 256
    iget v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    invoke-virtual {p0, v4}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->notifyItemChanged(I)V

    .line 257
    .end local v2    # "fragment":Lcom/digikala/dms/view/fragment/PartialDialogFragment;
    goto :goto_c6

    .line 258
    :cond_b8
    iget-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "\u0628\u0627\u0631\u06a9\u062f \u06a9\u0627\u0644\u0627\u06cc \u0627\u0633\u06a9\u0646 \u0634\u062f\u0647 \u0645\u0648\u062c\u0648\u062f \u0646\u0645\u06cc \u0628\u0627\u0634\u062f."

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 259
    iput-boolean v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->flag:Z

    .line 261
    :goto_c6
    iput-boolean v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mFoundItem:Z

    .line 262
    iput v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mShipmentItemIndex:I

    .line 264
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->setReasonId(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->mSerialItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->setSerialItem(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, v1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->existReturnItem(Lcom/digikala/dms/model/design/NonRealmSerialItems;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 267
    return v0

    .line 270
    :cond_db
    iget-boolean v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->flag:Z

    return v0
.end method

###### Class com.digikala.dms.adapter.PartialDeliverAdapter.AnonymousClass1 (com.digikala.dms.adapter.PartialDeliverAdapter$1)
.class Lcom/digikala/dms/adapter/PartialDeliverAdapter$1;
.super Ljava/lang/Object;
.source "PartialDeliverAdapter.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/PartialDeliverAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

.field final synthetic val$basketId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 95
    iput-object p1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$1;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iput-object p2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$1;->val$basketId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 4
    .param p1, "realm"    # Lio/realm/Realm;

    .line 98
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$1;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$000(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$1;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$000(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$1;->val$basketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/ShipmentItem;->setBasketId(Ljava/lang/String;)V

    .line 99
    return-void
.end method

###### Class com.digikala.dms.adapter.PartialDeliverAdapter.AnonymousClass2 (com.digikala.dms.adapter.PartialDeliverAdapter$2)
.class Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;
.super Ljava/lang/Object;
.source "PartialDeliverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/PartialDeliverAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 128
    iput-object p1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iput p2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$100(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$000(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBatchItems()Lio/realm/RealmList;

    move-result-object v2

    sget-object v0, Lcom/digikala/dms/util/Constant;->Companion:Lcom/digikala/dms/util/Constant$Companion;

    .line 132
    invoke-virtual {v0}, Lcom/digikala/dms/util/Constant$Companion;->getEXTRA_SCAN_FOR_INSERT()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 133
    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$000(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->val$position:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 134
    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$000(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;

    move-result-object v0

    iget v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->val$position:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBasketId()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$2;->val$position:I

    .line 131
    invoke-interface/range {v1 .. v6}, Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;->onItemClickBasket(Lio/realm/RealmList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    return-void
.end method

###### Class com.digikala.dms.adapter.PartialDeliverAdapter.AnonymousClass3 (com.digikala.dms.adapter.PartialDeliverAdapter$3)
.class Lcom/digikala/dms/adapter/PartialDeliverAdapter$3;
.super Ljava/lang/Object;
.source "PartialDeliverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/PartialDeliverAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 139
    iput-object p1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$3;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iput p2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$3;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$100(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$3;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$000(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$3;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/ShipmentItem;->getSerialItemList()Lio/realm/RealmList;

    move-result-object v1

    iget v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$3;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;->onItemClick(Lio/realm/RealmList;I)V

    .line 143
    return-void
.end method

###### Class com.digikala.dms.adapter.PartialDeliverAdapter.AnonymousClass4 (com.digikala.dms.adapter.PartialDeliverAdapter$4)
.class Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;
.super Ljava/lang/Object;
.source "PartialDeliverAdapter.java"

# interfaces
.implements Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/PartialDeliverAdapter;->scanSerialId(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

.field final synthetic val$fragment:Lcom/digikala/dms/view/fragment/PartialDialogFragment;

.field final synthetic val$returnedProduct:Lcom/digikala/dms/model/design/NonRealmSerialItems;


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Lcom/digikala/dms/model/design/NonRealmSerialItems;Lcom/digikala/dms/view/fragment/PartialDialogFragment;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 239
    iput-object p1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iput-object p2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->val$returnedProduct:Lcom/digikala/dms/model/design/NonRealmSerialItems;

    iput-object p3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->val$fragment:Lcom/digikala/dms/view/fragment/PartialDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(II)V
    .registers 6
    .param p1, "reasonPosition"    # I
    .param p2, "countPicked"    # I

    .line 242
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->val$returnedProduct:Lcom/digikala/dms/model/design/NonRealmSerialItems;

    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$200(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/RejectReason;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->setReasonId(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->val$returnedProduct:Lcom/digikala/dms/model/design/NonRealmSerialItems;

    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$300(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;->setSerialItem(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->val$returnedProduct:Lcom/digikala/dms/model/design/NonRealmSerialItems;

    invoke-static {v0, v1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$400(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Lcom/digikala/dms/model/design/NonRealmSerialItems;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_47

    .line 247
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$500(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "\u06a9\u0627\u0644\u0627 \u0628\u0647 \u0644\u06cc\u0633\u062a \u0645\u0631\u062c\u0648\u0639\u06cc \u0647\u0627 \u0627\u0636\u0627\u0641\u0647 \u0634\u062f."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$600(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->val$returnedProduct:Lcom/digikala/dms/model/design/NonRealmSerialItems;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 251
    :cond_47
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$500(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "\u0627\u06cc\u0646 \u06a9\u0627\u0644\u0627 \u0642\u0628\u0644\u0627 \u0627\u0636\u0627\u0641\u0647 \u0634\u062f\u0647 \u0627\u0633\u062a"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    :goto_57
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$4;->val$fragment:Lcom/digikala/dms/view/fragment/PartialDialogFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->dismiss()V

    .line 254
    return-void
.end method

###### Class com.digikala.dms.adapter.PartialDeliverAdapter.AnonymousClass5 (com.digikala.dms.adapter.PartialDeliverAdapter$5)
.class Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;
.super Ljava/lang/Object;
.source "PartialDeliverAdapter.java"

# interfaces
.implements Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/adapter/PartialDeliverAdapter;->scanBatchId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

.field final synthetic val$fragment:Lcom/digikala/dms/view/fragment/PartialDialogFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Lcom/digikala/dms/view/fragment/PartialDialogFragment;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    .line 312
    iput-object p1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iput-object p2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->val$fragment:Lcom/digikala/dms/view/fragment/PartialDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(II)V
    .registers 9
    .param p1, "reasonPosition"    # I
    .param p2, "countPicked"    # I

    .line 315
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iget-object v1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v1}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$300(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v2}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$700(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v3}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$800(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v4}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$900(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$1000(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_59

    .line 316
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    iget-object v2, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v2}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$300(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v3}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$800(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v4}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$200(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/RejectReason;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v5}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$900(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$1100(Lcom/digikala/dms/adapter/PartialDeliverAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$500(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "\u06a9\u0627\u0644\u0627 \u0628\u0647 \u0644\u06cc\u0633\u062a \u0645\u0631\u062c\u0648\u0639\u06cc \u0647\u0627 \u0627\u0636\u0627\u0641\u0647 \u0634\u062f."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_69

    .line 319
    :cond_59
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->this$0:Lcom/digikala/dms/adapter/PartialDeliverAdapter;

    invoke-static {v0}, Lcom/digikala/dms/adapter/PartialDeliverAdapter;->access$500(Lcom/digikala/dms/adapter/PartialDeliverAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "\u0627\u06cc\u0646 \u06a9\u0627\u0644\u0627 \u0642\u0628\u0644\u0627 \u0627\u0636\u0627\u0641\u0647 \u0634\u062f\u0647 \u0627\u0633\u062a"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    :goto_69
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$5;->val$fragment:Lcom/digikala/dms/view/fragment/PartialDialogFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->dismiss()V

    .line 322
    return-void
.end method

###### Class com.digikala.dms.adapter.PartialDeliverAdapter.ViewHolder (com.digikala.dms.adapter.PartialDeliverAdapter$ViewHolder)
.class Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PartialDeliverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/adapter/PartialDeliverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field itemAmountTextView:Landroid/widget/TextView;

.field itemBrandTextView:Landroid/widget/TextView;

.field itemCountLayout:Landroid/view/View;

.field itemCountTextView:Landroid/widget/TextView;

.field itemLayout:Landroid/view/View;

.field itemRejectReasonTextView:Landroid/widget/TextView;

.field itemReturnCountTextView:Landroid/widget/TextView;

.field itemStateImageView:Landroid/widget/ImageView;

.field itemTitleTextView:Landroid/widget/TextView;

.field itemView:Landroid/view/View;

.field separator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .line 519
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 521
    iput-object p1, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 522
    const v0, 0x7f0900ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemLayout:Landroid/view/View;

    .line 523
    const v0, 0x7f0900eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemCountLayout:Landroid/view/View;

    .line 524
    const v0, 0x7f0900f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemTitleTextView:Landroid/widget/TextView;

    .line 525
    const v0, 0x7f0900ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemBrandTextView:Landroid/widget/TextView;

    .line 526
    const v0, 0x7f0900e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemAmountTextView:Landroid/widget/TextView;

    .line 527
    const v0, 0x7f0900ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemCountTextView:Landroid/widget/TextView;

    .line 528
    const v0, 0x7f0900ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemReturnCountTextView:Landroid/widget/TextView;

    .line 529
    const v0, 0x7f0900f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemStateImageView:Landroid/widget/ImageView;

    .line 530
    const v0, 0x7f0900ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->itemRejectReasonTextView:Landroid/widget/TextView;

    .line 531
    const v0, 0x7f09018a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverAdapter$ViewHolder;->separator:Landroid/view/View;

    .line 532
    return-void
.end method
