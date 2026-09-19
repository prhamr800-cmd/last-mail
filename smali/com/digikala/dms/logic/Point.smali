###### Class com.digikala.dms.logic.Point (com.digikala.dms.logic.Point)
.class public Lcom/digikala/dms/logic/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/digikala/dms/logic/Point;->x:D

    .line 14
    iput-wide p3, p0, Lcom/digikala/dms/logic/Point;->y:D

    .line 15
    return-void
.end method
