###### Class com.afollestad.materialdialogs.internal.MDButton (com.afollestad.materialdialogs.internal.MDButton)
.class public Lcom/afollestad/materialdialogs/internal/MDButton;
.super Landroid/widget/TextView;
.source "MDButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private defaultBackground:Landroid/graphics/drawable/Drawable;

.field private stacked:Z

.field private stackedBackground:Landroid/graphics/drawable/Drawable;

.field private stackedEndPadding:I

.field private stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    .line 27
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    nop

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_frame_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedEndPadding:I

    .line 38
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 39
    return-void
.end method


# virtual methods
.method public setAllCapsCompat(Z)V
    .registers 4
    .param p1, "allCaps"    # Z

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    .line 84
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCaps(Z)V

    goto :goto_1d

    .line 86
    :cond_a
    if-eqz p1, :cond_19

    .line 87
    new-instance v0, Lcom/afollestad/materialdialogs/internal/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/internal/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1d

    .line 89
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 92
    :goto_1d
    return-void
.end method

.method public setDefaultSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    if-nez v0, :cond_b

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 80
    :cond_b
    return-void
.end method

.method setStacked(ZZ)V
    .registers 7
    .param p1, "stacked"    # Z
    .param p2, "force"    # Z

    .line 46
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_46

    .line 48
    :cond_6
    const/16 v0, 0x11

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 49
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    goto :goto_15

    .line 48
    :cond_13
    const/16 v1, 0x11

    :goto_15
    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setGravity(I)V

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_29

    .line 52
    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/GravityEnum;->getTextAlignment()I

    move-result v0

    goto :goto_26

    :cond_25
    const/4 v0, 0x4

    :goto_26
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextAlignment(I)V

    .line 55
    :cond_29
    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_30

    :cond_2e
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->defaultBackground:Landroid/graphics/drawable/Drawable;

    :goto_30
    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 56
    if-eqz p1, :cond_44

    .line 57
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedEndPadding:I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedEndPadding:I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/afollestad/materialdialogs/internal/MDButton;->setPadding(IIII)V

    .line 60
    :cond_44
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    .line 62
    :cond_46
    return-void
.end method

.method public setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .registers 2
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;

    .line 65
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 66
    return-void
.end method

.method public setStackedSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stackedBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->stacked:Z

    if-eqz v0, :cond_a

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 73
    :cond_a
    return-void
.end method
