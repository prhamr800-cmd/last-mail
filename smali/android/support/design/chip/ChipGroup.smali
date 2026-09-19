###### Class android.support.design.chip.ChipGroup (android.support.design.chip.ChipGroup)
.class public Landroid/support/design/chip/ChipGroup;
.super Landroid/support/design/internal/FlowLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Landroid/support/design/chip/ChipGroup$CheckedStateTracker;,
        Landroid/support/design/chip/ChipGroup$LayoutParams;,
        Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checkedId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final checkedStateTracker:Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

.field private chipSpacingHorizontal:I
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private chipSpacingVertical:I
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

.field private protectFromCheckedChange:Z

.field private singleSelection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 106
    sget v0, Landroid/support/design/R$attr;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;-><init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipGroup;->checkedStateTracker:Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    .line 95
    new-instance v0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipGroup;->passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 112
    sget-object v4, Landroid/support/design/R$styleable;->ChipGroup:[I

    sget v6, Landroid/support/design/R$style;->Widget_MaterialComponents_ChipGroup:I

    new-array v7, v1, [I

    .line 113
    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v2 .. v7}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 120
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/design/R$styleable;->ChipGroup_chipSpacing:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 121
    .local v3, "chipSpacing":I
    sget v4, Landroid/support/design/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    .line 122
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 121
    invoke-virtual {p0, v4}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 123
    sget v4, Landroid/support/design/R$styleable;->ChipGroup_chipSpacingVertical:I

    .line 124
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 123
    invoke-virtual {p0, v4}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 125
    sget v4, Landroid/support/design/R$styleable;->ChipGroup_singleLine:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/design/chip/ChipGroup;->setSingleLine(Z)V

    .line 126
    sget v4, Landroid/support/design/R$styleable;->ChipGroup_singleSelection:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipGroup;->setSingleSelection(Z)V

    .line 127
    sget v1, Landroid/support/design/R$styleable;->ChipGroup_checkedChip:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 128
    .local v1, "checkedChip":I
    if-eq v1, v0, :cond_59

    .line 129
    iput v1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    .line 132
    :cond_59
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/support/design/internal/FlowLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 134
    return-void
.end method

.method static synthetic access$300(Landroid/support/design/chip/ChipGroup;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;

    .line 50
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/chip/ChipGroup;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;

    .line 50
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/chip/ChipGroup;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;

    .line 50
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method static synthetic access$600(Landroid/support/design/chip/ChipGroup;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/design/chip/ChipGroup;I)V
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p1, "x1"    # I

    .line 50
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/design/chip/ChipGroup;)Landroid/support/design/chip/ChipGroup$CheckedStateTracker;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;

    .line 50
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->checkedStateTracker:Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    return-object v0
.end method

.method private setCheckedId(I)V
    .registers 3
    .param p1, "checkedId"    # I

    .line 296
    iput p1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    .line 298
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_f

    .line 299
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/support/design/chip/ChipGroup;I)V

    .line 301
    :cond_f
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .registers 5
    .param p1, "viewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "checked"    # Z

    .line 304
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, "checkedView":Landroid/view/View;
    instance-of v1, v0, Landroid/support/design/chip/Chip;

    if-eqz v1, :cond_14

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 307
    move-object v1, v0

    check-cast v1, Landroid/support/design/chip/Chip;

    invoke-virtual {v1, p2}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    .line 308
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 310
    :cond_14
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 175
    instance-of v0, p1, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_23

    .line 176
    move-object v0, p1

    check-cast v0, Landroid/support/design/chip/Chip;

    .line 177
    .local v0, "chip":Landroid/support/design/chip/Chip;
    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 178
    iget v1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    iget-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v1, :cond_1c

    .line 179
    iget v1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 181
    :cond_1c
    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 185
    .end local v0    # "chip":Landroid/support/design/chip/Chip;
    :cond_23
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/internal/FlowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 186
    return-void
.end method

.method public check(I)V
    .registers 5
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 236
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    if-ne p1, v0, :cond_5

    .line 237
    return-void

    .line 240
    :cond_5
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_14

    .line 241
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 244
    :cond_14
    if-eq p1, v1, :cond_1a

    .line 245
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 248
    :cond_1a
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 249
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 153
    invoke-super {p0, p1}, Landroid/support/design/internal/FlowLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, Landroid/support/design/chip/ChipGroup$LayoutParams;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public clearCheck()V
    .registers 5

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 275
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/support/design/chip/Chip;

    if-eqz v3, :cond_19

    .line 277
    move-object v3, v2

    check-cast v3, Landroid/support/design/chip/Chip;

    invoke-virtual {v3, v0}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    .line 274
    .end local v2    # "child":Landroid/view/View;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 280
    .end local v1    # "i":I
    :cond_1c
    iput-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 282
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 283
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 148
    new-instance v0, Landroid/support/design/chip/ChipGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/design/chip/ChipGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 138
    new-instance v0, Landroid/support/design/chip/ChipGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 143
    new-instance v0, Landroid/support/design/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .registers 2
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .line 262
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method public getChipSpacingHorizontal()I
    .registers 2
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .line 326
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .registers 2
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .line 346
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    return v0
.end method

.method public isSingleSelection()Z
    .registers 2

    .line 370
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 164
    invoke-super {p0}, Landroid/support/design/internal/FlowLayout;->onFinishInflate()V

    .line 167
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 168
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 169
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 171
    :cond_13
    return-void
.end method

