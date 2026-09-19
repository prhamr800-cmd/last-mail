###### Class com.journeyapps.barcodescanner.CompoundBarcodeView (com.journeyapps.barcodescanner.CompoundBarcodeView)
.class public Lcom/journeyapps/barcodescanner/CompoundBarcodeView;
.super Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
.source "CompoundBarcodeView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 11
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method
