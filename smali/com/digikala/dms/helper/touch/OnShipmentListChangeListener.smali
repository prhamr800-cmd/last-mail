###### Class com.digikala.dms.helper.touch.OnShipmentListChangeListener (com.digikala.dms.helper.touch.OnShipmentListChangeListener)
.class public interface abstract Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;
.super Ljava/lang/Object;
.source "OnShipmentListChangeListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;",
        "",
        "onShipmentItemSwiped",
        "",
        "mShipment",
        "Lcom/digikala/dms/model/domain/Shipment;",
        "onShipmentListChanged",
        "mShipments",
        "Ljava/util/ArrayList;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# virtual methods
.method public abstract onShipmentItemSwiped(Lcom/digikala/dms/model/domain/Shipment;)V
    .param p1    # Lcom/digikala/dms/model/domain/Shipment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onShipmentListChanged(Ljava/util/ArrayList;)V
    .param p1    # Ljava/util/ArrayList;
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
.end method
