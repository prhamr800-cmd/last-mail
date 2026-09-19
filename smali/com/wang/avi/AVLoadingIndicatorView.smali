###### Class com.wang.avi.AVLoadingIndicatorView (com.wang.avi.AVLoadingIndicatorView)
.class public Lcom/wang/avi/AVLoadingIndicatorView;
.super Landroid/view/View;
.source "AVLoadingIndicatorView.java"


# static fields
.field private static final DEFAULT_INDICATOR:Lcom/wang/avi/indicators/BallPulseIndicator;

.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AVLoadingIndicatorView"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mIndicator:Lcom/wang/avi/Indicator;

.field private mIndicatorColor:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mPostedHide:Z

.field private mPostedShow:Z

.field private mShouldStartAnimationDrawable:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/wang/avi/indicators/BallPulseIndicator;

    invoke-direct {v0}, Lcom/wang/avi/indicators/BallPulseIndicator;-><init>()V

    sput-object v0, Lcom/wang/avi/AVLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/wang/avi/indicators/BallPulseIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    .line 33
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    .line 35
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    .line 37
    new-instance v1, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 47
    new-instance v1, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v1, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 71
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    .line 33
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    .line 35
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    .line 37
    new-instance v1, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 47
    new-instance v1, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v1, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 76
    sget v1, Lcom/wang/avi/R$style;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    .line 33
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    .line 35
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    .line 37
    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 81
    sget v0, Lcom/wang/avi/R$style;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    .line 33
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    .line 35
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    .line 37
    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 87
    sget v0, Lcom/wang/avi/R$style;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/AVLoadingIndicatorView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/AVLoadingIndicatorView;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    return p1
.end method

.method static synthetic access$102(Lcom/wang/avi/AVLoadingIndicatorView;J)J
    .registers 3
    .param p0, "x0"    # Lcom/wang/avi/AVLoadingIndicatorView;
    .param p1, "x1"    # J

    .line 20
    iput-wide p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/wang/avi/AVLoadingIndicatorView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/AVLoadingIndicatorView;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/wang/avi/AVLoadingIndicatorView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/wang/avi/AVLoadingIndicatorView;

    .line 20
    iget-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 91
    const/16 v0, 0x18

    iput v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinWidth:I

    .line 92
    const/16 v1, 0x30

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxWidth:I

    .line 93
    iput v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinHeight:I

    .line 94
    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxHeight:I

    .line 96
    sget-object v0, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_minWidth:I

    iget v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinWidth:I

    .line 100
    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_maxWidth:I

    iget v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxWidth:I

    .line 101
    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_minHeight:I

    iget v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinHeight:I

    .line 102
    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_maxHeight:I

    iget v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxHeight:I

    .line 103
    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_indicatorName:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "indicatorName":Ljava/lang/String;
    sget v2, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_indicatorColor:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicatorColor:I

    .line 105
    invoke-virtual {p0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-nez v2, :cond_55

    .line 107
    sget-object v2, Lcom/wang/avi/AVLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/wang/avi/indicators/BallPulseIndicator;

    invoke-virtual {p0, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Lcom/wang/avi/Indicator;)V

    .line 109
    :cond_55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    return-void
.end method

.method private removeCallbacks()V
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 414
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 415
    return-void
.end method

.method private updateDrawableBounds(II)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 295
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 296
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 298
    move v0, p1

    .line 299
    .local v0, "right":I
    move v1, p2

    .line 300
    .local v1, "bottom":I
    const/4 v2, 0x0

    .line 301
    .local v2, "top":I
    const/4 v3, 0x0

    .line 303
    .local v3, "left":I
    iget-object v4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v4, :cond_56

    .line 306
    iget-object v4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v4}, Lcom/wang/avi/Indicator;->getIntrinsicWidth()I

    move-result v4

    .line 307
    .local v4, "intrinsicWidth":I
    iget-object v5, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v5}, Lcom/wang/avi/Indicator;->getIntrinsicHeight()I

    move-result v5

    .line 308
    .local v5, "intrinsicHeight":I
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 309
    .local v6, "intrinsicAspect":F
    int-to-float v7, p1

    int-to-float v8, p2

    div-float/2addr v7, v8

    .line 310
    .local v7, "boundAspect":F
    cmpl-float v8, v6, v7

    if-eqz v8, :cond_51

    .line 311
    cmpl-float v8, v7, v6

    if-lez v8, :cond_43

    .line 313
    int-to-float v8, p2

    mul-float v8, v8, v6

    float-to-int v8, v8

    .line 314
    .local v8, "width":I
    sub-int v9, p1, v8

    div-int/lit8 v9, v9, 0x2

    .line 315
    .end local v3    # "left":I
    .local v9, "left":I
    add-int/2addr v8, v9

    .line 316
    .end local v0    # "right":I
    .local v8, "right":I
    nop

    .line 323
    move v0, v8

    move v3, v9

    goto :goto_51

    .line 318
    .end local v8    # "right":I
    .end local v9    # "left":I
    .restart local v0    # "right":I
    .restart local v3    # "left":I
    :cond_43
    int-to-float v8, p1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 319
    .local v8, "height":I
    sub-int v9, p2, v8

    div-int/lit8 v9, v9, 0x2

    .line 320
    .end local v2    # "top":I
    .local v9, "top":I
    add-int/2addr v8, v9

    .line 323
    move v1, v8

    move v2, v9

    .end local v8    # "height":I
    .end local v9    # "top":I
    .restart local v2    # "top":I
    :cond_51
    :goto_51
    iget-object v8, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v8, v3, v2, v0, v1}, Lcom/wang/avi/Indicator;->setBounds(IIII)V

    .line 325
    .end local v4    # "intrinsicWidth":I
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicAspect":F
    .end local v7    # "boundAspect":F
    :cond_56
    return-void
