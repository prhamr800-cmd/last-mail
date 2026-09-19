###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout (com.github.florent37.expansionpanel.HorizontalExpansionLayout)
.class public Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;,
        Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/Animator;

.field private expanded:Z

.field private final indicatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    .line 19
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    .line 19
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->animator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 19
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->animator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;F)V
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;
    .param p1, "x1"    # F

    .line 19
    invoke-direct {p0, p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->setWidth(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V
    .registers 1
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    .line 19
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingListeners()V

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

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 44
    if-eqz p2, :cond_1b

    .line 45
    sget-object v0, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1b

    .line 47
    sget v1, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionLayout_expansion_expanded:I

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1b
    return-void
.end method

.method private onViewAdded()V
    .registers 4

    .line 124
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_17

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 156
    .end local v0    # "childView":Landroid/view/View;
    :cond_17
    return-void
.end method

.method private pingIndicatorListeners(Z)V
    .registers 4
    .param p1, "willBeExpanded"    # Z

    .line 191
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;

    .line 192
    .local v1, "indicatorListener":Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;
    if-eqz v1, :cond_17

    .line 193
    invoke-interface {v1, p0, p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;->onStartedExpand(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Z)V

    .line 195
    .end local v1    # "indicatorListener":Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;
    :cond_17
    goto :goto_6

    .line 196
    :cond_18
    return-void
.end method

.method private pingListeners()V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;

    .line 200
    .local v1, "listener":Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;
    if-eqz v1, :cond_19

    .line 201
    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    invoke-interface {v1, p0, v2}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;->onExpansionChanged(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Z)V

    .line 203
    .end local v1    # "listener":Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;
    :cond_19
    goto :goto_6

    .line 204
    :cond_1a
    return-void
.end method

.method private setWidth(F)V
    .registers 4
    .param p1, "width"    # F

    .line 239
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 240
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_c

    .line 241
    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    :cond_c
    return-void
.end method


# virtual methods
.method public addIndicatorListener(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;

    .line 65
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 66
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_f
    return-void
.end method

.method public addListener(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;

    .line 54
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 55
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_f
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 89
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V

    .line 91
    return-void

    .line 86
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

    .line 95
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;I)V

    .line 100
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V

    .line 101
    return-void

    .line 96
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

    .line 115
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V

    .line 121
    return-void

    .line 116
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

    .line 105
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V

    .line 111
    return-void

    .line 106
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExpansionLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collapse(Z)V
    .registers 7
    .param p1, "animated"    # Z

    .line 159
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    if-nez v0, :cond_b

    goto :goto_48

    .line 163
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingIndicatorListeners(Z)V

    .line 164
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    .line 165
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    aput v4, v2, v0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 166
    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$2;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$2;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    new-instance v2, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$3;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$3;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 180
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 181
    iput-object v1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->animator:Landroid/animation/Animator;

    .line 182
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 183
    .end local v1    # "valueAnimator":Landroid/animation/ValueAnimator;
    goto :goto_47

    .line 184
    :cond_3f
    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->setWidth(F)V

    .line 185
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 186
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingListeners()V

    .line 188
    :goto_47
    return-void

    .line 160
    :cond_48
    :goto_48
    return-void
.end method

.method public expand(Z)V
    .registers 6
    .param p1, "animated"    # Z

    .line 207
    invoke-virtual {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    if-eqz v0, :cond_b

    goto :goto_51

    .line 211
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingIndicatorListeners(Z)V

    .line 212
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    .line 213
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 214
    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$4;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$4;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    new-instance v2, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 229
    iput-object v1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->animator:Landroid/animation/Animator;

    .line 230
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 231
    .end local v1    # "valueAnimator":Landroid/animation/ValueAnimator;
    goto :goto_50

    .line 232
    :cond_3f
    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->setWidth(F)V

    .line 233
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 234
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingListeners()V

    .line 236
    :goto_50
    return-void

    .line 208
    :cond_51
    :goto_51
    return-void
.end method

.method public isExpanded()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 77
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 78
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    if-nez v0, :cond_b

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->setWidth(F)V

    .line 81
    :cond_b
    return-void
.end method

.method public removeIndicatorListener(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;

    .line 70
    if-eqz p1, :cond_7

    .line 71
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_7
    return-void
.end method

.method public removeListener(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;

    .line 59
    if-eqz p1, :cond_7

    .line 60
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    :cond_7
    return-void
.end method

.method public toggle(Z)V
    .registers 3
    .param p1, "animated"    # Z

    .line 247
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    if-eqz v0, :cond_8

    .line 248
    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->collapse(Z)V

    goto :goto_b

    .line 250
    :cond_8
    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expand(Z)V

    .line 252
    :goto_b
    return-void
.end method

###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout.AnonymousClass1 (com.github.florent37.expansionpanel.HorizontalExpansionLayout$1)
.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;
.super Ljava/lang/Object;
.source "HorizontalExpansionLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

.field final synthetic val$childView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    .line 126
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    iput-object p2, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->val$childView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->val$childView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 132
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$000(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 133
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-virtual {v0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expand(Z)V

    .line 136
    :cond_17
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->val$childView:Landroid/view/View;

    new-instance v2, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 152
    return v1
.end method

###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout.AnonymousClass1.ViewOnLayoutChangeListenerC00161 (com.github.florent37.expansionpanel.HorizontalExpansionLayout$1$1)
.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;
.super Ljava/lang/Object;
.source "HorizontalExpansionLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;

    .line 136
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;

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

    .line 139
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$000(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$100(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_22

    .line 140
    sub-int v0, p4, p2

    .line 141
    .local v0, "width":I
    iget-object v1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;

    iget-object v1, v1, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    new-instance v2, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;I)V

    invoke-virtual {v1, v2}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->post(Ljava/lang/Runnable;)Z

    .line 149
    .end local v0    # "width":I
    :cond_22
    return-void
.end method

###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout.AnonymousClass1.ViewOnLayoutChangeListenerC00161.RunnableC00171 (com.github.florent37.expansionpanel.HorizontalExpansionLayout$1$1$1)
.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;
.super Ljava/lang/Object;
.source "HorizontalExpansionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;I)V
    .registers 3
    .param p1, "this$2"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;

    .line 141
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;->this$2:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;

    iput p2, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;->this$2:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    iget v1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;->val$width:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$200(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;F)V

    .line 146
    return-void
.end method

###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout.AnonymousClass2 (com.github.florent37.expansionpanel.HorizontalExpansionLayout$2)
.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$2;
.super Ljava/lang/Object;
.source "HorizontalExpansionLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->collapse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    .line 166
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$2;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 169
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$2;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$200(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;F)V

    .line 170
    return-void
.end method

###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout.AnonymousClass3 (com.github.florent37.expansionpanel.HorizontalExpansionLayout$3)
.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->collapse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    .line 172
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$3;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 175
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 176
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$3;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$102(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 177
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$3;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$300(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    .line 178
    return-void
.end method

###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout.AnonymousClass4 (com.github.florent37.expansionpanel.HorizontalExpansionLayout$4)
.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$4;
.super Ljava/lang/Object;
.source "HorizontalExpansionLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    .line 214
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$4;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 217
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$4;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$200(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;F)V

    .line 218
    return-void
.end method

###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout.AnonymousClass5 (com.github.florent37.expansionpanel.HorizontalExpansionLayout$5)
.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    .line 220
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 223
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 224
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$102(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 225
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$300(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    .line 226
    return-void
.end method

###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout.IndicatorListener (com.github.florent37.expansionpanel.HorizontalExpansionLayout$IndicatorListener)
.class public interface abstract Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;
.super Ljava/lang/Object;
.source "HorizontalExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IndicatorListener"
.end annotation


# virtual methods
.method public abstract onStartedExpand(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Z)V
.end method

###### Class com.github.florent37.expansionpanel.HorizontalExpansionLayout.Listener (com.github.florent37.expansionpanel.HorizontalExpansionLayout$Listener)
.class public interface abstract Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;
.super Ljava/lang/Object;
.source "HorizontalExpansionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onExpansionChanged(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Z)V
.end method
