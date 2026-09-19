###### Class com.wang.avi.indicators.BallPulseRiseIndicator (com.wang.avi.indicators.BallPulseRiseIndicator)
.class public Lcom/wang/avi/indicators/BallPulseRiseIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallPulseRiseIndicator.java"


# instance fields
.field private degress:F

.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mCamera:Landroid/graphics/Camera;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mMatrix:Landroid/graphics/Matrix;

    .line 27
    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/indicators/BallPulseRiseIndicator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/BallPulseRiseIndicator;
    .param p1, "x1"    # F

    .line 17
    iput p1, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->degress:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 32
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 33
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 34
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->degress:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 35
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 36
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 38
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->centerX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->centerY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 39
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 40
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 42
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 43
    .local v0, "radius":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    invoke-virtual {p1, v1, v3, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    mul-float v3, v0, v2

    invoke-virtual {p1, v1, v3, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v0, v2

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v3, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v0

    sub-float/2addr v3, v2

    invoke-virtual {p1, v1, v3, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 55
    .local v1, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/wang/avi/indicators/BallPulseRiseIndicator$1;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator$1;-><init>(Lcom/wang/avi/indicators/BallPulseRiseIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 63
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 64
    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-object v0

    :array_2c
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallPulseRiseIndicator.AnonymousClass1 (com.wang.avi.indicators.BallPulseRiseIndicator$1)
.class Lcom/wang/avi/indicators/BallPulseRiseIndicator$1;
.super Ljava/lang/Object;
.source "BallPulseRiseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallPulseRiseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallPulseRiseIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallPulseRiseIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallPulseRiseIndicator;

    .line 55
    iput-object p1, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallPulseRiseIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 58
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallPulseRiseIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->access$002(Lcom/wang/avi/indicators/BallPulseRiseIndicator;F)F

    .line 59
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseRiseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallPulseRiseIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallPulseRiseIndicator;->postInvalidate()V

    .line 60
    return-void
.end method
