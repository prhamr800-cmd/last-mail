###### Class com.wang.avi.indicators.BallZigZagIndicator (com.wang.avi.indicators.BallZigZagIndicator)
.class public Lcom/wang/avi/indicators/BallZigZagIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallZigZagIndicator.java"


# instance fields
.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 17
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/wang/avi/indicators/BallZigZagIndicator;->translateX:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/BallZigZagIndicator;->translateY:[F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_23

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 24
    iget-object v1, p0, Lcom/wang/avi/indicators/BallZigZagIndicator;->translateX:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/wang/avi/indicators/BallZigZagIndicator;->translateY:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28
    .end local v0    # "i":I
    :cond_23
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

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    .line 34
    .local v1, "startX":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    .line 35
    .local v2, "startY":F
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    const/4 v5, 0x2

    if-ge v4, v5, :cond_cd

    .line 36
    move v6, v4

    .line 37
    .local v6, "index":I
    const/4 v7, 0x4

    new-array v8, v7, [F

    aput v1, v8, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getWidth()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    aput v9, v8, v5

    const/4 v9, 0x3

    aput v1, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 38
    .local v8, "translateXAnim":Landroid/animation/ValueAnimator;
    if-ne v4, v10, :cond_58

    .line 39
    new-array v11, v7, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v11, v3

    aput v1, v11, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getWidth()I

    move-result v12

    div-int/2addr v12, v5

    int-to-float v12, v12

    aput v12, v11, v5

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v11, v9

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 41
    :cond_58
    new-array v11, v7, [F

    aput v2, v11, v3

    aput v2, v11, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getHeight()I

    move-result v12

    div-int/2addr v12, v5

    int-to-float v12, v12

    aput v12, v11, v5

    aput v2, v11, v9

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 42
    .local v11, "translateYAnim":Landroid/animation/ValueAnimator;
    if-ne v4, v10, :cond_94

    .line 43
    new-array v7, v7, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v7, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v7, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getHeight()I

    move-result v10

    div-int/2addr v10, v5

    int-to-float v10, v10

    aput v10, v7, v5

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    aput v5, v7, v9

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 46
    :cond_94
    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    const/4 v5, -0x1

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    new-instance v7, Lcom/wang/avi/indicators/BallZigZagIndicator$1;

    invoke-direct {v7, p0, v6}, Lcom/wang/avi/indicators/BallZigZagIndicator$1;-><init>(Lcom/wang/avi/indicators/BallZigZagIndicator;I)V

    invoke-virtual {p0, v8, v7}, Lcom/wang/avi/indicators/BallZigZagIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    invoke-virtual {v11, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    invoke-virtual {v11, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 60
    new-instance v5, Lcom/wang/avi/indicators/BallZigZagIndicator$2;

    invoke-direct {v5, p0, v6}, Lcom/wang/avi/indicators/BallZigZagIndicator$2;-><init>(Lcom/wang/avi/indicators/BallZigZagIndicator;I)V

    invoke-virtual {p0, v11, v5}, Lcom/wang/avi/indicators/BallZigZagIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v6    # "index":I
    .end local v8    # "translateXAnim":Landroid/animation/ValueAnimator;
    .end local v11    # "translateYAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    .line 70
    .end local v4    # "i":I
    :cond_cd
    return-object v0
.end method

###### Class com.wang.avi.indicators.BallZigZagIndicator.AnonymousClass1 (com.wang.avi.indicators.BallZigZagIndicator$1)
.class Lcom/wang/avi/indicators/BallZigZagIndicator$1;
.super Ljava/lang/Object;
.source "BallZigZagIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallZigZagIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallZigZagIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallZigZagIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallZigZagIndicator;

    .line 49
    iput-object p1, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$1;->this$0:Lcom/wang/avi/indicators/BallZigZagIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 52
    iget-object v0, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$1;->this$0:Lcom/wang/avi/indicators/BallZigZagIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallZigZagIndicator;->translateX:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$1;->this$0:Lcom/wang/avi/indicators/BallZigZagIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->postInvalidate()V

    .line 54
    return-void
.end method

###### Class com.wang.avi.indicators.BallZigZagIndicator.AnonymousClass2 (com.wang.avi.indicators.BallZigZagIndicator$2)
.class Lcom/wang/avi/indicators/BallZigZagIndicator$2;
.super Ljava/lang/Object;
.source "BallZigZagIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallZigZagIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallZigZagIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallZigZagIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallZigZagIndicator;

    .line 60
    iput-object p1, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$2;->this$0:Lcom/wang/avi/indicators/BallZigZagIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 63
    iget-object v0, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$2;->this$0:Lcom/wang/avi/indicators/BallZigZagIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallZigZagIndicator;->translateY:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/wang/avi/indicators/BallZigZagIndicator$2;->this$0:Lcom/wang/avi/indicators/BallZigZagIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallZigZagIndicator;->postInvalidate()V

    .line 65
    return-void
.end method
