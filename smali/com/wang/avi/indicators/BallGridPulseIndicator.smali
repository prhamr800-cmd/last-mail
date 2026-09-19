###### Class com.wang.avi.indicators.BallGridPulseIndicator (com.wang.avi.indicators.BallGridPulseIndicator)
.class public Lcom/wang/avi/indicators/BallGridPulseIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallGridPulseIndicator.java"


# static fields
.field public static final ALPHA:I = 0xff

.field public static final SCALE:F = 1.0f


# instance fields
.field alphas:[I

.field scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 20
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_14

    iput-object v1, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->alphas:[I

    .line 30
    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->scaleFloats:[F

    return-void

    :array_14
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

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/high16 v3, 0x40800000    # 4.0f

    .line 45
    .local v3, "circleSpacing":F
    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v5, v5, v3

    sub-float/2addr v4, v5

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    .line 46
    .local v4, "radius":F
    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v4, v6

    add-float/2addr v7, v3

    sub-float/2addr v5, v7

    .line 47
    .local v5, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    mul-float v8, v4, v6

    add-float/2addr v8, v3

    sub-float/2addr v7, v8

    .line 49
    .local v7, "y":F
    const/4 v8, 0x0

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2f
    const/4 v10, 0x3

    if-ge v9, v10, :cond_78

    .line 50
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_33
    if-ge v11, v10, :cond_75

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    mul-float v12, v4, v6

    int-to-float v13, v11

    mul-float v12, v12, v13

    add-float/2addr v12, v5

    int-to-float v13, v11

    mul-float v13, v13, v3

    add-float/2addr v12, v13

    .line 53
    .local v12, "translateX":F
    mul-float v13, v4, v6

    int-to-float v14, v9

    mul-float v13, v13, v14

    add-float/2addr v13, v7

    int-to-float v14, v9

    mul-float v14, v14, v3

    add-float/2addr v13, v14

    .line 54
    .local v13, "translateY":F
    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    iget-object v14, v0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->scaleFloats:[F

    mul-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v11

    aget v14, v14, v15

    iget-object v15, v0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->scaleFloats:[F

    mul-int/lit8 v16, v9, 0x3

    add-int v16, v16, v11

    aget v15, v15, v16

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 56
    iget-object v14, v0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->alphas:[I

    mul-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v11

    aget v14, v14, v15

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    const/4 v14, 0x0

    invoke-virtual {v1, v14, v14, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    .end local v12    # "translateX":F
    .end local v13    # "translateY":F
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 49
    .end local v11    # "j":I
    :cond_75
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    .line 61
    .end local v9    # "i":I
    :cond_78
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

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_62

    .line 67
    .local v2, "durations":[I
    new-array v3, v1, [I

    fill-array-data v3, :array_78

    .line 69
    .local v3, "delays":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v1, :cond_61

    .line 70
    move v5, v4

    .line 71
    .local v5, "index":I
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_8e

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 72
    .local v6, "scaleAnim":Landroid/animation/ValueAnimator;
    aget v7, v2, v4

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 74
    aget v8, v3, v4

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 75
    new-instance v8, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;

    invoke-direct {v8, p0, v5}, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;-><init>(Lcom/wang/avi/indicators/BallGridPulseIndicator;I)V

    invoke-virtual {p0, v6, v8}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_98

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 84
    .local v8, "alphaAnim":Landroid/animation/ValueAnimator;
    aget v9, v2, v4

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    invoke-virtual {v8, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 86
    aget v7, v3, v4

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 87
    new-instance v7, Lcom/wang/avi/indicators/BallGridPulseIndicator$2;

    invoke-direct {v7, p0, v5}, Lcom/wang/avi/indicators/BallGridPulseIndicator$2;-><init>(Lcom/wang/avi/indicators/BallGridPulseIndicator;I)V

    invoke-virtual {p0, v8, v7}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v5    # "index":I
    .end local v6    # "scaleAnim":Landroid/animation/ValueAnimator;
    .end local v8    # "alphaAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 97
    .end local v4    # "i":I
    :cond_61
    return-object v0

    :array_62
    .array-data 4
        0x2d0
        0x3fc
        0x500
        0x58c
        0x5aa
        0x49c
        0x366
        0x5aa
        0x424
    .end array-data

    :array_78
    .array-data 4
        -0x3c
        0xfa
        -0xaa
        0x1e0
        0x136
        0x1e
        0x1cc
        0x30c
        0x1c2
    .end array-data

    :array_8e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_98
    .array-data 4
        0xff
        0xd2
        0x7a
        0xff
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallGridPulseIndicator.AnonymousClass1 (com.wang.avi.indicators.BallGridPulseIndicator$1)
.class Lcom/wang/avi/indicators/BallGridPulseIndicator$1;
.super Ljava/lang/Object;
.source "BallGridPulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallGridPulseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallGridPulseIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallGridPulseIndicator;

    .line 75
    iput-object p1, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 78
    iget-object v0, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->scaleFloats:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;->this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->postInvalidate()V

    .line 80
    return-void
.end method

###### Class com.wang.avi.indicators.BallGridPulseIndicator.AnonymousClass2 (com.wang.avi.indicators.BallGridPulseIndicator$2)
.class Lcom/wang/avi/indicators/BallGridPulseIndicator$2;
.super Ljava/lang/Object;
.source "BallGridPulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallGridPulseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallGridPulseIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallGridPulseIndicator;

    .line 87
    iput-object p1, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$2;->this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 90
    iget-object v0, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$2;->this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->alphas:[I

    iget v1, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator$2;->this$0:Lcom/wang/avi/indicators/BallGridPulseIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->postInvalidate()V

    .line 92
    return-void
.end method
