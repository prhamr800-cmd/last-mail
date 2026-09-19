###### Class com.digikala.dms.model.design.ReturnedShipment (com.digikala.dms.model.design.ReturnedShipment)
.class public Lcom/digikala/dms/model/design/ReturnedShipment;
.super Ljava/lang/Object;
.source "ReturnedShipment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private reasonId:Ljava/lang/String;

.field private shipmentId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/digikala/dms/model/design/ReturnedShipment$1;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/ReturnedShipment$1;-><init>()V

    sput-object v0, Lcom/digikala/dms/model/design/ReturnedShipment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/model/design/ReturnedShipment;->shipmentId:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/model/design/ReturnedShipment;->reasonId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getReasonId()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/digikala/dms/model/design/ReturnedShipment;->reasonId:Ljava/lang/String;

    return-object v0
.end method

.method public getShipmentId()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/digikala/dms/model/design/ReturnedShipment;->shipmentId:Ljava/lang/String;

    return-object v0
.end method

.method public setReasonId(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonId"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/digikala/dms/model/design/ReturnedShipment;->reasonId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setShipmentId(Ljava/lang/String;)V
    .registers 2
    .param p1, "shipmentId"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/digikala/dms/model/design/ReturnedShipment;->shipmentId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 45
    iget-object v0, p0, Lcom/digikala/dms/model/design/ReturnedShipment;->shipmentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/model/design/ReturnedShipment;->reasonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method

###### Class com.digikala.dms.model.design.ReturnedShipment.AnonymousClass1 (com.digikala.dms.model.design.ReturnedShipment$1)
.class final Lcom/digikala/dms/model/design/ReturnedShipment$1;
.super Ljava/lang/Object;
.source "ReturnedShipment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/model/design/ReturnedShipment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/digikala/dms/model/design/ReturnedShipment;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    new-instance v0, Lcom/digikala/dms/model/design/ReturnedShipment;

    invoke-direct {v0, p1}, Lcom/digikala/dms/model/design/ReturnedShipment;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/ReturnedShipment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/digikala/dms/model/design/ReturnedShipment;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/digikala/dms/model/design/ReturnedShipment;
    .registers 3
    .param p1, "size"    # I

    .line 56
    new-array v0, p1, [Lcom/digikala/dms/model/design/ReturnedShipment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/ReturnedShipment$1;->newArray(I)[Lcom/digikala/dms/model/design/ReturnedShipment;

    move-result-object p1

    return-object p1
.end method
