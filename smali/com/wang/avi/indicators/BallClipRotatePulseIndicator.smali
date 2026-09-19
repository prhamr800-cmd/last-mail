###### Class com.wang.avi.indicators.BallClipRotatePulseIndicator (com.wang.avi.indicators.BallClipRotatePulseIndicator)
.class public Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallClipRotatePulseIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat1:F

.field scaleFloat2:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 22
    const/high16 v0, 0x41400000    # 12.0f

    .line 23
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    .line 24
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    .line 27
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    iget v4, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat1:F

    iget v5, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat1:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 30
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    const/high16 v4, 0x40200000    # 2.5f

    div-float v4, v1, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 35
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    iget v4, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat2:F

    iget v5, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat2:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 37
    iget v4, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->degrees:F

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 39
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    new-array v4, v2, [F

    fill-array-data v4, :array_68

    .line 44
    .local v4, "startAngles":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4b
    if-ge v5, v2, :cond_67

    .line 45
    new-instance v7, Landroid/graphics/RectF;

    neg-float v6, v1

    add-float/2addr v6, v0

    neg-float v8, v3

    add-float/2addr v8, v0

    sub-float v9, v1, v0

    sub-float v10, v3, v0

    invoke-direct {v7, v6, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 46
    .local v7, "rectF":Landroid/graphics/RectF;
    aget v8, v4, v5

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    move-object v6, p1

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 44
    .end local v7    # "rectF":Landroid/graphics/RectF;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 48
    .end local v5    # "i":I
    :cond_67
    return-void

    :array_68
    .array-data 4
        0x43610000    # 225.0f
        0x42340000    # 45.0f
    .end array-data
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

    .line 52
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_58

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 53
    .local v1, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 55
    new-instance v5, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$1;

    invoke-direct {v5, p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$1;-><init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V

    invoke-virtual {p0, v1, v5}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    new-array v5, v0, [F

    fill-array-data v5, :array_62

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 64
    .local v5, "scaleAnim2":Landroid/animation/ValueAnimator;
    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 66
    new-instance v6, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;

    invoke-direct {v6, p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;-><init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V

    invoke-virtual {p0, v5, v6}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    new-array v0, v0, [F

    fill-array-data v0, :array_6c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 75
    .local v0, "rotateAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 77
    new-instance v2, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$3;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$3;-><init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V

    invoke-virtual {p0, v0, v2}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v2

    :array_58
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_62
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_6c
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallClipRotatePulseIndicator.AnonymousClass1 (com.wang.avi.indicators.BallClipRotatePulseIndicator$1)
.class Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$1;
.super Ljava/lang/Object;
.source "BallClipRotatePulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    .line 55
    iput-object p1, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 58
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat1:F

    .line 59
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->postInvalidate()V

    .line 60
    return-void
.end method

###### Class com.wang.avi.indicators.BallClipRotatePulseIndicator.AnonymousClass2 (com.wang.avi.indicators.BallClipRotatePulseIndicator$2)
.class Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;
.super Ljava/lang/Object;
.source "BallClipRotatePulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    .line 66
    iput-object p1, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 69
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat2:F

    .line 70
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->postInvalidate()V

    .line 71
    return-void
.end method

###### Class com.wang.avi.indicators.BallClipRotatePulseIndicator.AnonymousClass3 (com.wang.avi.indicators.BallClipRotatePulseIndicator$3)
.class Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$3;
.super Ljava/lang/Object;
.source "BallClipRotatePulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    .line 77
    iput-object p1, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$3;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 80
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$3;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->degrees:F

    .line 81
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$3;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->postInvalidate()V

    .line 82
    return-void
.end method
