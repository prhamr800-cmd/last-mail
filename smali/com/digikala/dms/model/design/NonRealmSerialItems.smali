###### Class com.digikala.dms.model.design.NonRealmSerialItems (com.digikala.dms.model.design.NonRealmSerialItems)
.class public Lcom/digikala/dms/model/design/NonRealmSerialItems;
.super Ljava/lang/Object;
.source "NonRealmSerialItems.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private BasketId:Ljava/lang/String;

.field private Count:I

.field private ItemBatchId:Ljava/lang/String;

.field private OrderItemId:Ljava/lang/String;

.field private ReasonId:Ljava/lang/String;

.field private SerialItem:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lcom/digikala/dms/model/design/NonRealmSerialItems$1;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/NonRealmSerialItems$1;-><init>()V

    sput-object v0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->SerialItem:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ItemBatchId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->BasketId:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->Count:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->SerialItem:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ItemBatchId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->BasketId:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->Count:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->SerialItem:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ReasonId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->OrderItemId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->BasketId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->Count:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "serialItem"    # Ljava/lang/String;
    .param p2, "reasonId"    # Ljava/lang/String;
    .param p3, "itemBatchId"    # Ljava/lang/String;
    .param p4, "orderItemId"    # Ljava/lang/String;
    .param p5, "count"    # I
    .param p6, "basketId"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->SerialItem:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ItemBatchId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->BasketId:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->Count:I

    .line 34
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->SerialItem:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ReasonId:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ItemBatchId:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->OrderItemId:Ljava/lang/String;

    .line 38
    iput p5, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->Count:I

    .line 39
    iput-object p6, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->BasketId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getBasketId()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->BasketId:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->Count:I

    return v0
.end method

.method public getItemBatchId()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ItemBatchId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderItemId()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->OrderItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonId()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ReasonId:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialItem()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->SerialItem:Ljava/lang/String;

    return-object v0
.end method

.method public setBasketId(Ljava/lang/String;)V
    .registers 2
    .param p1, "basketId"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->BasketId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 113
    iput p1, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->Count:I

    .line 114
    return-void
.end method

.method public setItemBatchId(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemBatchId"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ItemBatchId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setOrderItemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderItemId"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->OrderItemId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setReasonId(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonId"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ReasonId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSerialItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "OrderItemId"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->SerialItem:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->SerialItem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->ReasonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->OrderItemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->BasketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/digikala/dms/model/design/NonRealmSerialItems;->Count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method

###### Class com.digikala.dms.model.design.NonRealmSerialItems.AnonymousClass1 (com.digikala.dms.model.design.NonRealmSerialItems$1)
.class final Lcom/digikala/dms/model/design/NonRealmSerialItems$1;
.super Ljava/lang/Object;
.source "NonRealmSerialItems.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/model/design/NonRealmSerialItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/digikala/dms/model/design/NonRealmSerialItems;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 84
    new-instance v0, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    invoke-direct {v0, p1}, Lcom/digikala/dms/model/design/NonRealmSerialItems;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/NonRealmSerialItems$1;->createFromParcel(Landroid/os/Parcel;)Lcom/digikala/dms/model/design/NonRealmSerialItems;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/digikala/dms/model/design/NonRealmSerialItems;
    .registers 3
    .param p1, "size"    # I

    .line 88
    new-array v0, p1, [Lcom/digikala/dms/model/design/NonRealmSerialItems;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/NonRealmSerialItems$1;->newArray(I)[Lcom/digikala/dms/model/design/NonRealmSerialItems;

    move-result-object p1

    return-object p1
.end method
