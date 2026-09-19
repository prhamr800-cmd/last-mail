###### Class com.github.jorgecastilloprz.progressarc.ProgressArcView (com.github.jorgecastilloprz.progressarc.ProgressArcView)
.class public final Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;
.super Landroid/widget/ProgressBar;
.source "ProgressArcView.java"


# instance fields
.field private arcColor:I

.field private arcWidth:I

.field private internalListener:Lcom/github/jorgecastilloprz/progressarc/ArcListener;

.field private roundedStroke:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arcColor"    # I
    .param p3, "arcWidth"    # I
    .param p4, "roundedStroke"    # Z

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 44
    iput p2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->arcColor:I

    .line 45
    iput p3, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->arcWidth:I

    .line 46
    iput-boolean p4, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->roundedStroke:Z

    .line 47
    invoke-virtual {p0, p2, p3, p4}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->init(IIZ)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    .line 35
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V
    .registers 1
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    .line 35
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setupInitialAlpha()V

    return-void
.end method

.method private getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    check-cast v1, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    return-object v1
.end method

.method private setupInitialAlpha()V
    .registers 2

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setAlpha(F)V

    .line 58
    return-void
.end method


# virtual methods
.method public getScaleDownAnimator()Landroid/animation/AnimatorSet;
    .registers 9

    .line 101
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->arcWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 103
    .local v0, "scalePercent":F
    const-string v1, "scaleX"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 104
    .local v1, "arcScaleX":Landroid/animation/ValueAnimator;
    const-string v3, "scaleY"

    new-array v5, v2, [F

    aput v0, v5, v4

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 106
    .local v3, "arcScaleY":Landroid/animation/ValueAnimator;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 107
    .local v5, "set":Landroid/animation/AnimatorSet;
    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v4

    aput-object v3, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 109
    new-instance v2, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$2;

    invoke-direct {v2, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$2;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    return-object v5
.end method

.method public init(IIZ)V
    .registers 6
    .param p1, "arcColor"    # I
    .param p2, "arcWidth"    # I
    .param p3, "roundedStroke"    # Z

    .line 51
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setupInitialAlpha()V

    .line 52
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    int-to-float v1, p2

    invoke-direct {v0, v1, p1, p3}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;-><init>(FIZ)V

    .line 53
    .local v0, "arcDrawable":Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;
    invoke-virtual {p0, v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method public requestCompleteAnimation()V
    .registers 3

    .line 92
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->internalListener:Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    invoke-virtual {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->requestCompleteAnimation(Lcom/github/jorgecastilloprz/progressarc/ArcListener;)V

    .line 93
    return-void
.end method

.method public reset()V
    .registers 8

    .line 80
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->reset()V

    .line 82
    const-string v0, "scaleX"

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 83
    .local v0, "arcScaleX":Landroid/animation/ValueAnimator;
    const-string v2, "scaleY"

    new-array v5, v1, [F

    aput v3, v5, v4

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 85
    .local v2, "arcScaleY":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 86
    .local v3, "set":Landroid/animation/AnimatorSet;
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v4

    aput-object v2, v5, v1

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 88
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 89
    return-void
.end method

.method public setInternalListener(Lcom/github/jorgecastilloprz/progressarc/ArcListener;)V
    .registers 2
    .param p1, "internalListener"    # Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    .line 61
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->internalListener:Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    .line 62
    return-void
.end method

.method public show()V
    .registers 4

    .line 65
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;

    invoke-direct {v0, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    return-void
.end method

.method public stop()V
    .registers 4

    .line 74
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->stop()V

    .line 75
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1e

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 76
    .local v0, "fadeOutAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    return-void

    nop

    :array_1e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

###### Class com.github.jorgecastilloprz.progressarc.ProgressArcView.AnonymousClass1 (com.github.jorgecastilloprz.progressarc.ProgressArcView$1)
.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;
.super Ljava/lang/Object;
.source "ProgressArcView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->reset()V

    .line 69
    return-void
.end method

###### Class com.github.jorgecastilloprz.progressarc.ProgressArcView.AnonymousClass2 (com.github.jorgecastilloprz.progressarc.ProgressArcView$2)
.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$2;
.super Ljava/lang/Object;
.source "ProgressArcView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getScaleDownAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$2;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 118
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 114
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$2;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->access$100(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V

    .line 115
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 121
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 111
    return-void
.end method
