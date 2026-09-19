###### Class com.wang.avi.indicators.BallScaleRippleMultipleIndicator (com.wang.avi.indicators.BallScaleRippleMultipleIndicator)
.class public Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;
.super Lcom/wang/avi/indicators/BallScaleMultipleIndicator;
.source "BallScaleRippleMultipleIndicator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;-><init>()V

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
    invoke-super {p0, p1, p2}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 22
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

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_66

    .line 28
    .local v2, "delays":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_64

    .line 29
    move v4, v3

    .line 30
    .local v4, "index":I
    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_76

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 31
    .local v6, "scaleAnim":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 34
    new-instance v10, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$1;

    invoke-direct {v10, p0, v4}, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$1;-><init>(Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;I)V

    invoke-virtual {p0, v6, v10}, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    aget-wide v10, v2, v3

    invoke-virtual {v6, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 43
    new-array v5, v5, [I

    fill-array-data v5, :array_7e

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 44
    .local v5, "alphaAnim":Landroid/animation/ValueAnimator;
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 47
    new-instance v7, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$2;

    invoke-direct {v7, p0, v4}, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$2;-><init>(Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;I)V

    invoke-virtual {p0, v5, v7}, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    aget-wide v7, v2, v3

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 56
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .end local v4    # "index":I
    .end local v5    # "alphaAnim":Landroid/animation/ValueAnimator;
    .end local v6    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 59
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
        0x0
        0xff
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallScaleRippleMultipleIndicator.AnonymousClass1 (com.wang.avi.indicators.BallScaleRippleMultipleIndicator$1)
.class Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$1;
.super Ljava/lang/Object;
.source "BallScaleRippleMultipleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

    .line 34
    iput-object p1, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$1;->this$0:Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 37
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$1;->this$0:Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;->scaleFloats:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 38
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$1;->this$0:Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;->postInvalidate()V

    .line 39
    return-void
.end method

###### Class com.wang.avi.indicators.BallScaleRippleMultipleIndicator.AnonymousClass2 (com.wang.avi.indicators.BallScaleRippleMultipleIndicator$2)
.class Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$2;
.super Ljava/lang/Object;
.source "BallScaleRippleMultipleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

    .line 47
    iput-object p1, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 50
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;->alphaInts:[I

    iget v1, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 51
    iget-object v0, p0, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator$2;->this$0:Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallScaleRippleMultipleIndicator;->postInvalidate()V

    .line 52
    return-void
.end method
