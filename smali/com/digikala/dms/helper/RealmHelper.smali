###### Class com.digikala.dms.helper.RealmHelper (com.digikala.dms.helper.RealmHelper)
.class public Lcom/digikala/dms/helper/RealmHelper;
.super Ljava/lang/Object;
.source "RealmHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteRealmTables()V
    .registers 2

    .line 25
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 27
    .local v0, "realm":Lio/realm/Realm;
    new-instance v1, Lcom/digikala/dms/helper/RealmHelper$1;

    invoke-direct {v1}, Lcom/digikala/dms/helper/RealmHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 45
    return-void
.end method

###### Class com.digikala.dms.helper.RealmHelper.AnonymousClass1 (com.digikala.dms.helper.RealmHelper$1)
.class final Lcom/digikala/dms/helper/RealmHelper$1;
.super Ljava/lang/Object;
.source "RealmHelper.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/RealmHelper;->deleteRealmTables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 3
    .param p1, "realm"    # Lio/realm/Realm;

    .line 30
    const-class v0, Lcom/digikala/dms/model/domain/Batch;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 31
    const-class v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 32
    const-class v0, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 33
    const-class v0, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 34
    const-class v0, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 35
    const-class v0, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 36
    const-class v0, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 37
    const-class v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 38
    const-class v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 39
    const-class v0, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 40
    const-class v0, Lcom/digikala/dms/model/domain/ServerNotification;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 41
    const-class v0, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    .line 42
    return-void
.end method
