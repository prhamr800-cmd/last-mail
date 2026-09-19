###### Class com.github.florent37.expansionpanel.ExpansionHeader (com.github.florent37.expansionpanel.ExpansionHeader)
.class public Lcom/github/florent37/expansionpanel/ExpansionHeader;
.super Landroid/widget/FrameLayout;
.source "ExpansionHeader.java"


# instance fields
.field expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field expansionLayoutId:I

.field private expansionLayoutInitialised:Z

.field headerIndicator:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field headerIndicatorId:I

.field private headerRotationCollapsed:I

.field private headerRotationExpanded:I

.field indicatorAnimator:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field toggleOnClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    .line 25
    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    .line 33
    const/16 v1, 0x10e

    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    .line 34
    const/16 v1, 0x5a

    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    .line 35
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    .line 25
    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    .line 33
    const/16 v1, 0x10e

    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    .line 34
    const/16 v1, 0x5a

    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    .line 35
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    .line 25
    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    .line 33
    const/16 v1, 0x10e

    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    .line 34
    const/16 v1, 0x5a

    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    .line 35
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    if-eqz p2, :cond_44

    .line 54
    sget-object v0, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_44

    .line 56
    sget v1, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_headerIndicatorRotationExpanded:I

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderRotationExpanded(I)V

    .line 57
    sget v1, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_headerIndicatorRotationCollapsed:I

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderRotationCollapsed(I)V

    .line 58
    sget v1, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_headerIndicator:I

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderIndicatorId(I)V

    .line 59
    sget v1, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_layout:I

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setExpansionLayoutId(I)V

    .line 60
    sget v1, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_toggleOnClick:I

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setToggleOnClick(Z)V

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_44
    return-void
.end method