.end method

.method private updateDrawableState()V
    .registers 3

    .line 380
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getDrawableState()[I

    move-result-object v0

    .line 381
    .local v0, "state":[I
    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v1}, Lcom/wang/avi/Indicator;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 382
    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v1, v0}, Lcom/wang/avi/Indicator;->setState([I)Z

    .line 384
    :cond_15
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 334
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    .line 335
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2c

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 340
    .local v1, "saveCount":I
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 345
    iget-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    if-eqz v2, :cond_2c

    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_2c

    .line 346
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 347
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 350
    .end local v1    # "saveCount":I
    :cond_2c
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 389
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 391
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v0, :cond_c

    .line 392
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v0, p1, p2}, Lcom/wang/avi/Indicator;->setHotspot(FF)V

    .line 394
    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .line 375
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 376
    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->updateDrawableState()V

    .line 377
    return-void
.end method

.method public getIndicator()Lcom/wang/avi/Indicator;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    return-object v0
.end method

.method public hide()V
    .registers 11

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    .line 197
    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    sub-long/2addr v1, v3

    .line 199
    .local v1, "diff":J
    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_2b

    iget-wide v5, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_1e

    goto :goto_2b

    .line 208
    :cond_1e
    iget-boolean v5, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    if-nez v5, :cond_30

    .line 209
    iget-object v5, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    sub-long/2addr v3, v1

    invoke-virtual {p0, v5, v3, v4}, Lcom/wang/avi/AVLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    goto :goto_30

    .line 203
    :cond_2b
    :goto_2b
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 213
    :cond_30
    :goto_30
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 275
    invoke-virtual {p0, p1}, Lcom/wang/avi/AVLoadingIndicatorView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 276
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 277
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 278
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 280
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/wang/avi/AVLoadingIndicatorView;->invalidate(IIII)V

    .line 282
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    goto :goto_2f

    .line 283
    :cond_2c
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :goto_2f
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 398
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 399
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation()V

    .line 400
    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks()V

    .line 401
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 405
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->stopAnimation()V

    .line 408
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 409
    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks()V

    .line 410
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 329
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/wang/avi/AVLoadingIndicatorView;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 331
    monitor-exit p0

    return-void

    .line 328
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "dw":I
    const/4 v1, 0x0

    .line 357
    .local v1, "dh":I
    :try_start_3
    iget-object v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    .line 358
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_29

    .line 359
    iget v3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinWidth:I

    iget v4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .line 360
    iget v3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinHeight:I

    iget v4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 363
    :cond_29
    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->updateDrawableState()V

    .line 365
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 366
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 368
    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/wang/avi/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result v4

    .line 369
    .local v4, "measuredWidth":I
    invoke-static {v1, p2, v3}, Lcom/wang/avi/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result v3

    .line 370
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Lcom/wang/avi/AVLoadingIndicatorView;->setMeasuredDimension(II)V
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    .line 371
    monitor-exit p0

    return-void

    .line 353
    .end local v0    # "dw":I
    .end local v1    # "dh":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/wang/avi/AVLoadingIndicatorView;->updateDrawableBounds(II)V

    .line 290
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 265
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 266
    const/16 v0, 0x8

    if-eq p2, v0, :cond_f

    const/4 v0, 0x4

    if-ne p2, v0, :cond_b

    goto :goto_f

    .line 269
    :cond_b
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation()V

    goto :goto_12

    .line 267
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->stopAnimation()V

    .line 271
    :goto_12
    return-void
.end method

