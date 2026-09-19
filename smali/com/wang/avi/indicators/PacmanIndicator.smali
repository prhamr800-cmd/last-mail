###### Class com.wang.avi.indicators.PacmanIndicator (com.wang.avi.indicators.PacmanIndicator)
.class public Lcom/wang/avi/indicators/PacmanIndicator;
.super Lcom/wang/avi/Indicator;
.source "PacmanIndicator.java"


# instance fields
.field private alpha:I

.field private degrees1:F

.field private degrees2:F

.field private translateX:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/indicators/PacmanIndicator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/PacmanIndicator;
    .param p1, "x1"    # F

    .line 16
    iput p1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->translateX:F

    return p1
.end method

.method static synthetic access$102(Lcom/wang/avi/indicators/PacmanIndicator;I)I
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/PacmanIndicator;
    .param p1, "x1"    # I

    .line 16
    iput p1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->alpha:I

    return p1
.end method

.method static synthetic access$202(Lcom/wang/avi/indicators/PacmanIndicator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/PacmanIndicator;
    .param p1, "x1"    # F

    .line 16
    iput p1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->degrees1:F

    return p1
.end method

.method static synthetic access$302(Lcom/wang/avi/indicators/PacmanIndicator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/indicators/PacmanIndicator;
    .param p1, "x1"    # F

    .line 16
    iput p1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->degrees2:F

    return p1
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xb

    int-to-float v0, v0

    .line 56
    .local v0, "radius":F
    iget v1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->alpha:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    iget v1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->translateX:F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    return-void
.end method

.method private drawPacman(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 31
    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v8, v0

    .line 32
    .local v8, "x":F
    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v9, v0

    .line 34
    .local v9, "y":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 37
    iget v0, p0, Lcom/wang/avi/indicators/PacmanIndicator;->degrees1:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 38
    const/16 v6, 0xff

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    neg-float v0, v8

    const v7, 0x3fd9999a    # 1.7f

    div-float/2addr v0, v7

    neg-float v2, v9

    div-float/2addr v2, v7

    div-float v3, v8, v7

    div-float v4, v9, v7

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 40
    .local v1, "rectF1":Landroid/graphics/RectF;
    const/4 v2, 0x0

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget v0, p0, Lcom/wang/avi/indicators/PacmanIndicator;->degrees2:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 47
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    new-instance v3, Landroid/graphics/RectF;

    neg-float v0, v8

    div-float/2addr v0, v7

    neg-float v2, v9

    div-float/2addr v2, v7

    div-float v4, v8, v7

    div-float v5, v9, v7

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 49
    .local v3, "rectF2":Landroid/graphics/RectF;
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43870000    # 270.0f

    const/4 v6, 0x1

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/wang/avi/indicators/PacmanIndicator;->drawPacman(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/wang/avi/indicators/PacmanIndicator;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 28
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    .line 64
    .local v1, "startT":F
    const/4 v2, 0x2

    new-array v3, v2, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 65
    .local v3, "translationAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x28a

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 68
    new-instance v7, Lcom/wang/avi/indicators/PacmanIndicator$1;

    invoke-direct {v7, p0}, Lcom/wang/avi/indicators/PacmanIndicator$1;-><init>(Lcom/wang/avi/indicators/PacmanIndicator;)V

    invoke-virtual {p0, v3, v7}, Lcom/wang/avi/indicators/PacmanIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 76
    new-array v2, v2, [I

    fill-array-data v2, :array_92

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 77
    .local v2, "alphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 79
    new-instance v7, Lcom/wang/avi/indicators/PacmanIndicator$2;

    invoke-direct {v7, p0}, Lcom/wang/avi/indicators/PacmanIndicator$2;-><init>(Lcom/wang/avi/indicators/PacmanIndicator;)V

    invoke-virtual {p0, v2, v7}, Lcom/wang/avi/indicators/PacmanIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    const/4 v7, 0x3

    new-array v8, v7, [F

    fill-array-data v8, :array_9a

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 88
    .local v8, "rotateAnim1":Landroid/animation/ValueAnimator;
    invoke-virtual {v8, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    invoke-virtual {v8, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 90
    new-instance v9, Lcom/wang/avi/indicators/PacmanIndicator$3;

    invoke-direct {v9, p0}, Lcom/wang/avi/indicators/PacmanIndicator$3;-><init>(Lcom/wang/avi/indicators/PacmanIndicator;)V

    invoke-virtual {p0, v8, v9}, Lcom/wang/avi/indicators/PacmanIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 98
    new-array v7, v7, [F

    fill-array-data v7, :array_a4

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 99
    .local v7, "rotateAnim2":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 101
    new-instance v4, Lcom/wang/avi/indicators/PacmanIndicator$4;

    invoke-direct {v4, p0}, Lcom/wang/avi/indicators/PacmanIndicator$4;-><init>(Lcom/wang/avi/indicators/PacmanIndicator;)V

    invoke-virtual {p0, v7, v4}, Lcom/wang/avi/indicators/PacmanIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-object v0

    nop

    :array_92
    .array-data 4
        0xff
        0x7a
    .end array-data

    :array_9a
    .array-data 4
        0x0
        0x42340000    # 45.0f
        0x0
    .end array-data

    :array_a4
    .array-data 4
        0x0
        -0x3dcc0000    # -45.0f
        0x0
    .end array-data
.end method

###### Class com.wang.avi.indicators.PacmanIndicator.AnonymousClass1 (com.wang.avi.indicators.PacmanIndicator$1)
.class Lcom/wang/avi/indicators/PacmanIndicator$1;
.super Ljava/lang/Object;
.source "PacmanIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/PacmanIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/PacmanIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/PacmanIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/PacmanIndicator;

    .line 68
    iput-object p1, p0, Lcom/wang/avi/indicators/PacmanIndicator$1;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 71
    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$1;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/PacmanIndicator;->access$002(Lcom/wang/avi/indicators/PacmanIndicator;F)F

    .line 72
    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$1;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/PacmanIndicator;->postInvalidate()V

    .line 73
    return-void
.end method

###### Class com.wang.avi.indicators.PacmanIndicator.AnonymousClass2 (com.wang.avi.indicators.PacmanIndicator$2)
.class Lcom/wang/avi/indicators/PacmanIndicator$2;
.super Ljava/lang/Object;
.source "PacmanIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/PacmanIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/PacmanIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/PacmanIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/PacmanIndicator;

    .line 79
    iput-object p1, p0, Lcom/wang/avi/indicators/PacmanIndicator$2;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 82
    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$2;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/PacmanIndicator;->access$102(Lcom/wang/avi/indicators/PacmanIndicator;I)I

    .line 83
    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$2;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/PacmanIndicator;->postInvalidate()V

    .line 84
    return-void
.end method

###### Class com.wang.avi.indicators.PacmanIndicator.AnonymousClass3 (com.wang.avi.indicators.PacmanIndicator$3)
.class Lcom/wang/avi/indicators/PacmanIndicator$3;
.super Ljava/lang/Object;
.source "PacmanIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/PacmanIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/PacmanIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/PacmanIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/PacmanIndicator;

    .line 90
    iput-object p1, p0, Lcom/wang/avi/indicators/PacmanIndicator$3;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 93
    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$3;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/PacmanIndicator;->access$202(Lcom/wang/avi/indicators/PacmanIndicator;F)F

    .line 94
    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$3;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/PacmanIndicator;->postInvalidate()V

    .line 95
    return-void
.end method

###### Class com.wang.avi.indicators.PacmanIndicator.AnonymousClass4 (com.wang.avi.indicators.PacmanIndicator$4)
.class Lcom/wang/avi/indicators/PacmanIndicator$4;
.super Ljava/lang/Object;
.source "PacmanIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/PacmanIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/PacmanIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/PacmanIndicator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/indicators/PacmanIndicator;

    .line 101
    iput-object p1, p0, Lcom/wang/avi/indicators/PacmanIndicator$4;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 104
    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$4;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/wang/avi/indicators/PacmanIndicator;->access$302(Lcom/wang/avi/indicators/PacmanIndicator;F)F

    .line 105
    iget-object v0, p0, Lcom/wang/avi/indicators/PacmanIndicator$4;->this$0:Lcom/wang/avi/indicators/PacmanIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/PacmanIndicator;->postInvalidate()V

    .line 106
    return-void
.end method