.method public setChipSpacing(I)V
    .registers 2
    .param p1, "chipSpacing"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 314
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 315
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 316
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .registers 3
    .param p1, "chipSpacingHorizontal"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 331
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    if-eq v0, p1, :cond_c

    .line 332
    iput p1, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 333
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setItemSpacing(I)V

    .line 334
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->requestLayout()V

    .line 336
    :cond_c
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 340
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 341
    return-void
.end method

.method public setChipSpacingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 320
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setChipSpacing(I)V

    .line 321
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .registers 3
    .param p1, "chipSpacingVertical"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 351
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    if-eq v0, p1, :cond_c

    .line 352
    iput p1, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    .line 353
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setLineSpacing(I)V

    .line 354
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->requestLayout()V

    .line 356
    :cond_c
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 360
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 361
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlexWrap(I)V
    .registers 4
    .param p1, "flexWrap"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCheckedChangeListener(Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    .line 292
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup;->onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    .line 293
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 159
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$202(Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 160
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .registers 4
    .param p1, "dividerMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowDividerVertical(I)V
    .registers 4
    .param p1, "dividerMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSingleLine(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 365
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setSingleLine(Z)V

    .line 366
    return-void
.end method

.method public setSingleSelection(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 392
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setSingleSelection(Z)V

    .line 393
    return-void
.end method

.method public setSingleSelection(Z)V
    .registers 3
    .param p1, "singleSelection"    # Z

    .line 379
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eq v0, p1, :cond_9

    .line 380
    iput-boolean p1, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    .line 382
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->clearCheck()V

    .line 384
    :cond_9
    return-void
.end method

###### Class android.support.design.chip.ChipGroup.AnonymousClass1 (android.support.design.chip.ChipGroup$1)
.class synthetic Landroid/support/design/chip/ChipGroup$1;
.super Ljava/lang/Object;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class android.support.design.chip.ChipGroup.CheckedStateTracker (android.support.design.chip.ChipGroup$CheckedStateTracker)
.class Landroid/support/design/chip/ChipGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/chip/ChipGroup;


# direct methods
.method private constructor <init>(Landroid/support/design/chip/ChipGroup;)V
    .registers 2

    .line 395
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p2, "x1"    # Landroid/support/design/chip/ChipGroup$1;

    .line 395
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;-><init>(Landroid/support/design/chip/ChipGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 399
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v0}, Landroid/support/design/chip/ChipGroup;->access$300(Landroid/support/design/chip/ChipGroup;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 400
    return-void

    .line 403
    :cond_9
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 405
    .local v0, "id":I
    const/4 v1, -0x1

    if-eqz p2, :cond_3a

    .line 406
    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$400(Landroid/support/design/chip/ChipGroup;)I

    move-result v2

    if-eq v2, v1, :cond_34

    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1}, Landroid/support/design/chip/ChipGroup;->access$400(Landroid/support/design/chip/ChipGroup;)I

    move-result v1

    if-eq v1, v0, :cond_34

    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1}, Landroid/support/design/chip/ChipGroup;->access$500(Landroid/support/design/chip/ChipGroup;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 407
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$400(Landroid/support/design/chip/ChipGroup;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/chip/ChipGroup;->access$600(Landroid/support/design/chip/ChipGroup;IZ)V

    .line 409
    :cond_34
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1, v0}, Landroid/support/design/chip/ChipGroup;->access$700(Landroid/support/design/chip/ChipGroup;I)V

    goto :goto_47

    .line 411
    :cond_3a
    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$400(Landroid/support/design/chip/ChipGroup;)I

    move-result v2

    if-ne v2, v0, :cond_47

    .line 412
    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2, v1}, Landroid/support/design/chip/ChipGroup;->access$700(Landroid/support/design/chip/ChipGroup;I)V

    .line 415
    :cond_47
    :goto_47
    return-void
.end method

###### Class android.support.design.chip.ChipGroup.LayoutParams (android.support.design.chip.ChipGroup$LayoutParams)
.class public Landroid/support/design/chip/ChipGroup$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 76
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 85
    return-void
.end method

###### Class android.support.design.chip.ChipGroup.OnCheckedChangeListener (android.support.design.chip.ChipGroup$OnCheckedChangeListener)
.class public interface abstract Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;
.super Ljava/lang/Object;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCheckedChangeListener"
.end annotation


# virtual methods
.method public abstract onCheckedChanged(Landroid/support/design/chip/ChipGroup;I)V
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
.end method

###### Class android.support.design.chip.ChipGroup.PassThroughHierarchyChangeListener (android.support.design.chip.ChipGroup$PassThroughHierarchyChangeListener)
.class Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/support/design/chip/ChipGroup;


# direct methods
.method private constructor <init>(Landroid/support/design/chip/ChipGroup;)V
    .registers 2

    .line 423
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p2, "x1"    # Landroid/support/design/chip/ChipGroup$1;

    .line 423
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/support/design/chip/ChipGroup;)V

    return-void
.end method

.method static synthetic access$202(Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 423
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 428
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    if-ne p1, v0, :cond_2d

    instance-of v0, p2, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_2d

    .line 429
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 431
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 432
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1a

    .line 433
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    goto :goto_1e

    .line 435
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 437
    :goto_1e
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 439
    :cond_21
    move-object v1, p2

    check-cast v1, Landroid/support/design/chip/Chip;

    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$800(Landroid/support/design/chip/ChipGroup;)Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 442
    .end local v0    # "id":I
    :cond_2d
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_36

    .line 443
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 445
    :cond_36
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 449
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    if-ne p1, v0, :cond_f

    instance-of v0, p2, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_f

    .line 450
    move-object v0, p2

    check-cast v0, Landroid/support/design/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 453
    :cond_f
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_18

    .line 454
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 456
    :cond_18
    return-void
.end method
