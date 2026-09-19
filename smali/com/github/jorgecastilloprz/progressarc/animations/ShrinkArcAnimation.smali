###### Class com.github.jorgecastilloprz.progressarc.animations.ShrinkArcAnimation (com.github.jorgecastilloprz.progressarc.animations.ShrinkArcAnimation)
.class public Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;
.super Ljava/lang/Object;
.source "ShrinkArcAnimation.java"

# interfaces
.implements Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;


# instance fields
.field private shrinkAnim:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .registers 6
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;->shrinkAnim:Landroid/animation/ValueAnimator;

    .line 34
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;->shrinkAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;->shrinkAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;->shrinkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;->shrinkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 38
    return-void

    nop

    :array_2c
    .array-data 4
        0x43960000    # 300.0f
        0x41a00000    # 20.0f
    .end array-data
.end method


# virtual methods
.method public getAnimator()Landroid/animation/ValueAnimator;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;->shrinkAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method
