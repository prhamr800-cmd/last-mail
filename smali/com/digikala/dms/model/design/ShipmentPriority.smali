###### Class com.digikala.dms.model.design.ShipmentPriority (com.digikala.dms.model.design.ShipmentPriority)
.class public Lcom/digikala/dms/model/design/ShipmentPriority;
.super Ljava/lang/Object;
.source "ShipmentPriority.java"


# instance fields
.field public PackId:Ljava/lang/String;

.field public Priority:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/model/design/ShipmentPriority;->Priority:Ljava/util/ArrayList;

    return-void
.end method
