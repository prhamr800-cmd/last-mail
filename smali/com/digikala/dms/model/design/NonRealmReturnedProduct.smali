###### Class com.digikala.dms.model.design.NonRealmReturnedProduct (com.digikala.dms.model.design.NonRealmReturnedProduct)
.class public Lcom/digikala/dms/model/design/NonRealmReturnedProduct;
.super Ljava/lang/Object;
.source "NonRealmReturnedProduct.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Count:Ljava/lang/String;

.field private ItemBatchId:I

.field private OrderItemId:Ljava/lang/String;

.field private ReasonId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct$1;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/NonRealmReturnedProduct$1;-><init>()V

    sput-object v0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->OrderItemId:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ReasonId:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->Count:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ItemBatchId:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "orderItemId"    # Ljava/lang/String;
    .param p2, "reasonId"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;
    .param p4, "itemBatchId"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->OrderItemId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ReasonId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->Count:Ljava/lang/String;

    .line 31
    iput p4, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ItemBatchId:I

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 60
    :cond_4
    if-ne p1, p0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 61
    :cond_8
    instance-of v1, p1, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;

    if-nez v1, :cond_d

    return v0

    .line 62
    :cond_d
    move-object v0, p1

    check-cast v0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;

    .line 63
    .local v0, "o":Lcom/digikala/dms/model/design/NonRealmReturnedProduct;
    iget-object v1, v0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->OrderItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->OrderItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCount()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->Count:Ljava/lang/String;

    return-object v0
.end method

.method public getItemBatchId()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ItemBatchId:I

    return v0
.end method

.method public getOrderItemId()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->OrderItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonId()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ReasonId:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .registers 2
    .param p1, "count"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->Count:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setItemBatchId(I)V
    .registers 2
    .param p1, "itemBatchId"    # I

    .line 95
    iput p1, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ItemBatchId:I

    .line 96
    return-void
.end method

.method public setOrderItemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "OrderItemId"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->OrderItemId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setReasonId(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonId"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ReasonId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->OrderItemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ReasonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->Count:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;->ItemBatchId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method

###### Class com.digikala.dms.model.design.NonRealmReturnedProduct.AnonymousClass1 (com.digikala.dms.model.design.NonRealmReturnedProduct$1)
.class final Lcom/digikala/dms/model/design/NonRealmReturnedProduct$1;
.super Ljava/lang/Object;
.source "NonRealmReturnedProduct.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/model/design/NonRealmReturnedProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/digikala/dms/model/design/NonRealmReturnedProduct;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    new-instance v0, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;

    invoke-direct {v0, p1}, Lcom/digikala/dms/model/design/NonRealmReturnedProduct;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/NonRealmReturnedProduct$1;->createFromParcel(Landroid/os/Parcel;)Lcom/digikala/dms/model/design/NonRealmReturnedProduct;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/digikala/dms/model/design/NonRealmReturnedProduct;
    .registers 3
    .param p1, "size"    # I

    .line 86
    new-array v0, p1, [Lcom/digikala/dms/model/design/NonRealmReturnedProduct;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/NonRealmReturnedProduct$1;->newArray(I)[Lcom/digikala/dms/model/design/NonRealmReturnedProduct;

    move-result-object p1

    return-object p1
.end method
