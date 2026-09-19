###### Class com.wang.avi.indicators.BallScaleMultipleIndicator (com.wang.avi.indicators.BallScaleMultipleIndicator)
.class public Lcom/wang/avi/indicators/BallScaleMultipleIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallScaleMultipleIndicator.java"


# instance fields
.field alphaInts:[I

.field scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 17
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_14

    iput-object v1, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->scaleFloats:[F

    .line 18
    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->alphaInts:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1e
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 22
    const/high16 v0, 0x40800000    # 4.0f

    .line 23
    .local v0, "circleSpacing":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v2, 0x3

    if-ge v1, v2, :cond_42

    .line 24
    iget-object v2, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->alphaInts:[I

    aget v2, v2, v1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    iget-object v2, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->scaleFloats:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->scaleFloats:[F

    aget v3, v3, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 26
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 28
    .end local v1    # "i":I
    :cond_42
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_66

    .line 34
    .local v2, "delays":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_64

    .line 35
    move v4, v3

    .line 36
    .local v4, "index":I
    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_76

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 37
    .local v6, "scaleAnim":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 40
    new-instance v10, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;

    invoke-direct {v10, p0, v4}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;-><init>(Lcom/wang/avi/indicators/BallScaleMultipleIndicator;I)V

    invoke-virtual {p0, v6, v10}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    aget-wide v10, v2, v3

    invoke-virtual {v6, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 49
    new-array v5, v5, [I

    fill-array-data v5, :array_7e

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 50
    .local v5, "alphaAnim":Landroid/animation/ValueAnimator;
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 53
    new-instance v7, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;

    invoke-direct {v7, p0, v4}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;-><init>(Lcom/wang/avi/indicators/BallScaleMultipleIndicator;I)V

    invoke-virtual {p0, v5, v7}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    aget-wide v7, v2, v3

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 62
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v4    # "index":I
    .end local v5    # "alphaAnim":Landroid/animation/ValueAnimator;
    .end local v6    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 65
    .end local v3    # "i":I
    :cond_64
    return-object v0

    nop

    :array_66
    .array-data 8
        0x0
        0xc8
        0x190
    .end array-data

    :array_76
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7e
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallScaleMultipleIndicator.AnonymousClass1 (com.wang.avi.indicators.BallScaleMultipleIndicator$1)
.class Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;
.super Ljava/lang/Object;
.source "BallScaleMultipleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallScaleMultipleIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

    .line 40
    iput-object p1, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;->this$0:Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 43
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;->this$0:Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->scaleFloats:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 44
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;->this$0:Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->postInvalidate()V

    .line 45
    return-void
.end method

###### Class com.wang.avi.indicators.BallScaleMultipleIndicator.AnonymousClass2 (com.wang.avi.indicators.BallScaleMultipleIndicator$2)
.class Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;
.super Ljava/lang/Object;
.source "BallScaleMultipleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallScaleMultipleIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

    .line 53
    iput-object p1, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 56
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->alphaInts:[I

    iget v1, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleMultipleIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->postInvalidate()V

    .line 58
    return-void
.end method
