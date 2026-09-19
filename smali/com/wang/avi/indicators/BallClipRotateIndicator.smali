###### Class com.wang.avi.indicators.BallClipRotateIndicator (com.wang.avi.indicators.BallClipRotateIndicator)
.class public Lcom/wang/avi/indicators/BallClipRotateIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallClipRotateIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 21
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    const/high16 v0, 0x41400000    # 12.0f

    .line 25
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 26
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 27
    .local v2, "y":F
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    iget v3, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->scaleFloat:F

    iget v4, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 29
    iget v3, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->degrees:F

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 30
    new-instance v5, Landroid/graphics/RectF;

    neg-float v3, v1

    add-float/2addr v3, v0

    neg-float v4, v2

    add-float/2addr v4, v0

    const/4 v6, 0x0

    add-float v7, v1, v6

    sub-float/2addr v7, v0

    add-float/2addr v6, v2

    sub-float/2addr v6, v0

    invoke-direct {v5, v3, v4, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 31
    .local v5, "rectF":Landroid/graphics/RectF;
    const/high16 v6, -0x3dcc0000    # -45.0f

    const/high16 v7, 0x43870000    # 270.0f

    const/4 v8, 0x0

    move-object v4, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 32
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_40

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 38
    .local v1, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 40
    new-instance v5, Lcom/wang/avi/indicators/BallClipRotateIndicator$1;

    invoke-direct {v5, p0}, Lcom/wang/avi/indicators/BallClipRotateIndicator$1;-><init>(Lcom/wang/avi/indicators/BallClipRotateIndicator;)V

    invoke-virtual {p0, v1, v5}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_4c

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 48
    .local v5, "rotateAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 50
    new-instance v2, Lcom/wang/avi/indicators/BallClipRotateIndicator$2;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/BallClipRotateIndicator$2;-><init>(Lcom/wang/avi/indicators/BallClipRotateIndicator;)V

    invoke-virtual {p0, v5, v2}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-object v0

    nop

    :array_40
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4c
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallClipRotateIndicator.AnonymousClass1 (com.wang.avi.indicators.BallClipRotateIndicator$1)
.class Lcom/wang/avi/indicators/BallClipRotateIndicator$1;
.super Ljava/lang/Object;
.source "BallClipRotateIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallClipRotateIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallClipRotateIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallClipRotateIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallClipRotateIndicator;

    .line 40
    iput-object p1, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator$1;->this$0:Lcom/wang/avi/indicators/BallClipRotateIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 43
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator$1;->this$0:Lcom/wang/avi/indicators/BallClipRotateIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->scaleFloat:F

    .line 44
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator$1;->this$0:Lcom/wang/avi/indicators/BallClipRotateIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->postInvalidate()V

    .line 45
    return-void
.end method

###### Class com.wang.avi.indicators.BallClipRotateIndicator.AnonymousClass2 (com.wang.avi.indicators.BallClipRotateIndicator$2)
.class Lcom/wang/avi/indicators/BallClipRotateIndicator$2;
.super Ljava/lang/Object;
.source "BallClipRotateIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallClipRotateIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallClipRotateIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallClipRotateIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallClipRotateIndicator;

    .line 50
    iput-object p1, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator$2;->this$0:Lcom/wang/avi/indicators/BallClipRotateIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 53
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator$2;->this$0:Lcom/wang/avi/indicators/BallClipRotateIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->degrees:F

    .line 54
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator$2;->this$0:Lcom/wang/avi/indicators/BallClipRotateIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->postInvalidate()V

    .line 55
    return-void
.end method