.method private setup()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    if-nez v0, :cond_26

    .line 131
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    new-instance v1, Lcom/github/florent37/expansionpanel/ExpansionHeader$1;

    invoke-direct {v1, p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader$1;-><init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V

    invoke-virtual {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->addIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V

    .line 138
    new-instance v0, Lcom/github/florent37/expansionpanel/ExpansionHeader$2;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader$2;-><init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->isExpanded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->initialiseView(Z)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    .line 150
    :cond_26
    return-void
.end method


# virtual methods
.method public addListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;

    .line 190
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {v0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->addListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V

    .line 193
    :cond_9
    return-void
.end method

.method public getHeaderIndicator()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    return-object v0
.end method

.method protected initialiseView(Z)V
    .registers 4
    .param p1, "isExpanded"    # Z

    .line 154
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 155
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    if-eqz p1, :cond_c

    iget v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    :goto_a
    int-to-float v1, v1

    goto :goto_f

    :cond_c
    iget v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    goto :goto_a

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 157
    :cond_12
    return-void
.end method

.method public isExpanded()Z
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isToggleOnClick()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 122
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 124
    iget v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderIndicatorId(I)V

    .line 125
    iget v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setExpansionLayoutId(I)V

    .line 126
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setup()V

    .line 127
    return-void
.end method

.method protected onExpansionModifyView(Z)V
    .registers 7
    .param p1, "willExpand"    # Z

    .line 161
    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setSelected(Z)V

    .line 162
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 163
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_10

    .line 164
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 166
    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_26

    .line 167
    iget-object v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v1, v1, [F

    iget v4, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    int-to-float v4, v4

    aput v4, v1, v0

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    goto :goto_37

    .line 169
    :cond_26
    iget-object v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v1, v1, [F

    iget v4, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    int-to-float v4, v4

    aput v4, v1, v0

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    .line 172
    :goto_37
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/github/florent37/expansionpanel/ExpansionHeader$3;

    invoke-direct {v1, p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader$3;-><init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_4a

    .line 180
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 183
    :cond_4a
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 218
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_41

    .line 219
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 221
    .local v0, "savedInstance":Landroid/os/Bundle;
    const-string v1, "headerIndicatorId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    .line 222
    const-string v1, "expansionLayoutId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    .line 223
    const-string/jumbo v1, "toggleOnClick"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setToggleOnClick(Z)V

    .line 224
    const-string v1, "headerRotationExpanded"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderRotationExpanded(I)V

    .line 225
    const-string v1, "headerRotationCollapsed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderRotationCollapsed(I)V

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    .line 230
    const-string/jumbo v1, "super"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 231
    .end local v0    # "savedInstance":Landroid/os/Bundle;
    goto :goto_44

    .line 232
    :cond_41
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    :goto_44
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, "savedInstance":Landroid/os/Bundle;
    const-string/jumbo v1, "super"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    const-string v1, "headerIndicatorId"

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v1, "expansionLayoutId"

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string/jumbo v1, "toggleOnClick"

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    const-string v1, "headerRotationExpanded"

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v1, "headerRotationCollapsed"

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    return-object v0
.end method

.method public removeListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;

    .line 196
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {v0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->removeListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V

    .line 199
    :cond_9
    return-void
.end method

.method public setExpansionHeaderIndicator(Landroid/view/View;)V
    .registers 4
    .param p1, "headerIndicator"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    .line 94
    if-eqz p1, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    .line 95
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 98
    :cond_f
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setup()V

    .line 99
    return-void
.end method

.method public setExpansionLayout(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V
    .registers 2
    .param p1, "expansionLayout"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 103
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setup()V

    .line 104
    return-void
.end method

.method public setExpansionLayoutId(I)V
    .registers 5
    .param p1, "expansionLayoutId"    # I

    .line 107
    iput p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    .line 109
    if-eqz p1, :cond_1d

    .line 110
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 111
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1d

    .line 112
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v2, :cond_1d

    .line 114
    move-object v2, v1

    check-cast v2, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {p0, v2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setExpansionLayout(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    .line 118
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "view":Landroid/view/View;
    :cond_1d
    return-void
.end method

.method public setHeaderIndicatorId(I)V
    .registers 3
    .param p1, "headerIndicatorId"    # I

    .line 83
    iput p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    .line 84
    if-eqz p1, :cond_f

    .line 85
    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setExpansionHeaderIndicator(Landroid/view/View;)V

    .line 88
    :cond_f
    return-void
.end method

.method public setHeaderRotationCollapsed(I)V
    .registers 2
    .param p1, "headerRotationCollapsed"    # I

    .line 71
    iput p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    .line 72
    return-void
.end method

.method public setHeaderRotationExpanded(I)V
    .registers 2
    .param p1, "headerRotationExpanded"    # I

    .line 67
    iput p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    .line 68
    return-void
.end method

.method public setToggleOnClick(Z)V
    .registers 2
    .param p1, "toggleOnClick"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    .line 80
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionHeader.AnonymousClass1 (com.github.florent37.expansionpanel.ExpansionHeader$1)
.class Lcom/github/florent37/expansionpanel/ExpansionHeader$1;
.super Ljava/lang/Object;
.source "ExpansionHeader.java"

# interfaces
.implements Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionHeader;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/ExpansionHeader;

    .line 131
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedExpand(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V
    .registers 4
    .param p1, "expansionLayout"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;
    .param p2, "willExpand"    # Z

    .line 134
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    invoke-virtual {v0, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->onExpansionModifyView(Z)V

    .line 135
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionHeader.AnonymousClass2 (com.github.florent37.expansionpanel.ExpansionHeader$2)
.class Lcom/github/florent37/expansionpanel/ExpansionHeader$2;
.super Ljava/lang/Object;
.source "ExpansionHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionHeader;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/ExpansionHeader;

    .line 138
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$2;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$2;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    iget-boolean v0, v0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    if-eqz v0, :cond_e

    .line 142
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$2;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->toggle(Z)V

    .line 144
    :cond_e
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionHeader.AnonymousClass3 (com.github.florent37.expansionpanel.ExpansionHeader$3)
.class Lcom/github/florent37/expansionpanel/ExpansionHeader$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpansionHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionHeader;->onExpansionModifyView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/ExpansionHeader;

    .line 172
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 175
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    .line 176
    return-void
.end method