.method public setIndicator(Lcom/wang/avi/Indicator;)V
    .registers 4
    .param p1, "d"    # Lcom/wang/avi/Indicator;

    .line 117
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eq v0, p1, :cond_22

    .line 118
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v0, :cond_13

    .line 119
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wang/avi/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_13
    iput-object p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    .line 125
    iget v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicatorColor(I)V

    .line 126
    if-eqz p1, :cond_1f

    .line 127
    invoke-virtual {p1, p0}, Lcom/wang/avi/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 129
    :cond_1f
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->postInvalidate()V

    .line 131
    :cond_22
    return-void
.end method

.method public setIndicator(Ljava/lang/String;)V
    .registers 6
    .param p1, "indicatorName"    # Ljava/lang/String;

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    return-void

    .line 164
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "drawableClassName":Ljava/lang/StringBuilder;
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".indicators"

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .end local v1    # "defaultPackageName":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 174
    .local v1, "drawableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wang/avi/Indicator;

    .line 175
    .local v2, "indicator":Lcom/wang/avi/Indicator;
    invoke-virtual {p0, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Lcom/wang/avi/Indicator;)V
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_41} :catch_4c
    .catch Ljava/lang/InstantiationException; {:try_start_30 .. :try_end_41} :catch_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_41} :catch_42

    goto :goto_54

    .line 180
    .end local v1    # "drawableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "indicator":Lcom/wang/avi/Indicator;
    :catch_42
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_55

    .line 178
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_47
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_54

    .line 176
    :catch_4c
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "AVLoadingIndicatorView"

    const-string v3, "Didn\'t find your class , check the name again !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_54
    nop

    .line 183
    :goto_55
    return-void
.end method

.method public setIndicatorColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 147
    iput p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicatorColor:I

    .line 148
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v0, p1}, Lcom/wang/avi/Indicator;->setColor(I)V

    .line 149
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "v"    # I

    .line 253
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_18

    .line 254
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    const/16 v0, 0x8

    if-eq p1, v0, :cond_15

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    goto :goto_15

    .line 258
    :cond_11
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation()V

    goto :goto_18

    .line 256
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->stopAnimation()V

    .line 261
    :cond_18
    :goto_18
    return-void
.end method

.method public show()V
    .registers 4

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    .line 219
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 220
    iget-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    if-nez v0, :cond_1a

    .line 221
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    .line 224
    :cond_1a
    return-void
.end method

.method public smoothToHide()V
    .registers 3

    .line 191
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public smoothToShow()V
    .registers 3

    .line 186
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 188
    return-void
.end method

.method startAnimation()V
    .registers 2

    .line 233
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    return-void

    .line 237
    :cond_7
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_10

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 240
    :cond_10
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->postInvalidate()V

    .line 241
    return-void
.end method

.method stopAnimation()V
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_e

    .line 245
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v0}, Lcom/wang/avi/Indicator;->stop()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 248
    :cond_e
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->postInvalidate()V

    .line 249
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eq p1, v0, :cond_d

    .line 229
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

###### Class com.wang.avi.AVLoadingIndicatorView.AnonymousClass1 (com.wang.avi.AVLoadingIndicatorView$1)
.class Lcom/wang/avi/AVLoadingIndicatorView$1;
.super Ljava/lang/Object;
.source "AVLoadingIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wang/avi/AVLoadingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/AVLoadingIndicatorView;


# direct methods
.method constructor <init>(Lcom/wang/avi/AVLoadingIndicatorView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/AVLoadingIndicatorView;

    .line 37
    iput-object p1, p0, Lcom/wang/avi/AVLoadingIndicatorView$1;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$1;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->access$002(Lcom/wang/avi/AVLoadingIndicatorView;Z)Z

    .line 42
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$1;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->access$102(Lcom/wang/avi/AVLoadingIndicatorView;J)J

    .line 43
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$1;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 44
    return-void
.end method

###### Class com.wang.avi.AVLoadingIndicatorView.AnonymousClass2 (com.wang.avi.AVLoadingIndicatorView$2)
.class Lcom/wang/avi/AVLoadingIndicatorView$2;
.super Ljava/lang/Object;
.source "AVLoadingIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wang/avi/AVLoadingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/AVLoadingIndicatorView;


# direct methods
.method constructor <init>(Lcom/wang/avi/AVLoadingIndicatorView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/wang/avi/AVLoadingIndicatorView;

    .line 47
    iput-object p1, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->access$202(Lcom/wang/avi/AVLoadingIndicatorView;Z)Z

    .line 52
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-static {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->access$300(Lcom/wang/avi/AVLoadingIndicatorView;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 53
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/wang/avi/AVLoadingIndicatorView;->access$102(Lcom/wang/avi/AVLoadingIndicatorView;J)J

    .line 54
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 56
    :cond_1c
    return-void
.end method
