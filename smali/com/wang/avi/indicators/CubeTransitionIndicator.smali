###### Class com.wang.avi.indicators.CubeTransitionIndicator (com.wang.avi.indicators.CubeTransitionIndicator)
.class public Lcom/wang/avi/indicators/CubeTransitionIndicator;
.super Lcom/wang/avi/Indicator;
.source "CubeTransitionIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat:F

.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    .line 18
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateX:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateY:[F

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 23
    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    .line 24
    .local v0, "rWidth":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    .line 25
    .local v1, "rHeight":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    const/4 v3, 0x2

    if-ge v2, v3, :cond_44

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    iget-object v3, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateX:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateY:[F

    aget v4, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    iget v3, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->degrees:F

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 29
    iget v3, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->scaleFloat:F

    iget v4, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 30
    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    neg-float v6, v1

    div-float/2addr v6, v5

    div-float v7, v0, v5

    div-float v5, v1, v5

    invoke-direct {v3, v4, v6, v7, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 31
    .local v3, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 25
    .end local v3    # "rectF":Landroid/graphics/RectF;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 34
    .end local v2    # "i":I
    :cond_44
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 38
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v2

    const/4 v3, 0x5

    div-int/2addr v2, v3

    int-to-float v2, v2

    .line 40
    .local v2, "startX":F
    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v4, v4

    .line 41
    .local v4, "startY":F
    const/4 v5, 0x0

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_16
    const-wide/16 v8, 0x640

    const/4 v10, 0x2

    if-ge v6, v10, :cond_e4

    .line 42
    move v11, v6

    .line 43
    .local v11, "index":I
    iget-object v12, v0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateX:[F

    aput v2, v12, v11

    .line 44
    new-array v12, v3, [F

    aput v2, v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    const/4 v14, 0x1

    aput v13, v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    aput v13, v12, v10

    const/4 v13, 0x3

    aput v2, v12, v13

    const/4 v15, 0x4

    aput v2, v12, v15

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 45
    .local v12, "translationXAnim":Landroid/animation/ValueAnimator;
    if-ne v6, v14, :cond_63

    .line 46
    new-array v7, v3, [F

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    aput v3, v7, v5

    aput v2, v7, v14

    aput v2, v7, v10

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    aput v3, v7, v13

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    aput v3, v7, v15

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 48
    :cond_63
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v12, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    invoke-virtual {v12, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    const/4 v3, -0x1

    invoke-virtual {v12, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 51
    new-instance v3, Lcom/wang/avi/indicators/CubeTransitionIndicator$1;

    invoke-direct {v3, v0, v11}, Lcom/wang/avi/indicators/CubeTransitionIndicator$1;-><init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;I)V

    invoke-virtual {v12, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    iget-object v3, v0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateY:[F

    aput v4, v3, v11

    .line 59
    const/4 v3, 0x5

    new-array v7, v3, [F

    aput v4, v7, v5

    aput v4, v7, v14

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    aput v3, v7, v10

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    aput v3, v7, v13

    aput v4, v7, v15

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 60
    .local v3, "translationYAnim":Landroid/animation/ValueAnimator;
    if-ne v6, v14, :cond_c0

    .line 61
    const/4 v7, 0x5

    new-array v8, v7, [F

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    aput v7, v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    aput v7, v8, v14

    aput v4, v8, v10

    aput v4, v8, v13

    invoke-virtual/range {p0 .. p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    aput v7, v8, v15

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 63
    :cond_c0
    const-wide/16 v7, 0x640

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 66
    new-instance v7, Lcom/wang/avi/indicators/CubeTransitionIndicator$2;

    invoke-direct {v7, v0, v11}, Lcom/wang/avi/indicators/CubeTransitionIndicator$2;-><init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;I)V

    invoke-virtual {v0, v3, v7}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v3    # "translationYAnim":Landroid/animation/ValueAnimator;
    .end local v11    # "index":I
    .end local v12    # "translationXAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x5

    goto/16 :goto_16

    .line 78
    .end local v6    # "i":I
    :cond_e4
    const/4 v3, 0x5

    new-array v5, v3, [F

    fill-array-data v5, :array_132

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 79
    .local v3, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x640

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 82
    new-instance v5, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;

    invoke-direct {v5, v0}, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;-><init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;)V

    invoke-virtual {v0, v3, v5}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    const/4 v5, 0x5

    new-array v5, v5, [F

    fill-array-data v5, :array_140

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 91
    .local v5, "rotateAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x640

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 94
    new-instance v6, Lcom/wang/avi/indicators/CubeTransitionIndicator$4;

    invoke-direct {v6, v0}, Lcom/wang/avi/indicators/CubeTransitionIndicator$4;-><init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;)V

    invoke-virtual {v0, v5, v6}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-object v1

    nop

    :array_132
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_140
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
        0x44070000    # 540.0f
        0x44340000    # 720.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.CubeTransitionIndicator.AnonymousClass1 (com.wang.avi.indicators.CubeTransitionIndicator$1)
.class Lcom/wang/avi/indicators/CubeTransitionIndicator$1;
.super Ljava/lang/Object;
.source "CubeTransitionIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/CubeTransitionIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/CubeTransitionIndicator;

    .line 51
    iput-object p1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$1;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 54
    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$1;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateX:[F

    iget v1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$1;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->postInvalidate()V

    .line 56
    return-void
.end method

###### Class com.wang.avi.indicators.CubeTransitionIndicator.AnonymousClass2 (com.wang.avi.indicators.CubeTransitionIndicator$2)
.class Lcom/wang/avi/indicators/CubeTransitionIndicator$2;
.super Ljava/lang/Object;
.source "CubeTransitionIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/CubeTransitionIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/CubeTransitionIndicator;

    .line 66
    iput-object p1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$2;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 69
    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$2;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateY:[F

    iget v1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 70
    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$2;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->postInvalidate()V

    .line 71
    return-void
.end method

###### Class com.wang.avi.indicators.CubeTransitionIndicator.AnonymousClass3 (com.wang.avi.indicators.CubeTransitionIndicator$3)
.class Lcom/wang/avi/indicators/CubeTransitionIndicator$3;
.super Ljava/lang/Object;
.source "CubeTransitionIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/CubeTransitionIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/CubeTransitionIndicator;

    .line 82
    iput-object p1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 85
    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->scaleFloat:F

    .line 86
    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->postInvalidate()V

    .line 87
    return-void
.end method

###### Class com.wang.avi.indicators.CubeTransitionIndicator.AnonymousClass4 (com.wang.avi.indicators.CubeTransitionIndicator$4)
.class Lcom/wang/avi/indicators/CubeTransitionIndicator$4;
.super Ljava/lang/Object;
.source "CubeTransitionIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/CubeTransitionIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/CubeTransitionIndicator;

    .line 94
    iput-object p1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$4;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 97
    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$4;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->degrees:F

    .line 98
    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator$4;->this$0:Lcom/wang/avi/indicators/CubeTransitionIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->postInvalidate()V

    .line 99
    return-void
.end method
