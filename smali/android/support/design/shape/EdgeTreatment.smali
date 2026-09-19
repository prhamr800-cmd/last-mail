###### Class android.support.design.shape.EdgeTreatment (android.support.design.shape.EdgeTreatment)
.class public Landroid/support/design/shape/EdgeTreatment;
.super Ljava/lang/Object;
.source "EdgeTreatment.java"


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEdgePath(FFLandroid/support/design/shape/ShapePath;)V
    .registers 5
    .param p1, "length"    # F
    .param p2, "interpolation"    # F
    .param p3, "shapePath"    # Landroid/support/design/shape/ShapePath;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    .line 44
    return-void
.end method
