###### Class com.github.jorgecastilloprz.progressarc.ProgressArcDrawable (com.github.jorgecastilloprz.progressarc.ProgressArcDrawable)
.class final Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private animationFactory:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;

.field private animationPlaying:Z

.field private final arcBounds:Landroid/graphics/RectF;

.field private arcColor:I

.field private completeAnim:Landroid/animation/ValueAnimator;

.field private completeAnimOnNextCycle:Z

.field private currentRotationAngle:F

.field private currentRotationAngleOffset:F

.field private currentSweepAngle:F

.field private growAnim:Landroid/animation/ValueAnimator;

.field private growing:Z

.field private internalListener:Lcom/github/jorgecastilloprz/progressarc/ArcListener;

.field private maxSweepAngle:I

.field private minSweepAngle:I

.field private paint:Landroid/graphics/Paint;

.field private rotateAnim:Landroid/animation/ValueAnimator;

.field private shrinkAnim:Landroid/animation/ValueAnimator;

.field private strokeWidth:F


# direct methods
.method constructor <init>(FIZ)V
    .registers 5
    .param p1, "strokeWidth"    # F
    .param p2, "arcColor"    # I
    .param p3, "roundedStroke"    # Z

    .line 66
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->arcBounds:Landroid/graphics/RectF;

    .line 67
    iput p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->strokeWidth:F

    .line 68
    iput p2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->arcColor:I

    .line 69
    invoke-direct {p0, p3}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->initPaint(Z)V

    .line 70
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupAnimations()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    iget v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->minSweepAngle:I

    return v0
.end method

