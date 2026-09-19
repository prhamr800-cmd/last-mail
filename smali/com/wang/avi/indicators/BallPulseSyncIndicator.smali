###### Class com.wang.avi.indicators.BallPulseSyncIndicator (com.wang.avi.indicators.BallPulseSyncIndicator)
.class public Lcom/wang/avi/indicators/BallPulseSyncIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallPulseSyncIndicator.java"


# instance fields
.field translateYFloats:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->translateYFloats:[F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 20
    const/high16 v0, 0x40800000    # 4.0f

    .line 21
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v1, v3

    .line 22
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v4, v1, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 23
    .local v3, "x":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    const/4 v5, 0x3

    if-ge v4, v5, :cond_3c

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    mul-float v5, v1, v2

    int-to-float v6, v4

    mul-float v5, v5, v6

    add-float/2addr v5, v3

    int-to-float v6, v4

    mul-float v6, v6, v0

    add-float/2addr v5, v6

    .line 26
    .local v5, "translateX":F
    iget-object v6, p0, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->translateYFloats:[F

    aget v6, v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 23
    .end local v5    # "translateX":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 30
    .end local v4    # "i":I
    :cond_3c
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

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/high16 v1, 0x40800000    # 4.0f

    .line 36
    .local v1, "circleSpacing":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    sub-float/2addr v2, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v2, v4

    .line 37
    .local v2, "radius":F
    const/4 v4, 0x3

    new-array v5, v4, [I

    fill-array-data v5, :array_60

    .line 38
    .local v5, "delays":[I
    const/4 v6, 0x0

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1c
    if-ge v7, v4, :cond_5f

    .line 39
    move v8, v7

    .line 40
    .local v8, "index":I
    new-array v9, v4, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getHeight()I

    move-result v10

    const/4 v11, 0x2

    div-int/2addr v10, v11

    int-to-float v10, v10

    aput v10, v9, v6

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getHeight()I

    move-result v10

    div-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v12, v2, v3

    sub-float/2addr v10, v12

    const/4 v12, 0x1

    aput v10, v9, v12

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getHeight()I

    move-result v10

    div-int/2addr v10, v11

    int-to-float v10, v10

    aput v10, v9, v11

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 41
    .local v9, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0x258

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 43
    aget v10, v5, v7

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 44
    new-instance v10, Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;

    invoke-direct {v10, p0, v8}, Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;-><init>(Lcom/wang/avi/indicators/BallPulseSyncIndicator;I)V

    invoke-virtual {p0, v9, v10}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v8    # "index":I
    .end local v9    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 53
    .end local v7    # "i":I
    :cond_5f
    return-object v0

    :array_60
    .array-data 4
        0x46
        0x8c
        0xd2
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallPulseSyncIndicator.AnonymousClass1 (com.wang.avi.indicators.BallPulseSyncIndicator$1)
.class Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;
.super Ljava/lang/Object;
.source "BallPulseSyncIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallPulseSyncIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallPulseSyncIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallPulseSyncIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallPulseSyncIndicator;

    .line 44
    iput-object p1, p0, Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;->this$0:Lcom/wang/avi/indicators/BallPulseSyncIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 47
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;->this$0:Lcom/wang/avi/indicators/BallPulseSyncIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->translateYFloats:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 48
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;->this$0:Lcom/wang/avi/indicators/BallPulseSyncIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->postInvalidate()V

    .line 49
    return-void
.end method
