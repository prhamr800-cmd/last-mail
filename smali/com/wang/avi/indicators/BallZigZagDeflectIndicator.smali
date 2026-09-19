###### Class com.wang.avi.indicators.BallZigZagDeflectIndicator (com.wang.avi.indicators.BallZigZagDeflectIndicator)
.class public Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;
.super Lcom/wang/avi/indicators/BallZigZagIndicator;
.source "BallZigZagDeflectIndicator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/wang/avi/indicators/BallZigZagIndicator;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    .line 20
    .local v1, "startX":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    .line 21
    .local v2, "startY":F
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    const/4 v5, 0x2

    if-ge v4, v5, :cond_d6

    .line 22
    move v6, v4

    .line 23
    .local v6, "index":I
    const/4 v7, 0x5

    new-array v8, v7, [F

    aput v1, v8, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    const/4 v10, 0x1

    aput v9, v8, v10

    aput v1, v8, v5

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    const/4 v11, 0x3

    aput v9, v8, v11

    const/4 v9, 0x4

    aput v1, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 24
    .local v8, "translateXAnim":Landroid/animation/ValueAnimator;
    if-ne v4, v10, :cond_5d

    .line 25
    new-array v12, v7, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v1

    aput v13, v12, v3

    aput v1, v12, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v1

    aput v13, v12, v5

    aput v1, v12, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v1

    aput v13, v12, v9

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 27
    :cond_5d
    new-array v12, v7, [F

    aput v2, v12, v3

    aput v2, v12, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    aput v13, v12, v5

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    aput v13, v12, v11

    aput v2, v12, v9

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 28
    .local v12, "translateYAnim":Landroid/animation/ValueAnimator;
    if-ne v4, v10, :cond_9d

    .line 29
    new-array v7, v7, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    aput v13, v7, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    aput v13, v7, v10

    aput v2, v7, v5

    aput v2, v7, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    aput v5, v7, v9

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 32
    :cond_9d
    const-wide/16 v9, 0x7d0

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    const/4 v5, -0x1

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 35
    new-instance v7, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$1;

    invoke-direct {v7, p0, v6}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$1;-><init>(Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;I)V

    invoke-virtual {p0, v8, v7}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    invoke-virtual {v12, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v12, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    invoke-virtual {v12, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 46
    new-instance v5, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$2;

    invoke-direct {v5, p0, v6}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$2;-><init>(Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;I)V

    invoke-virtual {p0, v12, v5}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .end local v6    # "index":I
    .end local v8    # "translateXAnim":Landroid/animation/ValueAnimator;
    .end local v12    # "translateYAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    .line 57
    .end local v4    # "i":I
    :cond_d6
    return-object v0
.end method

###### Class com.wang.avi.indicators.BallZigZagDeflectIndicator.AnonymousClass1 (com.wang.avi.indicators.BallZigZagDeflectIndicator$1)
.class Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$1;
.super Ljava/lang/Object;
.source "BallZigZagDeflectIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

    .line 35
    iput-object p1, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$1;->this$0:Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 38
    iget-object v0, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$1;->this$0:Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->translateX:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 39
    iget-object v0, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$1;->this$0:Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->postInvalidate()V

    .line 40
    return-void
.end method

###### Class com.wang.avi.indicators.BallZigZagDeflectIndicator.AnonymousClass2 (com.wang.avi.indicators.BallZigZagDeflectIndicator$2)
.class Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$2;
.super Ljava/lang/Object;
.source "BallZigZagDeflectIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

    .line 46
    iput-object p1, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$2;->this$0:Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 49
    iget-object v0, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$2;->this$0:Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->translateY:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator$2;->this$0:Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallZigZagDeflectIndicator;->postInvalidate()V

    .line 51
    return-void
.end method
