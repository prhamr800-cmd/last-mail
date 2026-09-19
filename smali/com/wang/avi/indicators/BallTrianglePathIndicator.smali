###### Class com.wang.avi.indicators.BallTrianglePathIndicator (com.wang.avi.indicators.BallTrianglePathIndicator)
.class public Lcom/wang/avi/indicators/BallTrianglePathIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallTrianglePathIndicator.java"


# instance fields
.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 17
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateX:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateY:[F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 21
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2d

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    iget-object v1, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateX:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateY:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 29
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    .line 35
    .local v1, "startX":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    .line 36
    .local v2, "startY":F
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    const/4 v5, 0x3

    if-ge v4, v5, :cond_113

    .line 37
    move v6, v4

    .line 38
    .local v6, "index":I
    const/4 v7, 0x4

    new-array v8, v7, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v9

    const/4 v10, 0x2

    div-int/2addr v9, v10

    int-to-float v9, v9

    aput v9, v8, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    const/4 v11, 0x1

    aput v9, v8, v11

    aput v1, v8, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v9

    div-int/2addr v9, v10

    int-to-float v9, v9

    aput v9, v8, v5

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 39
    .local v8, "translateXAnim":Landroid/animation/ValueAnimator;
    if-ne v4, v11, :cond_5f

    .line 40
    new-array v9, v7, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v9, v3

    aput v1, v9, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    div-int/2addr v12, v10

    int-to-float v12, v12

    aput v12, v9, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v9, v5

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    goto :goto_7b

    .line 41
    :cond_5f
    if-ne v4, v10, :cond_7b

    .line 42
    new-array v9, v7, [F

    aput v1, v9, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    div-int/2addr v12, v10

    int-to-float v12, v12

    aput v12, v9, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v9, v10

    aput v1, v9, v5

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 44
    :cond_7b
    :goto_7b
    new-array v9, v7, [F

    aput v2, v9, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v9, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v9, v10

    aput v2, v9, v5

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 45
    .local v9, "translateYAnim":Landroid/animation/ValueAnimator;
    if-ne v4, v11, :cond_b8

    .line 46
    new-array v7, v7, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v7, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v7, v11

    aput v2, v7, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v2

    aput v10, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    goto :goto_da

    .line 47
    :cond_b8
    if-ne v4, v10, :cond_da

    .line 48
    new-array v7, v7, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v7, v3

    aput v2, v7, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v2

    aput v11, v7, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v2

    aput v10, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 51
    :cond_da
    :goto_da
    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    const/4 v5, -0x1

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    new-instance v7, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;

    invoke-direct {v7, p0, v6}, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;-><init>(Lcom/wang/avi/indicators/BallTrianglePathIndicator;I)V

    invoke-virtual {p0, v8, v7}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    invoke-virtual {v9, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 65
    new-instance v5, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;

    invoke-direct {v5, p0, v6}, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;-><init>(Lcom/wang/avi/indicators/BallTrianglePathIndicator;I)V

    invoke-virtual {p0, v9, v5}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .end local v6    # "index":I
    .end local v8    # "translateXAnim":Landroid/animation/ValueAnimator;
    .end local v9    # "translateYAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    .line 76
    .end local v4    # "i":I
    :cond_113
    return-object v0
.end method

###### Class com.wang.avi.indicators.BallTrianglePathIndicator.AnonymousClass1 (com.wang.avi.indicators.BallTrianglePathIndicator$1)
.class Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;
.super Ljava/lang/Object;
.source "BallTrianglePathIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallTrianglePathIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallTrianglePathIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallTrianglePathIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallTrianglePathIndicator;

    .line 54
    iput-object p1, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;->this$0:Lcom/wang/avi/indicators/BallTrianglePathIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 57
    iget-object v0, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;->this$0:Lcom/wang/avi/indicators/BallTrianglePathIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateX:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;->this$0:Lcom/wang/avi/indicators/BallTrianglePathIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->postInvalidate()V

    .line 59
    return-void
.end method

###### Class com.wang.avi.indicators.BallTrianglePathIndicator.AnonymousClass2 (com.wang.avi.indicators.BallTrianglePathIndicator$2)
.class Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;
.super Ljava/lang/Object;
.source "BallTrianglePathIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallTrianglePathIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallTrianglePathIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallTrianglePathIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallTrianglePathIndicator;

    .line 65
    iput-object p1, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;->this$0:Lcom/wang/avi/indicators/BallTrianglePathIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 68
    iget-object v0, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;->this$0:Lcom/wang/avi/indicators/BallTrianglePathIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateY:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;->this$0:Lcom/wang/avi/indicators/BallTrianglePathIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->postInvalidate()V

    .line 70
    return-void
.end method
