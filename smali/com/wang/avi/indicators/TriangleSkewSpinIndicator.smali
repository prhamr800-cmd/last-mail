###### Class com.wang.avi.indicators.TriangleSkewSpinIndicator (com.wang.avi.indicators.TriangleSkewSpinIndicator)
.class public Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;
.super Lcom/wang/avi/Indicator;
.source "TriangleSkewSpinIndicator.java"


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

    iput-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mCamera:Landroid/graphics/Camera;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    .line 29
    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;
    .param p1, "x1"    # F

    .line 18
    iput p1, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->rotateX:F

    return p1
.end method

.method static synthetic access$102(Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;
    .param p1, "x1"    # F

    .line 18
    iput p1, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->rotateY:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 36
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 37
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->rotateX:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 38
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->rotateY:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 39
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 40
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 42
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->centerX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->centerY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 43
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 44
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 47
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 48
    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 52
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

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x5

    new-array v2, v1, [F

    fill-array-data v2, :array_4e

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 58
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$1;

    invoke-direct {v3, p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$1;-><init>(Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;)V

    invoke-virtual {p0, v2, v3}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 67
    const-wide/16 v4, 0x9c4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    new-array v1, v1, [F

    fill-array-data v1, :array_5c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 70
    .local v1, "animator1":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$2;

    invoke-direct {v6, p0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$2;-><init>(Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;)V

    invoke-virtual {p0, v1, v6}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 79
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
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

###### Class com.wang.avi.indicators.TriangleSkewSpinIndicator.AnonymousClass1 (com.wang.avi.indicators.TriangleSkewSpinIndicator$1)
.class Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$1;
.super Ljava/lang/Object;
.source "TriangleSkewSpinIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;

    .line 58
    iput-object p1, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$1;->this$0:Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 61
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$1;->this$0:Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->access$002(Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;F)F

    .line 62
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$1;->this$0:Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->postInvalidate()V

    .line 63
    return-void
.end method

###### Class com.wang.avi.indicators.TriangleSkewSpinIndicator.AnonymousClass2 (com.wang.avi.indicators.TriangleSkewSpinIndicator$2)
.class Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$2;
.super Ljava/lang/Object;
.source "TriangleSkewSpinIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;

    .line 70
    iput-object p1, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$2;->this$0:Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$2;->this$0:Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->access$102(Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;F)F

    .line 74
    iget-object v0, p0, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator$2;->this$0:Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/TriangleSkewSpinIndicator;->postInvalidate()V

    .line 75
    return-void
.end method
