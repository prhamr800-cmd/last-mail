###### Class com.wang.avi.indicators.LineScaleIndicator (com.wang.avi.indicators.LineScaleIndicator)
.class public Lcom/wang/avi/indicators/LineScaleIndicator;
.super Lcom/wang/avi/Indicator;
.source "LineScaleIndicator.java"


# static fields
.field public static final SCALE:F = 1.0f


# instance fields
.field scaleYFloats:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/wang/avi/indicators/LineScaleIndicator;->scaleYFloats:[F

    return-void

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xb

    int-to-float v0, v0

    .line 28
    .local v0, "translateX":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 29
    .local v1, "translateY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    const/4 v3, 0x5

    if-ge v2, v3, :cond_50

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v3, v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/wang/avi/indicators/LineScaleIndicator;->scaleYFloats:[F

    aget v5, v5, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    new-instance v3, Landroid/graphics/RectF;

    neg-float v5, v0

    div-float/2addr v5, v4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x40200000    # 2.5f

    div-float/2addr v6, v7

    div-float v4, v0, v4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-direct {v3, v5, v6, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    .local v3, "rectF":Landroid/graphics/RectF;
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p1, v3, v4, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    .end local v3    # "rectF":Landroid/graphics/RectF;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 37
    .end local v2    # "i":I
    :cond_50
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x5

    new-array v2, v1, [J

    fill-array-data v2, :array_36

    .line 43
    .local v2, "delays":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_35

    .line 44
    move v4, v3

    .line 45
    .local v4, "index":I
    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_4e

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 46
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 48
    aget-wide v6, v2, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 49
    new-instance v6, Lcom/wang/avi/indicators/LineScaleIndicator$1;

    invoke-direct {v6, p0, v4}, Lcom/wang/avi/indicators/LineScaleIndicator$1;-><init>(Lcom/wang/avi/indicators/LineScaleIndicator;I)V

    invoke-virtual {p0, v5, v6}, Lcom/wang/avi/indicators/LineScaleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 58
    .end local v3    # "i":I
    :cond_35
    return-object v0

    :array_36
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
    .end array-data

    :array_4e
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.LineScaleIndicator.AnonymousClass1 (com.wang.avi.indicators.LineScaleIndicator$1)
.class Lcom/wang/avi/indicators/LineScaleIndicator$1;
.super Ljava/lang/Object;
.source "LineScaleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/LineScaleIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/LineScaleIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/LineScaleIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/LineScaleIndicator;

    .line 49
    iput-object p1, p0, Lcom/wang/avi/indicators/LineScaleIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScaleIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/LineScaleIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 52
    iget-object v0, p0, Lcom/wang/avi/indicators/LineScaleIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScaleIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/LineScaleIndicator;->scaleYFloats:[F

    iget v1, p0, Lcom/wang/avi/indicators/LineScaleIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/wang/avi/indicators/LineScaleIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScaleIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/LineScaleIndicator;->postInvalidate()V

    .line 54
    return-void
.end method
