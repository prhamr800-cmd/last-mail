###### Class com.github.jorgecastilloprz.progressarc.animations.RotateArcAnimation (com.github.jorgecastilloprz.progressarc.animations.RotateArcAnimation)
.class final Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;
.super Ljava/lang/Object;
.source "RotateArcAnimation.java"

# interfaces
.implements Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;


# instance fields
.field private rotateAnim:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 5
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 30
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;->rotateAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;->rotateAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;->rotateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;->rotateAnim:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 34
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;->rotateAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 35
    return-void

    :array_32
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public getAnimator()Landroid/animation/ValueAnimator;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;->rotateAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method
