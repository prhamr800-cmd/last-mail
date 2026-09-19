###### Class com.github.florent37.expansionpanel.ExpansionLayout (com.github.florent37.expansionpanel.ExpansionLayout)
.class public Lcom/github/florent37/expansionpanel/ExpansionLayout;
.super Landroid/support/v4/widget/NestedScrollView;
.source "ExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;,
        Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/Animator;

.field private expanded:Z

.field private final indicatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 21
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 21
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->animator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/github/florent37/expansionpanel/ExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 21
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->animator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/github/florent37/expansionpanel/ExpansionLayout;F)V
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;
    .param p1, "x1"    # F

    .line 21
    invoke-direct {p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->setHeight(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V
    .registers 1
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 21
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingListeners()V

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

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 46
    if-eqz p2, :cond_1b

    .line 47
    sget-object v0, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1b

    .line 49
    sget v1, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionLayout_expansion_expanded:I

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1b
    return-void
.end method

.method private onViewAdded()V
    .registers 4

    .line 126
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_17

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 158
    .end local v0    # "childView":Landroid/view/View;
    :cond_17
    return-void
.end method

.method private pingIndicatorListeners(Z)V
    .registers 4
    .param p1, "willBeExpanded"    # Z

    .line 192
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    .line 193
    .local v1, "indicatorListener":Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;
    if-eqz v1, :cond_17

    .line 194
    invoke-interface {v1, p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;->onStartedExpand(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V

    .line 196
    .end local v1    # "indicatorListener":Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;
    :cond_17
    goto :goto_6

    .line 197
    :cond_18
    return-void
.end method

.method private pingListeners()V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;

    .line 201
    .local v1, "listener":Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;
    if-eqz v1, :cond_19

    .line 202
    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    invoke-interface {v1, p0, v2}, Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;->onExpansionChanged(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V

    .line 204
    .end local v1    # "listener":Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;
    :cond_19
    goto :goto_6

    .line 205
    :cond_1a
    return-void
.end method

.method private setHeight(F)V
    .registers 4
    .param p1, "height"    # F

    .line 240
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 241
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_c

    .line 242
    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :cond_c
    return-void
.end method


# virtual methods
.method public addIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    .line 67
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 68
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_f
    return-void
.end method

.method public addListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;

    .line 56
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 57
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_f
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->onViewAdded()V

    .line 93
    return-void

    .line 88
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExpansionLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 97
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 101
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->addView(Landroid/view/View;I)V

    .line 102
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->onViewAdded()V

    .line 103
    return-void

    .line 98
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExpansionLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 117
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->onViewAdded()V

    .line 123
    return-void

    .line 118
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExpansionLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 107
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 111
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->onViewAdded()V

    .line 113
    return-void

    .line 108
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExpansionLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collapse(Z)V
    .registers 7
    .param p1, "animated"    # Z

    .line 161
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-nez v0, :cond_b

    goto :goto_48

    .line 164
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingIndicatorListeners(Z)V

    .line 165
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    .line 166
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    aput v4, v2, v0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 167
    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/github/florent37/expansionpanel/ExpansionLayout$2;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$2;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    new-instance v2, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 182
    iput-object v1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->animator:Landroid/animation/Animator;

    .line 183
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 184
    .end local v1    # "valueAnimator":Landroid/animation/ValueAnimator;
    goto :goto_47

    .line 185
    :cond_3f
    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->setHeight(F)V

    .line 186
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 187
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingListeners()V

    .line 189
    :goto_47
    return-void

    .line 162
    :cond_48
    :goto_48
    return-void
.end method

.method public expand(Z)V
    .registers 6
    .param p1, "animated"    # Z

    .line 208
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-eqz v0, :cond_b

    goto :goto_51

    .line 212
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingIndicatorListeners(Z)V

    .line 213
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    .line 214
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 215
    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/github/florent37/expansionpanel/ExpansionLayout$4;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$4;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    new-instance v2, Lcom/github/florent37/expansionpanel/ExpansionLayout$5;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$5;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 230
    iput-object v1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->animator:Landroid/animation/Animator;

    .line 231
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 232
    .end local v1    # "valueAnimator":Landroid/animation/ValueAnimator;
    goto :goto_50

    .line 233
    :cond_3f
    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->setHeight(F)V

    .line 234
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 235
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingListeners()V

    .line 237
    :goto_50
    return-void

    .line 209
    :cond_51
    :goto_51
    return-void
.end method

.method public isExpanded()Z
    .registers 2

    .line 280
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 79
    invoke-super {p0}, Landroid/support/v4/widget/NestedScrollView;->onAttachedToWindow()V

    .line 80
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-nez v0, :cond_b

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->setHeight(F)V

    .line 83
    :cond_b
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 265
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_22

    .line 266
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 267
    .local v0, "savedInstance":Landroid/os/Bundle;
    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 268
    .local v1, "expanded":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 269
    invoke-virtual {p0, v2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expand(Z)V

    goto :goto_17

    .line 271
    :cond_14
    invoke-virtual {p0, v2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(Z)V

    .line 273
    :goto_17
    const-string/jumbo v2, "super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 274
    .end local v0    # "savedInstance":Landroid/os/Bundle;
    .end local v1    # "expanded":Z
    goto :goto_25

    .line 275
    :cond_22
    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 277
    :goto_25
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, "savedInstance":Landroid/os/Bundle;
    const-string/jumbo v1, "super"

    invoke-super {p0}, Landroid/support/v4/widget/NestedScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 259
    const-string v1, "expanded"

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    return-object v0
.end method

.method public removeIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    .line 72
    if-eqz p1, :cond_7

    .line 73
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    :cond_7
    return-void
.end method

.method public removeListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;

    .line 61
    if-eqz p1, :cond_7

    .line 62
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_7
    return-void
.end method

.method public toggle(Z)V
    .registers 3
    .param p1, "animated"    # Z

    .line 248
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-eqz v0, :cond_8

    .line 249
    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(Z)V

    goto :goto_b

    .line 251
    :cond_8
    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expand(Z)V

    .line 253
    :goto_b
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionLayout.AnonymousClass1 (com.github.florent37.expansionpanel.ExpansionLayout$1)
.class Lcom/github/florent37/expansionpanel/ExpansionLayout$1;
.super Ljava/lang/Object;
.source "ExpansionLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout;->onViewAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

.field final synthetic val$childView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 128
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    iput-object p2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->val$childView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->val$childView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 134
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$000(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 135
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expand(Z)V

    .line 138
    :cond_17
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->val$childView:Landroid/view/View;

    new-instance v2, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 154
    return v1
.end method

###### Class com.github.florent37.expansionpanel.ExpansionLayout.AnonymousClass1.ViewOnLayoutChangeListenerC00141 (com.github.florent37.expansionpanel.ExpansionLayout$1$1)
.class Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;
.super Ljava/lang/Object;
.source "ExpansionLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    .line 138
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 141
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$000(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$100(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_22

    .line 142
    sub-int v0, p5, p3

    .line 143
    .local v0, "height":I
    iget-object v1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    iget-object v1, v1, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    new-instance v2, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1$1;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;I)V

    invoke-virtual {v1, v2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->post(Ljava/lang/Runnable;)Z

    .line 151
    .end local v0    # "height":I
    :cond_22
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionLayout.AnonymousClass1.ViewOnLayoutChangeListenerC00141.RunnableC00151 (com.github.florent37.expansionpanel.ExpansionLayout$1$1$1)
.class Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1$1;
.super Ljava/lang/Object;
.source "ExpansionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;I)V
    .registers 3
    .param p1, "this$2"    # Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;

    .line 143
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1$1;->this$2:Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;

    iput p2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1$1;->this$2:Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    iget v1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1$1;->val$height:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$200(Lcom/github/florent37/expansionpanel/ExpansionLayout;F)V

    .line 148
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionLayout.AnonymousClass2 (com.github.florent37.expansionpanel.ExpansionLayout$2)
.class Lcom/github/florent37/expansionpanel/ExpansionLayout$2;
.super Ljava/lang/Object;
.source "ExpansionLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 167
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$2;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 170
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$2;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$200(Lcom/github/florent37/expansionpanel/ExpansionLayout;F)V

    .line 171
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionLayout.AnonymousClass3 (com.github.florent37.expansionpanel.ExpansionLayout$3)
.class Lcom/github/florent37/expansionpanel/ExpansionLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 173
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 176
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 177
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$102(Lcom/github/florent37/expansionpanel/ExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 178
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$300(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    .line 179
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionLayout.AnonymousClass4 (com.github.florent37.expansionpanel.ExpansionLayout$4)
.class Lcom/github/florent37/expansionpanel/ExpansionLayout$4;
.super Ljava/lang/Object;
.source "ExpansionLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout;->expand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 215
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$4;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 218
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$4;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$200(Lcom/github/florent37/expansionpanel/ExpansionLayout;F)V

    .line 219
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionLayout.AnonymousClass5 (com.github.florent37.expansionpanel.ExpansionLayout$5)
.class Lcom/github/florent37/expansionpanel/ExpansionLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout;->expand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 221
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$5;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 224
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 225
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$5;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$102(Lcom/github/florent37/expansionpanel/ExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 226
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$5;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$300(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    .line 227
    return-void
.end method

###### Class com.github.florent37.expansionpanel.ExpansionLayout.IndicatorListener (com.github.florent37.expansionpanel.ExpansionLayout$IndicatorListener)
.class public interface abstract Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;
.super Ljava/lang/Object;
.source "ExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IndicatorListener"
.end annotation


# virtual methods
.method public abstract onStartedExpand(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V
.end method

###### Class com.github.florent37.expansionpanel.ExpansionLayout.Listener (com.github.florent37.expansionpanel.ExpansionLayout$Listener)
.class public interface abstract Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;
.super Ljava/lang/Object;
.source "ExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onExpansionChanged(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V
.end method
