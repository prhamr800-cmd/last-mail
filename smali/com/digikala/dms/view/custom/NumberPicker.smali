###### Class com.digikala.dms.view.custom.NumberPicker (com.digikala.dms.view.custom.NumberPicker)
.class public Lcom/digikala/dms/view/custom/NumberPicker;
.super Landroid/widget/NumberPicker;
.source "NumberPicker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 41
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_2c

    .line 42
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 43
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/digikala/dms/view/custom/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060062

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    :cond_2c
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 24
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->addView(Landroid/view/View;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/custom/NumberPicker;->updateView(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/custom/NumberPicker;->updateView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/NumberPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/custom/NumberPicker;->updateView(Landroid/view/View;)V

    .line 38
    return-void
.end method
