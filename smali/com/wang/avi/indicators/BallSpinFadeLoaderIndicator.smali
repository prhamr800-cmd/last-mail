###### Class com.wang.avi.indicators.BallSpinFadeLoaderIndicator (com.wang.avi.indicators.BallSpinFadeLoaderIndicator)
.class public Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallSpinFadeLoaderIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;
    }
.end annotation


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
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_14

    iput-object v1, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    .line 29
    new-array v0, v0, [I

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->alphas:[I

    return-void

    :array_14
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_28
    .array-data 4
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
.method circleAt(IIFD)Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "radius"    # F
    .param p4, "angle"    # D

    .line 98
    div-int/lit8 v0, p1, 0x2

    int-to-double v0, v0

    float-to-double v2, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 99
    .local v0, "x":F
    div-int/lit8 v1, p2, 0x2

    int-to-double v1, v1

    float-to-double v3, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 100
    .local v1, "y":F
    new-instance v2, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;

    invoke-direct {v2, p0, v0, v1}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;-><init>(Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;FF)V

    return-object v2
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 42
    .local v0, "radius":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    const/16 v2, 0x8

    if-ge v1, v2, :cond_53

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v6, v2, v0

    int-to-double v2, v1

    const-wide v7, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->circleAt(IIFD)Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;

    move-result-object v2

    .line 45
    .local v2, "point":Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;
    iget v3, v2, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;->x:F

    iget v4, v2, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget-object v3, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v4, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 47
    iget-object v3, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->alphas:[I

    aget v3, v3, v1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    .end local v2    # "point":Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 51
    .end local v1    # "i":I
    :cond_53
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

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_5a

    .line 57
    .local v1, "delays":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    const/16 v3, 0x8

    if-ge v2, v3, :cond_59

    .line 58
    move v3, v2

    .line 59
    .local v3, "index":I
    const/4 v4, 0x3

    new-array v5, v4, [F

    fill-array-data v5, :array_70

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 60
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 62
    aget v9, v1, v2

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 63
    new-instance v9, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;

    invoke-direct {v9, p0, v3}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;-><init>(Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;I)V

    invoke-virtual {p0, v5, v9}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    new-array v4, v4, [I

    fill-array-data v4, :array_7a

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 72
    .local v4, "alphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 74
    aget v6, v1, v2

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 75
    new-instance v6, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;

    invoke-direct {v6, p0, v3}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;-><init>(Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;I)V

    invoke-virtual {p0, v4, v6}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v3    # "index":I
    .end local v4    # "alphaAnim":Landroid/animation/ValueAnimator;
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 85
    .end local v2    # "i":I
    :cond_59
    return-object v0

    :array_5a
    .array-data 4
        0x0
        0x78
        0xf0
        0x168
        0x1e0
        0x258
        0x2d0
        0x30c
        0x348
    .end array-data

    :array_70
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_7a
    .array-data 4
        0xff
        0x4d
        0xff
    .end array-data
.end method

###### Class com.wang.avi.indicators.BallSpinFadeLoaderIndicator.AnonymousClass1 (com.wang.avi.indicators.BallSpinFadeLoaderIndicator$1)
.class Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;
.super Ljava/lang/Object;
.source "BallSpinFadeLoaderIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

    .line 63
    iput-object p1, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;->this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 66
    iget-object v0, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;->this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    iget v1, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;->this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->postInvalidate()V

    .line 68
    return-void
.end method

###### Class com.wang.avi.indicators.BallSpinFadeLoaderIndicator.AnonymousClass2 (com.wang.avi.indicators.BallSpinFadeLoaderIndicator$2)
.class Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;
.super Ljava/lang/Object;
.source "BallSpinFadeLoaderIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

    .line 75
    iput-object p1, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;->this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 78
    iget-object v0, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;->this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->alphas:[I

    iget v1, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;->this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->postInvalidate()V

    .line 80
    return-void
.end method

###### Class com.wang.avi.indicators.BallSpinFadeLoaderIndicator.Point (com.wang.avi.indicators.BallSpinFadeLoaderIndicator$Point)
.class final Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;
.super Ljava/lang/Object;
.source "BallSpinFadeLoaderIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Point"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;FF)V
    .registers 4
    .param p1, "this$0"    # Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 107
    iput-object p1, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;->this$0:Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p2, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;->x:F

    .line 109
    iput p3, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;->y:F

    .line 110
    return-void
.end method
