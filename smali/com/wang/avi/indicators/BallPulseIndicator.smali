###### Class com.wang.avi.indicators.BallPulseIndicator (com.wang.avi.indicators.BallPulseIndicator)
.class public Lcom/wang/avi/indicators/BallPulseIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallPulseIndicator.java"


# static fields
.field public static final SCALE:F = 1.0f


# instance fields
.field private scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/wang/avi/indicators/BallPulseIndicator;->scaleFloats:[F

    return-void

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/wang/avi/indicators/BallPulseIndicator;)[F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/BallPulseIndicator;

    .line 14
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseIndicator;->scaleFloats:[F

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 27
    const/high16 v0, 0x40800000    # 4.0f

    .line 28
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseIndicator;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v1, v3

    .line 29
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v4, v1, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 30
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseIndicator;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 31
    .local v4, "y":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2a
    const/4 v6, 0x3

    if-ge v5, v6, :cond_52

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    mul-float v6, v1, v2

    int-to-float v7, v5

    mul-float v6, v6, v7

    add-float/2addr v6, v3

    int-to-float v7, v5

    mul-float v7, v7, v0

    add-float/2addr v6, v7

    .line 34
    .local v6, "translateX":F
    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    iget-object v7, p0, Lcom/wang/avi/indicators/BallPulseIndicator;->scaleFloats:[F

    aget v7, v7, v5

    iget-object v8, p0, Lcom/wang/avi/indicators/BallPulseIndicator;->scaleFloats:[F

    aget v8, v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 36
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v7, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    .end local v6    # "translateX":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 39
    .end local v5    # "i":I
    :cond_52
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

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_36

    .line 45
    .local v2, "delays":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_35

    .line 46
    move v4, v3

    .line 48
    .local v4, "index":I
    new-array v5, v1, [F

    fill-array-data v5, :array_40

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 50
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x2ee

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 52
    aget v6, v2, v3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 54
    new-instance v6, Lcom/wang/avi/indicators/BallPulseIndicator$1;

    invoke-direct {v6, p0, v4}, Lcom/wang/avi/indicators/BallPulseIndicator$1;-><init>(Lcom/wang/avi/indicators/BallPulseIndicator;I)V

    invoke-virtual {p0, v5, v6}, Lcom/wang/avi/indicators/BallPulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 63
    .end local v3    # "i":I
    :cond_35
    return-object v0

    :array_36
    .array-data 4
        0x78
        0xf0
        0x168
    .end array-data

    :array_40
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallPulseIndicator.AnonymousClass1 (com.wang.avi.indicators.BallPulseIndicator$1)
.class Lcom/wang/avi/indicators/BallPulseIndicator$1;
.super Ljava/lang/Object;
.source "BallPulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallPulseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallPulseIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallPulseIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallPulseIndicator;

    .line 54
    iput-object p1, p0, Lcom/wang/avi/indicators/BallPulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallPulseIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallPulseIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 57
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallPulseIndicator;

    invoke-static {v0}, Lcom/wang/avi/indicators/BallPulseIndicator;->access$000(Lcom/wang/avi/indicators/BallPulseIndicator;)[F

    move-result-object v0

    iget v1, p0, Lcom/wang/avi/indicators/BallPulseIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallPulseIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallPulseIndicator;->postInvalidate()V

    .line 59
    return-void
.end method
