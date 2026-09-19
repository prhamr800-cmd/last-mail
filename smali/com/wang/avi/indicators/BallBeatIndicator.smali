###### Class com.wang.avi.indicators.BallBeatIndicator (com.wang.avi.indicators.BallBeatIndicator)
.class public Lcom/wang/avi/indicators/BallBeatIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallBeatIndicator.java"


# static fields
.field public static final ALPHA:I = 0xff

.field public static final SCALE:F = 1.0f


# instance fields
.field alphas:[I

.field private scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 20
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_14

    iput-object v1, p0, Lcom/wang/avi/indicators/BallBeatIndicator;->scaleFloats:[F

    .line 24
    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/wang/avi/indicators/BallBeatIndicator;->alphas:[I

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

.method static synthetic access$000(Lcom/wang/avi/indicators/BallBeatIndicator;)[F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/BallBeatIndicator;

    .line 14
    iget-object v0, p0, Lcom/wang/avi/indicators/BallBeatIndicator;->scaleFloats:[F

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 30
    const/high16 v0, 0x40800000    # 4.0f

    .line 31
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallBeatIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v1, v3

    .line 32
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallBeatIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v4, v1, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 33
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallBeatIndicator;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 34
    .local v4, "y":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    const/4 v6, 0x3

    if-ge v5, v6, :cond_51

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    mul-float v6, v1, v2

    int-to-float v7, v5

    mul-float v6, v6, v7

    add-float/2addr v6, v3

    int-to-float v7, v5

    mul-float v7, v7, v0

    add-float/2addr v6, v7

    .line 37
    .local v6, "translateX":F
    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    iget-object v7, p0, Lcom/wang/avi/indicators/BallBeatIndicator;->scaleFloats:[F

    aget v7, v7, v5

    iget-object v8, p0, Lcom/wang/avi/indicators/BallBeatIndicator;->scaleFloats:[F

    aget v8, v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 39
    iget-object v7, p0, Lcom/wang/avi/indicators/BallBeatIndicator;->alphas:[I

    aget v7, v7, v5

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v7, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    .end local v6    # "translateX":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 43
    .end local v5    # "i":I
    :cond_51
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_56

    .line 49
    .local v2, "delays":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_55

    .line 50
    move v4, v3

    .line 51
    .local v4, "index":I
    new-array v5, v1, [F

    fill-array-data v5, :array_60

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 52
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x2bc

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    aget v9, v2, v3

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 55
    new-instance v9, Lcom/wang/avi/indicators/BallBeatIndicator$1;

    invoke-direct {v9, p0, v4}, Lcom/wang/avi/indicators/BallBeatIndicator$1;-><init>(Lcom/wang/avi/indicators/BallBeatIndicator;I)V

    invoke-virtual {p0, v5, v9}, Lcom/wang/avi/indicators/BallBeatIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    new-array v9, v1, [I

    fill-array-data v9, :array_6a

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 64
    .local v9, "alphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v9, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    invoke-virtual {v9, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 66
    aget v6, v2, v3

    int-to-long v6, v6

    invoke-virtual {v9, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 67
    new-instance v6, Lcom/wang/avi/indicators/BallBeatIndicator$2;

    invoke-direct {v6, p0, v4}, Lcom/wang/avi/indicators/BallBeatIndicator$2;-><init>(Lcom/wang/avi/indicators/BallBeatIndicator;I)V

    invoke-virtual {p0, v9, v6}, Lcom/wang/avi/indicators/BallBeatIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    .end local v9    # "alphaAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 77
    .end local v3    # "i":I
    :cond_55
    return-object v0

    :array_56
    .array-data 4
        0x15e
        0x0
        0x15e
    .end array-data

    :array_60
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_6a
    .array-data 4
        0xff
        0x33
        0xff
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallBeatIndicator.AnonymousClass1 (com.wang.avi.indicators.BallBeatIndicator$1)
.class Lcom/wang/avi/indicators/BallBeatIndicator$1;
.super Ljava/lang/Object;
.source "BallBeatIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallBeatIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallBeatIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallBeatIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallBeatIndicator;

    .line 55
    iput-object p1, p0, Lcom/wang/avi/indicators/BallBeatIndicator$1;->this$0:Lcom/wang/avi/indicators/BallBeatIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallBeatIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 58
    iget-object v0, p0, Lcom/wang/avi/indicators/BallBeatIndicator$1;->this$0:Lcom/wang/avi/indicators/BallBeatIndicator;

    invoke-static {v0}, Lcom/wang/avi/indicators/BallBeatIndicator;->access$000(Lcom/wang/avi/indicators/BallBeatIndicator;)[F

    move-result-object v0

    iget v1, p0, Lcom/wang/avi/indicators/BallBeatIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 59
    iget-object v0, p0, Lcom/wang/avi/indicators/BallBeatIndicator$1;->this$0:Lcom/wang/avi/indicators/BallBeatIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallBeatIndicator;->postInvalidate()V

    .line 60
    return-void
.end method

###### Class com.wang.avi.indicators.BallBeatIndicator.AnonymousClass2 (com.wang.avi.indicators.BallBeatIndicator$2)
.class Lcom/wang/avi/indicators/BallBeatIndicator$2;
.super Ljava/lang/Object;
.source "BallBeatIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallBeatIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallBeatIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallBeatIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallBeatIndicator;

    .line 67
    iput-object p1, p0, Lcom/wang/avi/indicators/BallBeatIndicator$2;->this$0:Lcom/wang/avi/indicators/BallBeatIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallBeatIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 70
    iget-object v0, p0, Lcom/wang/avi/indicators/BallBeatIndicator$2;->this$0:Lcom/wang/avi/indicators/BallBeatIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallBeatIndicator;->alphas:[I

    iget v1, p0, Lcom/wang/avi/indicators/BallBeatIndicator$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 71
    iget-object v0, p0, Lcom/wang/avi/indicators/BallBeatIndicator$2;->this$0:Lcom/wang/avi/indicators/BallBeatIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallBeatIndicator;->postInvalidate()V

    .line 72
    return-void
.end method
