###### Class com.wang.avi.indicators.BallScaleRippleIndicator (com.wang.avi.indicators.BallScaleRippleIndicator)
.class public Lcom/wang/avi/indicators/BallScaleRippleIndicator;
.super Lcom/wang/avi/indicators/BallScaleIndicator;
.source "BallScaleRippleIndicator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/wang/avi/indicators/BallScaleIndicator;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    invoke-super {p0, p1, p2}, Lcom/wang/avi/indicators/BallScaleIndicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 22
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

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_4e

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 28
    .local v2, "scaleAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 29
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 30
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 31
    new-instance v6, Lcom/wang/avi/indicators/BallScaleRippleIndicator$1;

    invoke-direct {v6, p0}, Lcom/wang/avi/indicators/BallScaleRippleIndicator$1;-><init>(Lcom/wang/avi/indicators/BallScaleRippleIndicator;)V

    invoke-virtual {p0, v2, v6}, Lcom/wang/avi/indicators/BallScaleRippleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    new-array v1, v1, [I

    fill-array-data v1, :array_56

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 40
    .local v1, "alphaAnim":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 43
    new-instance v3, Lcom/wang/avi/indicators/BallScaleRippleIndicator$2;

    invoke-direct {v3, p0}, Lcom/wang/avi/indicators/BallScaleRippleIndicator$2;-><init>(Lcom/wang/avi/indicators/BallScaleRippleIndicator;)V

    invoke-virtual {p0, v1, v3}, Lcom/wang/avi/indicators/BallScaleRippleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-object v0

    :array_4e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_56
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallScaleRippleIndicator.AnonymousClass1 (com.wang.avi.indicators.BallScaleRippleIndicator$1)
.class Lcom/wang/avi/indicators/BallScaleRippleIndicator$1;
.super Ljava/lang/Object;
.source "BallScaleRippleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallScaleRippleIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallScaleRippleIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallScaleRippleIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallScaleRippleIndicator;

    .line 31
    iput-object p1, p0, Lcom/wang/avi/indicators/BallScaleRippleIndicator$1;->this$0:Lcom/wang/avi/indicators/BallScaleRippleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 34
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleRippleIndicator$1;->this$0:Lcom/wang/avi/indicators/BallScaleRippleIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/BallScaleRippleIndicator;->scale:F

    .line 35
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleRippleIndicator$1;->this$0:Lcom/wang/avi/indicators/BallScaleRippleIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallScaleRippleIndicator;->postInvalidate()V

    .line 36
    return-void
.end method

###### Class com.wang.avi.indicators.BallScaleRippleIndicator.AnonymousClass2 (com.wang.avi.indicators.BallScaleRippleIndicator$2)
.class Lcom/wang/avi/indicators/BallScaleRippleIndicator$2;
.super Ljava/lang/Object;
.source "BallScaleRippleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallScaleRippleIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallScaleRippleIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallScaleRippleIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallScaleRippleIndicator;

    .line 43
    iput-object p1, p0, Lcom/wang/avi/indicators/BallScaleRippleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleRippleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 46
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleRippleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleRippleIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/BallScaleRippleIndicator;->alpha:I

    .line 47
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleRippleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleRippleIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallScaleRippleIndicator;->postInvalidate()V

    .line 48
    return-void
.end method
