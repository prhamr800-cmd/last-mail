###### Class com.digikala.dms.helper.touch.OnStartSyncListener (com.digikala.dms.helper.touch.OnStartSyncListener)
.class public interface abstract Lcom/digikala/dms/helper/touch/OnStartSyncListener;
.super Ljava/lang/Object;
.source "OnStartSyncListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/digikala/dms/helper/touch/OnStartSyncListener;",
        "",
        "finalizeSync",
        "",
        "retrySync",
        "shipment",
        "Lcom/digikala/dms/model/domain/Shipment;",
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
.method public abstract finalizeSync()V
.end method

.method public abstract retrySync(Lcom/digikala/dms/model/domain/Shipment;)V
    .param p1    # Lcom/digikala/dms/model/domain/Shipment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
