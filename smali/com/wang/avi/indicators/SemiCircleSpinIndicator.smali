###### Class com.wang.avi.indicators.SemiCircleSpinIndicator (com.wang.avi.indicators.SemiCircleSpinIndicator)
.class public Lcom/wang/avi/indicators/SemiCircleSpinIndicator;
.super Lcom/wang/avi/Indicator;
.source "SemiCircleSpinIndicator.java"


# instance fields
.field private degress:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/indicators/SemiCircleSpinIndicator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/SemiCircleSpinIndicator;
    .param p1, "x1"    # F

    .line 15
    iput p1, p0, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->degress:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 21
    iget v0, p0, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->degress:F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 22
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v4, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 23
    .local v4, "rectF":Landroid/graphics/RectF;
    const/high16 v5, -0x3d900000    # -60.0f

    const/high16 v6, 0x42f00000    # 120.0f

    const/4 v7, 0x0

    move-object v3, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 24
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

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_24

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 30
    .local v1, "rotateAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/wang/avi/indicators/SemiCircleSpinIndicator$1;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator$1;-><init>(Lcom/wang/avi/indicators/SemiCircleSpinIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 38
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0

    :array_24
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.SemiCircleSpinIndicator.AnonymousClass1 (com.wang.avi.indicators.SemiCircleSpinIndicator$1)
.class Lcom/wang/avi/indicators/SemiCircleSpinIndicator$1;
.super Ljava/lang/Object;
.source "SemiCircleSpinIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/SemiCircleSpinIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/SemiCircleSpinIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/SemiCircleSpinIndicator;

    .line 30
    iput-object p1, p0, Lcom/wang/avi/indicators/SemiCircleSpinIndicator$1;->this$0:Lcom/wang/avi/indicators/SemiCircleSpinIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 33
    iget-object v0, p0, Lcom/wang/avi/indicators/SemiCircleSpinIndicator$1;->this$0:Lcom/wang/avi/indicators/SemiCircleSpinIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->access$002(Lcom/wang/avi/indicators/SemiCircleSpinIndicator;F)F

    .line 34
    iget-object v0, p0, Lcom/wang/avi/indicators/SemiCircleSpinIndicator$1;->this$0:Lcom/wang/avi/indicators/SemiCircleSpinIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->postInvalidate()V

    .line 35
    return-void
.end method
