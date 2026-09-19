###### Class com.wang.avi.indicators.SquareSpinIndicator (com.wang.avi.indicators.SquareSpinIndicator)
.class public Lcom/wang/avi/indicators/SquareSpinIndicator;
.super Lcom/wang/avi/Indicator;
.source "SquareSpinIndicator.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private rotateX:F

.field private rotateY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    .line 29
    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/indicators/SquareSpinIndicator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/SquareSpinIndicator;
    .param p1, "x1"    # F

    .line 18
    iput p1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->rotateX:F

    return p1
.end method

.method static synthetic access$102(Lcom/wang/avi/indicators/SquareSpinIndicator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/SquareSpinIndicator;
    .param p1, "x1"    # F

    .line 18
    iput p1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->rotateY:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 35
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 36
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->rotateX:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 37
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->rotateY:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 38
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 39
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 41
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->centerX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->centerY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 42
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 43
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 46
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x5

    new-array v2, v1, [F

    fill-array-data v2, :array_4e

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 52
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/wang/avi/indicators/SquareSpinIndicator$1;

    invoke-direct {v3, p0}, Lcom/wang/avi/indicators/SquareSpinIndicator$1;-><init>(Lcom/wang/avi/indicators/SquareSpinIndicator;)V

    invoke-virtual {p0, v2, v3}, Lcom/wang/avi/indicators/SquareSpinIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 61
    const-wide/16 v4, 0x9c4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    new-array v1, v1, [F

    fill-array-data v1, :array_5c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 64
    .local v1, "animator1":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/wang/avi/indicators/SquareSpinIndicator$2;

    invoke-direct {v6, p0}, Lcom/wang/avi/indicators/SquareSpinIndicator$2;-><init>(Lcom/wang/avi/indicators/SquareSpinIndicator;)V

    invoke-virtual {p0, v1, v6}, Lcom/wang/avi/indicators/SquareSpinIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 73
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0

    :array_4e
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43340000    # 180.0f
        0x0
        0x0
    .end array-data

    :array_5c
    .array-data 4
        0x0
        0x0
        0x43340000    # 180.0f
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method

###### Class com.wang.avi.indicators.SquareSpinIndicator.AnonymousClass1 (com.wang.avi.indicators.SquareSpinIndicator$1)
.class Lcom/wang/avi/indicators/SquareSpinIndicator$1;
.super Ljava/lang/Object;
.source "SquareSpinIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/SquareSpinIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/SquareSpinIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/SquareSpinIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/SquareSpinIndicator;

    .line 52
    iput-object p1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator$1;->this$0:Lcom/wang/avi/indicators/SquareSpinIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 55
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator$1;->this$0:Lcom/wang/avi/indicators/SquareSpinIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/SquareSpinIndicator;->access$002(Lcom/wang/avi/indicators/SquareSpinIndicator;F)F

    .line 56
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator$1;->this$0:Lcom/wang/avi/indicators/SquareSpinIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->postInvalidate()V

    .line 57
    return-void
.end method

###### Class com.wang.avi.indicators.SquareSpinIndicator.AnonymousClass2 (com.wang.avi.indicators.SquareSpinIndicator$2)
.class Lcom/wang/avi/indicators/SquareSpinIndicator$2;
.super Ljava/lang/Object;
.source "SquareSpinIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/SquareSpinIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/SquareSpinIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/SquareSpinIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/SquareSpinIndicator;

    .line 64
    iput-object p1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator$2;->this$0:Lcom/wang/avi/indicators/SquareSpinIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 67
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator$2;->this$0:Lcom/wang/avi/indicators/SquareSpinIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/SquareSpinIndicator;->access$102(Lcom/wang/avi/indicators/SquareSpinIndicator;F)F

    .line 68
    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator$2;->this$0:Lcom/wang/avi/indicators/SquareSpinIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->postInvalidate()V

    .line 69
    return-void
.end method
