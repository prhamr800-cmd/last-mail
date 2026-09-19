###### Class com.github.jorgecastilloprz.completefab.CompleteFABView (com.github.jorgecastilloprz.completefab.CompleteFABView)
.class public Lcom/github/jorgecastilloprz/completefab/CompleteFABView;
.super Landroid/widget/FrameLayout;
.source "CompleteFABView.java"


# instance fields
.field private final RESET_DELAY:I

.field private arcColor:I

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

.field private viewsAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "arcColor"    # I

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->RESET_DELAY:I

    .line 50
    iput-object p2, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iput p3, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->arcColor:I

    .line 52
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    .line 39
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->listener:Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    return-object v0
.end method

.method private animate(Landroid/animation/AnimatorSet;Z)V
    .registers 14
    .param p1, "progressArcAnimator"    # Landroid/animation/AnimatorSet;
    .param p2, "inverse"    # Z

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v4, v3, [F

    if-eqz p2, :cond_e

    const/4 v5, 0x0

    goto :goto_10

    :cond_e
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_10
    aput v5, v4, v0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 97
    .local v1, "completeFabAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    sget v2, Lcom/github/jorgecastilloprz/library/R$id;->completeFabIcon:I

    invoke-virtual {p0, v2}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "icon":Landroid/view/View;
    const-string v4, "scaleX"

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_8e

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 102
    .local v4, "iconScaleAnimX":Landroid/animation/ValueAnimator;
    const-string v6, "scaleY"

    new-array v7, v5, [F

    fill-array-data v7, :array_96

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 104
    .local v6, "iconScaleAnimY":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 105
    .local v7, "iconAnimInterpolator":Landroid/view/animation/Interpolator;
    const-wide/16 v8, 0xfa

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 109
    .local v8, "animatorSet":Landroid/animation/AnimatorSet;
    if-eqz p2, :cond_65

    .line 110
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v0

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_74

    .line 112
    :cond_65
    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v1, v9, v0

    aput-object p1, v9, v3

    aput-object v4, v9, v5

    const/4 v0, 0x3

    aput-object v6, v9, v0

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 116
    :goto_74
    if-eqz p2, :cond_7b

    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getInverseAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    goto :goto_7f

    :cond_7b
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    :goto_7f
    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    if-eqz p2, :cond_89

    .line 118
    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 120
    :cond_89
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 121
    return-void

    nop

    :array_8e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_96
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .registers 2

    .line 124
    new-instance v0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;

    invoke-direct {v0, p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;-><init>(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)V

    return-object v0
.end method

.method private getInverseAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .registers 2

    .line 144
    new-instance v0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;

    invoke-direct {v0, p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;-><init>(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)V

    return-object v0
.end method

.method private init()V
    .registers 3

    .line 60
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/github/jorgecastilloprz/library/R$layout;->complete_fab:I

    invoke-static {v0, v1, p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    return-void
.end method

.method private setIcon()V
    .registers 4

    .line 70
    sget v0, Lcom/github/jorgecastilloprz/library/R$id;->completeFabIcon:I

    invoke-virtual {p0, v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_19

    :cond_f
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/jorgecastilloprz/library/R$drawable;->ic_done:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void
.end method

.method private setupContentSize()V
    .registers 4

    .line 86
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/github/jorgecastilloprz/library/R$dimen;->fab_content_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 87
    .local v0, "contentSize":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 88
    .local v2, "mContentPadding":I
    invoke-virtual {p0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    return-void
.end method

.method private tintCompleteFabWithArcColor()V
    .registers 4

    .line 64
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/github/jorgecastilloprz/library/R$drawable;->oval_complete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->arcColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    sget v1, Lcom/github/jorgecastilloprz/library/R$id;->completeFabRoot:I

    invoke-virtual {p0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method


# virtual methods
.method public animate(Landroid/animation/AnimatorSet;)V
    .registers 3
    .param p1, "progressArcAnimator"    # Landroid/animation/AnimatorSet;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->animate(Landroid/animation/AnimatorSet;Z)V

    .line 93
    return-void
.end method

.method public attachListener(Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    .line 56
    iput-object p1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->listener:Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    .line 57
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 77
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->viewsAdded:Z

    if-nez v0, :cond_13

    .line 78
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->setupContentSize()V

    .line 79
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->tintCompleteFabWithArcColor()V

    .line 80
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->setIcon()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->viewsAdded:Z

    .line 83
    :cond_13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .registers 3

    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->animate(Landroid/animation/AnimatorSet;Z)V

    .line 162
    return-void
.end method

###### Class com.github.jorgecastilloprz.completefab.CompleteFABView.AnonymousClass1 (com.github.jorgecastilloprz.completefab.CompleteFABView$1)
.class Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;
.super Ljava/lang/Object;
.source "CompleteFABView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 136
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 130
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->access$000(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 131
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->access$000(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;->onCompleteFABAnimationEnd()V

    .line 133
    :cond_11
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 139
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 126
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->setVisibility(I)V

    .line 127
    return-void
.end method

###### Class com.github.jorgecastilloprz.completefab.CompleteFABView.AnonymousClass2 (com.github.jorgecastilloprz.completefab.CompleteFABView$2)
.class Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;
.super Ljava/lang/Object;
.source "CompleteFABView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getInverseAnimatorListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 153
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 149
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 156
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 146
    return-void
.end method
