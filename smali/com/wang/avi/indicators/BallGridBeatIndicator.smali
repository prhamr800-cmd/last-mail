###### Class com.wang.avi.indicators.BallGridBeatIndicator (com.wang.avi.indicators.BallGridBeatIndicator)
.class public Lcom/wang/avi/indicators/BallGridBeatIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallGridBeatIndicator.java"


# static fields
.field public static final ALPHA:I = 0xff


# instance fields
.field alphas:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/wang/avi/indicators/BallGridBeatIndicator;->alphas:[I

    return-void

    nop

    :array_e
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 30
    const/high16 v0, 0x40800000    # 4.0f

    .line 31
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallGridBeatIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    .line 32
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallGridBeatIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    add-float/2addr v4, v0

    sub-float/2addr v2, v4

    .line 33
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallGridBeatIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v5, v1, v3

    add-float/2addr v5, v0

    sub-float/2addr v4, v5

    .line 35
    .local v4, "y":F
    const/4 v5, 0x0

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    const/4 v7, 0x3

    if-ge v6, v7, :cond_60

    .line 36
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2d
    if-ge v8, v7, :cond_5d

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    mul-float v9, v1, v3

    int-to-float v10, v8

    mul-float v9, v9, v10

    add-float/2addr v9, v2

    int-to-float v10, v8

    mul-float v10, v10, v0

    add-float/2addr v9, v10

    .line 39
    .local v9, "translateX":F
    mul-float v10, v1, v3

    int-to-float v11, v6

    mul-float v10, v10, v11

    add-float/2addr v10, v4

    int-to-float v11, v6

    mul-float v11, v11, v0

    add-float/2addr v10, v11

    .line 40
    .local v10, "translateY":F
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    iget-object v11, p0, Lcom/wang/avi/indicators/BallGridBeatIndicator;->alphas:[I

    mul-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v8

    aget v11, v11, v12

    invoke-virtual {p2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 42
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v11, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 36
    .end local v9    # "translateX":F
    .end local v10    # "translateY":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 35
    .end local v8    # "j":I
    :cond_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 46
    .end local v6    # "i":I
    :cond_60
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_3e

    .line 53
    .local v2, "durations":[I
    new-array v3, v1, [I

    fill-array-data v3, :array_54

    .line 55
    .local v3, "delays":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v1, :cond_3d

    .line 56
    move v5, v4

    .line 57
    .local v5, "index":I
    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_6a

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 58
    .local v6, "alphaAnim":Landroid/animation/ValueAnimator;
    aget v7, v2, v4

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 60
    aget v7, v3, v4

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 61
    new-instance v7, Lcom/wang/avi/indicators/BallGridBeatIndicator$1;

    invoke-direct {v7, p0, v5}, Lcom/wang/avi/indicators/BallGridBeatIndicator$1;-><init>(Lcom/wang/avi/indicators/BallGridBeatIndicator;I)V

    invoke-virtual {p0, v6, v7}, Lcom/wang/avi/indicators/BallGridBeatIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v5    # "index":I
    .end local v6    # "alphaAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 70
    .end local v4    # "i":I
    :cond_3d
    return-object v0

    :array_3e
    .array-data 4
        0x3c0
        0x3a2
        0x4a6
        0x46a
        0x53c
        0x3ac
        0x4b0
        0x334
        0x4a6
    .end array-data

    :array_54
    .array-data 4
        0x168
        0x190
        0x2a8
        0x19a
        0x2c6
        -0x96
        -0x78
        0xa
        0x140
    .end array-data

    :array_6a
    .array-data 4
        0xff
        0xa8
        0xff
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallGridBeatIndicator.AnonymousClass1 (com.wang.avi.indicators.BallGridBeatIndicator$1)
.class Lcom/wang/avi/indicators/BallGridBeatIndicator$1;
.super Ljava/lang/Object;
.source "BallGridBeatIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallGridBeatIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallGridBeatIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallGridBeatIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallGridBeatIndicator;

    .line 61
    iput-object p1, p0, Lcom/wang/avi/indicators/BallGridBeatIndicator$1;->this$0:Lcom/wang/avi/indicators/BallGridBeatIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallGridBeatIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 64
    iget-object v0, p0, Lcom/wang/avi/indicators/BallGridBeatIndicator$1;->this$0:Lcom/wang/avi/indicators/BallGridBeatIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallGridBeatIndicator;->alphas:[I

    iget v1, p0, Lcom/wang/avi/indicators/BallGridBeatIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/wang/avi/indicators/BallGridBeatIndicator$1;->this$0:Lcom/wang/avi/indicators/BallGridBeatIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallGridBeatIndicator;->postInvalidate()V

    .line 66
    return-void
.end method