.method static synthetic access$100(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    iget v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->maxSweepAngle:I

    return v0
.end method

.method static synthetic access$1000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Lcom/github/jorgecastilloprz/progressarc/ArcListener;
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->internalListener:Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->growing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .registers 1
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setShrinking()V

    return-void
.end method

.method static synthetic access$400(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->shrinkAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .registers 1
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setGrowing()V

    return-void
.end method

.method static synthetic access$600(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Z
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->completeAnimOnNextCycle:Z

    return v0
.end method

.method static synthetic access$602(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->completeAnimOnNextCycle:Z

    return p1
.end method

.method static synthetic access$700(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->completeAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->growAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .line 39
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->rotateAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private initPaint(Z)V
    .registers 4
    .param p1, "roundedStroke"    # Z

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->paint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->paint:Landroid/graphics/Paint;

    if-eqz p1, :cond_22

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_24

    :cond_22
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->arcColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    return-void
.end method

.method private resetProperties()V
    .registers 2

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentSweepAngle:F

    .line 227
    iput v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentRotationAngle:F

    .line 228
    iput v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentRotationAngleOffset:F

    .line 229
    return-void
.end method

.method private setGrowing()V
    .registers 3

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->growing:Z

    .line 241
    iget v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentRotationAngleOffset:F

    iget v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->minSweepAngle:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentRotationAngleOffset:F

    .line 242
    return-void
.end method

.method private setShrinking()V
    .registers 3

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->growing:Z

    .line 246
    iget v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentRotationAngleOffset:F

    iget v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->maxSweepAngle:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentRotationAngleOffset:F

    .line 247
    return-void
.end method

.method private setupAnimations()V
    .registers 2

    .line 83
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;

    invoke-direct {v0}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;-><init>()V

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->animationFactory:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;

    .line 84
    const/16 v0, 0x14

    iput v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->minSweepAngle:I

    .line 85
    const/16 v0, 0x12c

    iput v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->maxSweepAngle:I

    .line 87
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupRotateAnimation()V

    .line 88
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupGrowAnimation()V

    .line 89
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupShrinkAnimation()V

    .line 90
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupCompleteAnimation()V

    .line 91
    return-void
.end method

.method private setupCompleteAnimation()V
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->animationFactory:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->COMPLETE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v2, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;

    invoke-direct {v2, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    new-instance v3, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;

    invoke-direct {v3, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;->buildAnimation(Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->completeAnim:Landroid/animation/ValueAnimator;

    .line 206
    return-void
.end method

.method private setupGrowAnimation()V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->animationFactory:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->GROW:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v2, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$2;

    invoke-direct {v2, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$2;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    new-instance v3, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;

    invoke-direct {v3, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;->buildAnimation(Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->growAnim:Landroid/animation/ValueAnimator;

    .line 133
    return-void
.end method

.method private setupRotateAnimation()V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->animationFactory:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ROTATE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v2, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$1;

    invoke-direct {v2, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$1;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;->buildAnimation(Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 101
    return-void
.end method

.method private setupShrinkAnimation()V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->animationFactory:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->SHRINK:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v2, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$4;

    invoke-direct {v2, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$4;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    new-instance v3, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;

    invoke-direct {v3, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;->buildAnimation(Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->shrinkAnim:Landroid/animation/ValueAnimator;

    .line 169
    return-void
.end method

.method private startCompleteAnimationOnNextCycle()V
    .registers 2

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->completeAnimOnNextCycle:Z

    .line 281
    return-void
.end method

.method private stopAnimators()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->rotateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 265
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->growAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 266
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->shrinkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 267
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->completeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 268
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 209
    iget v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentRotationAngle:F

    iget v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentRotationAngleOffset:F

    sub-float/2addr v0, v1

    .line 210
    .local v0, "startAngle":F
    iget v7, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentSweepAngle:F

    .line 211
    .local v7, "sweepAngle":F
    iget-boolean v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->growing:Z

    if-nez v1, :cond_f

    .line 212
    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v1, v7

    add-float/2addr v0, v1

    .line 215
    :cond_f
    iget-object v2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->arcBounds:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .line 306
    const/4 v0, 0x4

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 294
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->animationPlaying:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 232
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 233
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->arcBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 234
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->arcBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 235
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->arcBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 236
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->arcBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 237
    return-void
.end method

.method requestCompleteAnimation(Lcom/github/jorgecastilloprz/progressarc/ArcListener;)V
    .registers 3
    .param p1, "internalListener"    # Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    .line 271
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->completeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    .line 275
    :cond_f
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->internalListener:Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    .line 276
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->startCompleteAnimationOnNextCycle()V

    .line 277
    return-void

    .line 272
    :cond_15
    :goto_15
    return-void
.end method

.method public reset()V
    .registers 1

    .line 219
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->stop()V

    .line 220
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->resetProperties()V

    .line 221
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupAnimations()V

    .line 222
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->start()V

    .line 223
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 298
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 299
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 302
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 303
    return-void
.end method

.method public start()V
    .registers 2

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->animationPlaying:Z

    .line 251
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->resetProperties()V

    .line 252
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->rotateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 253
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->growAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 254
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->invalidateSelf()V

    .line 255
    return-void
.end method

.method public stop()V
    .registers 2

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->animationPlaying:Z

    .line 259
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->stopAnimators()V

    .line 260
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->invalidateSelf()V

    .line 261
    return-void
.end method

.method updateCurrentRotationAngle(F)V
    .registers 2
    .param p1, "currentRotationAngle"    # F

    .line 284
    iput p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentRotationAngle:F

    .line 285
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->invalidateSelf()V

    .line 286
    return-void
.end method

.method updateCurrentSweepAngle(F)V
    .registers 2
    .param p1, "currentSweepAngle"    # F

    .line 289
    iput p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->currentSweepAngle:F

    .line 290
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->invalidateSelf()V

    .line 291
    return-void
.end method

###### Class com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.AnonymousClass1 (com.github.jorgecastilloprz.progressarc.ProgressArcDrawable$1)
.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$1;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupRotateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 97
    invoke-static {p1}, Lcom/github/jorgecastilloprz/utils/AnimationUtils;->getAnimatedFraction(Landroid/animation/ValueAnimator;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    .line 98
    .local v0, "angle":F
    iget-object v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-virtual {v1, v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->updateCurrentRotationAngle(F)V

    .line 99
    return-void
.end method

###### Class com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.AnonymousClass2 (com.github.jorgecastilloprz.progressarc.ProgressArcDrawable$2)
.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$2;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupGrowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$2;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 107
    invoke-static {p1}, Lcom/github/jorgecastilloprz/utils/AnimationUtils;->getAnimatedFraction(Landroid/animation/ValueAnimator;)F

    move-result v0

    .line 108
    .local v0, "animatedFraction":F
    iget-object v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$2;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$2;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v2}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$100(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I

    move-result v2

    iget-object v3, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$2;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v3}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 109
    .local v1, "angle":F
    iget-object v2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$2;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-virtual {v2, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->updateCurrentSweepAngle(F)V

    .line 110
    return-void
.end method

###### Class com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.AnonymousClass3 (com.github.jorgecastilloprz.progressarc.ProgressArcDrawable$3)
.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupGrowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->cancelled:Z

    .line 128
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 120
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->cancelled:Z

    if-nez v0, :cond_12

    .line 121
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$300(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    .line 122
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$400(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 124
    :cond_12
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 131
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->cancelled:Z

    .line 116
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$202(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;Z)Z

    .line 117
    return-void
.end method

###### Class com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.AnonymousClass4 (com.github.jorgecastilloprz.progressarc.ProgressArcDrawable$4)
.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$4;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupShrinkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$4;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 139
    invoke-static {p1}, Lcom/github/jorgecastilloprz/utils/AnimationUtils;->getAnimatedFraction(Landroid/animation/ValueAnimator;)F

    move-result v0

    .line 140
    .local v0, "animatedFraction":F
    iget-object v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$4;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    iget-object v2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$4;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v2}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$100(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$4;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v3}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$100(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I

    move-result v3

    iget-object v4, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$4;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v4}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->updateCurrentSweepAngle(F)V

    .line 142
    return-void
.end method

###### Class com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.AnonymousClass5 (com.github.jorgecastilloprz.progressarc.ProgressArcDrawable$5)
.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupShrinkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->cancelled:Z

    .line 164
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 151
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->cancelled:Z

    if-nez v0, :cond_2a

    .line 152
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$500(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    .line 153
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$600(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 154
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$602(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;Z)Z

    .line 155
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$700(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2a

    .line 157
    :cond_21
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$800(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 160
    :cond_2a
    :goto_2a
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 167
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->cancelled:Z

    .line 148
    return-void
.end method

###### Class com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.AnonymousClass6 (com.github.jorgecastilloprz.progressarc.ProgressArcDrawable$6)
.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupCompleteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 176
    invoke-static {p1}, Lcom/github/jorgecastilloprz/utils/AnimationUtils;->getAnimatedFraction(Landroid/animation/ValueAnimator;)F

    move-result v0

    .line 177
    .local v0, "animatedFraction":F
    iget-object v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 178
    .local v1, "angle":F
    iget-object v2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-virtual {v2, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->updateCurrentSweepAngle(F)V

    .line 179
    return-void
.end method

###### Class com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.AnonymousClass7 (com.github.jorgecastilloprz.progressarc.ProgressArcDrawable$7)
.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupCompleteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->cancelled:Z

    .line 201
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 191
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->cancelled:Z

    if-nez v0, :cond_9

    .line 192
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->stop()V

    .line 195
    :cond_9
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$700(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$1000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/jorgecastilloprz/progressarc/ArcListener;->onArcAnimationComplete()V

    .line 197
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 204
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->cancelled:Z

    .line 185
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$202(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;Z)Z

    .line 186
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$900(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$900(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 188
    return-void
.end method
