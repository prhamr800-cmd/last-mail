###### Class com.wang.avi.indicators.BallRotateIndicator (com.wang.avi.indicators.BallRotateIndicator)
.class public Lcom/wang/avi/indicators/BallRotateIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallRotateIndicator.java"


# instance fields
.field degress:F

.field private mMatrix:Landroid/graphics/Matrix;

.field scaleFloat:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 17
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->mMatrix:Landroid/graphics/Matrix;

    .line 25
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 30
    .local v0, "radius":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 31
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 38
    .local v2, "y":F
    iget v3, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->degress:F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    sub-float v4, v1, v4

    sub-float/2addr v4, v0

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    iget v4, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    iget v5, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 43
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48
    iget v5, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    iget v6, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 49
    invoke-virtual {p1, v4, v4, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    mul-float v3, v3, v0

    add-float/2addr v3, v1

    add-float/2addr v3, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    iget v3, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    iget v5, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 55
    invoke-virtual {p1, v4, v4, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 57
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

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_3e

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 63
    .local v2, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 65
    new-instance v6, Lcom/wang/avi/indicators/BallRotateIndicator$1;

    invoke-direct {v6, p0}, Lcom/wang/avi/indicators/BallRotateIndicator$1;-><init>(Lcom/wang/avi/indicators/BallRotateIndicator;)V

    invoke-virtual {p0, v2, v6}, Lcom/wang/avi/indicators/BallRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    new-array v1, v1, [F

    fill-array-data v1, :array_48

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 74
    .local v1, "rotateAnim":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/wang/avi/indicators/BallRotateIndicator$2;

    invoke-direct {v6, p0}, Lcom/wang/avi/indicators/BallRotateIndicator$2;-><init>(Lcom/wang/avi/indicators/BallRotateIndicator;)V

    invoke-virtual {p0, v1, v6}, Lcom/wang/avi/indicators/BallRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-object v0

    :array_3e
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_48
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallRotateIndicator.AnonymousClass1 (com.wang.avi.indicators.BallRotateIndicator$1)
.class Lcom/wang/avi/indicators/BallRotateIndicator$1;
.super Ljava/lang/Object;
.source "BallRotateIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallRotateIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallRotateIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallRotateIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallRotateIndicator;

    .line 65
    iput-object p1, p0, Lcom/wang/avi/indicators/BallRotateIndicator$1;->this$0:Lcom/wang/avi/indicators/BallRotateIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 68
    iget-object v0, p0, Lcom/wang/avi/indicators/BallRotateIndicator$1;->this$0:Lcom/wang/avi/indicators/BallRotateIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    .line 69
    iget-object v0, p0, Lcom/wang/avi/indicators/BallRotateIndicator$1;->this$0:Lcom/wang/avi/indicators/BallRotateIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallRotateIndicator;->postInvalidate()V

    .line 70
    return-void
.end method

###### Class com.wang.avi.indicators.BallRotateIndicator.AnonymousClass2 (com.wang.avi.indicators.BallRotateIndicator$2)
.class Lcom/wang/avi/indicators/BallRotateIndicator$2;
.super Ljava/lang/Object;
.source "BallRotateIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallRotateIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallRotateIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallRotateIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallRotateIndicator;

    .line 74
    iput-object p1, p0, Lcom/wang/avi/indicators/BallRotateIndicator$2;->this$0:Lcom/wang/avi/indicators/BallRotateIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 77
    iget-object v0, p0, Lcom/wang/avi/indicators/BallRotateIndicator$2;->this$0:Lcom/wang/avi/indicators/BallRotateIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/BallRotateIndicator;->degress:F

    .line 78
    iget-object v0, p0, Lcom/wang/avi/indicators/BallRotateIndicator$2;->this$0:Lcom/wang/avi/indicators/BallRotateIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallRotateIndicator;->postInvalidate()V

    .line 79
    return-void
.end method
