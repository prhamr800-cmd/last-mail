###### Class com.wang.avi.indicators.LineScalePartyIndicator (com.wang.avi.indicators.LineScalePartyIndicator)
.class public Lcom/wang/avi/indicators/LineScalePartyIndicator;
.super Lcom/wang/avi/Indicator;
.source "LineScalePartyIndicator.java"


# static fields
.field public static final SCALE:F = 1.0f


# instance fields
.field scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator;->scaleFloats:[F

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
    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScalePartyIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x9

    int-to-float v0, v0

    .line 28
    .local v0, "translateX":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScalePartyIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 29
    .local v1, "translateY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    const/4 v3, 0x4

    if-ge v2, v3, :cond_52

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
    iget-object v3, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator;->scaleFloats:[F

    aget v3, v3, v2

    iget-object v5, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator;->scaleFloats:[F

    aget v5, v5, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    new-instance v3, Landroid/graphics/RectF;

    neg-float v5, v0

    div-float/2addr v5, v4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScalePartyIndicator;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x40200000    # 2.5f

    div-float/2addr v6, v7

    div-float v4, v0, v4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScalePartyIndicator;->getHeight()I

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
    :cond_52
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

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x4

    new-array v2, v1, [J

    fill-array-data v2, :array_3c

    .line 44
    .local v2, "durations":[J
    new-array v3, v1, [J

    fill-array-data v3, :array_50

    .line 45
    .local v3, "delays":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v1, :cond_3a

    .line 46
    move v5, v4

    .line 47
    .local v5, "index":I
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_64

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 48
    .local v6, "scaleAnim":Landroid/animation/ValueAnimator;
    aget-wide v7, v2, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 50
    aget-wide v7, v3, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 51
    new-instance v7, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;

    invoke-direct {v7, p0, v5}, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;-><init>(Lcom/wang/avi/indicators/LineScalePartyIndicator;I)V

    invoke-virtual {p0, v6, v7}, Lcom/wang/avi/indicators/LineScalePartyIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v5    # "index":I
    .end local v6    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 60
    .end local v4    # "i":I
    :cond_3a
    return-object v0

    nop

    :array_3c
    .array-data 8
        0x4ec
        0x1ae
        0x3f2
        0x2da
    .end array-data

    :array_50
    .array-data 8
        0x302
        0x122
        0x118
        0x2e4
    .end array-data

    :array_64
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.LineScalePartyIndicator.AnonymousClass1 (com.wang.avi.indicators.LineScalePartyIndicator$1)
.class Lcom/wang/avi/indicators/LineScalePartyIndicator$1;
.super Ljava/lang/Object;
.source "LineScalePartyIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/LineScalePartyIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/LineScalePartyIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/LineScalePartyIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/LineScalePartyIndicator;

    .line 51
    iput-object p1, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScalePartyIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 54
    iget-object v0, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScalePartyIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/LineScalePartyIndicator;->scaleFloats:[F

    iget v1, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/wang/avi/indicators/LineScalePartyIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScalePartyIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/LineScalePartyIndicator;->postInvalidate()V

    .line 56
    return-void
.end method
