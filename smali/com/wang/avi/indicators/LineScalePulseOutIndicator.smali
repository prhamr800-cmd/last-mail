###### Class com.wang.avi.indicators.LineScalePulseOutIndicator (com.wang.avi.indicators.LineScalePulseOutIndicator)
.class public Lcom/wang/avi/indicators/LineScalePulseOutIndicator;
.super Lcom/wang/avi/indicators/LineScaleIndicator;
.source "LineScalePulseOutIndicator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x5

    new-array v2, v1, [J

    fill-array-data v2, :array_36

    .line 17
    .local v2, "delays":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_35

    .line 18
    move v4, v3

    .line 19
    .local v4, "index":I
    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_4e

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 20
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x384

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 22
    aget-wide v6, v2, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 23
    new-instance v6, Lcom/wang/avi/indicators/LineScalePulseOutIndicator$1;

    invoke-direct {v6, p0, v4}, Lcom/wang/avi/indicators/LineScalePulseOutIndicator$1;-><init>(Lcom/wang/avi/indicators/LineScalePulseOutIndicator;I)V

    invoke-virtual {p0, v5, v6}, Lcom/wang/avi/indicators/LineScalePulseOutIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 30
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 32
    .end local v3    # "i":I
    :cond_35
    return-object v0

    :array_36
    .array-data 8
        0x1f4
        0xfa
        0x0
        0xfa
        0x1f4
    .end array-data

    :array_4e
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

###### Class com.wang.avi.indicators.LineScalePulseOutIndicator.AnonymousClass1 (com.wang.avi.indicators.LineScalePulseOutIndicator$1)
.class Lcom/wang/avi/indicators/LineScalePulseOutIndicator$1;
.super Ljava/lang/Object;
.source "LineScalePulseOutIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/LineScalePulseOutIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/LineScalePulseOutIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/LineScalePulseOutIndicator;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/wang/avi/indicators/LineScalePulseOutIndicator;

    .line 23
    iput-object p1, p0, Lcom/wang/avi/indicators/LineScalePulseOutIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScalePulseOutIndicator;

    iput p2, p0, Lcom/wang/avi/indicators/LineScalePulseOutIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 26
    iget-object v0, p0, Lcom/wang/avi/indicators/LineScalePulseOutIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScalePulseOutIndicator;

    iget-object v0, v0, Lcom/wang/avi/indicators/LineScalePulseOutIndicator;->scaleYFloats:[F

    iget v1, p0, Lcom/wang/avi/indicators/LineScalePulseOutIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 27
    iget-object v0, p0, Lcom/wang/avi/indicators/LineScalePulseOutIndicator$1;->this$0:Lcom/wang/avi/indicators/LineScalePulseOutIndicator;

    invoke-virtual {v0}, Lcom/wang/avi/indicators/LineScalePulseOutIndicator;->postInvalidate()V

    .line 28
    return-void
.end method
