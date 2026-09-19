###### Class com.wang.avi.Indicator (com.wang.avi.Indicator)
.class public abstract Lcom/wang/avi/Indicator;
.super Landroid/graphics/drawable/Drawable;
.source "Indicator.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private alpha:I

.field protected drawBounds:Landroid/graphics/Rect;

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mHasAnimators:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mUpdateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/wang/avi/Indicator;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/Indicator;->mUpdateListeners:Ljava/util/HashMap;

    .line 25
    const/16 v0, 0xff

    iput v0, p0, Lcom/wang/avi/Indicator;->alpha:I

    .line 27
    sget-object v0, Lcom/wang/avi/Indicator;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/wang/avi/Indicator;->drawBounds:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/Indicator;->mPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    return-void
.end method

.method private ensureAnimators()V
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/wang/avi/Indicator;->mHasAnimators:Z

    if-nez v0, :cond_d

    .line 120
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->onCreateAnimators()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wang/avi/Indicator;->mAnimators:Ljava/util/ArrayList;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wang/avi/Indicator;->mHasAnimators:Z

    .line 123
    :cond_d
    return-void
.end method

.method private isStarted()Z
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 132
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    return v1

    .line 134
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private startAnimators()V
    .registers 4

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/wang/avi/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 94
    iget-object v1, p0, Lcom/wang/avi/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 98
    .local v1, "animator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/wang/avi/Indicator;->mUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 99
    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    if-eqz v2, :cond_1e

    .line 100
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    :cond_1e
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 93
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    .end local v2    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method private stopAnimators()V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 109
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 110
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 111
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 112
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 114
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_24
    goto :goto_a

    .line 116
    :cond_25
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 152
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public centerX()I
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/wang/avi/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    return v0
.end method

.method public centerY()I
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/wang/avi/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 69
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/wang/avi/Indicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 70
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public exactCenterX()F
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/wang/avi/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    return v0
.end method

.method public exactCenterY()F
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/wang/avi/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/wang/avi/Indicator;->alpha:I

    return v0
.end method

.method public getColor()I
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDrawBounds()Landroid/graphics/Rect;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/wang/avi/Indicator;->drawBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/wang/avi/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 59
    const/4 v0, -0x1

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/wang/avi/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 140
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    return v1

    .line 142
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 157
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/wang/avi/Indicator;->setDrawBounds(Landroid/graphics/Rect;)V

    .line 159
    return-void
.end method

.method public abstract onCreateAnimators()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end method

.method public postInvalidate()V
    .registers 1

    .line 170
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->invalidateSelf()V

    .line 171
    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .line 49
    iput p1, p0, Lcom/wang/avi/Indicator;->alpha:I

    .line 50
    return-void
.end method

.method public setColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 44
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 65
    return-void
.end method

.method public setDrawBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/wang/avi/Indicator;->drawBounds:Landroid/graphics/Rect;

    .line 167
    return-void
.end method

.method public setDrawBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "drawBounds"    # Landroid/graphics/Rect;

    .line 162
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/wang/avi/Indicator;->setDrawBounds(IIII)V

    .line 163
    return-void
.end method

.method public start()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/wang/avi/Indicator;->ensureAnimators()V

    .line 80
    iget-object v0, p0, Lcom/wang/avi/Indicator;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 81
    return-void

    .line 85
    :cond_8
    invoke-direct {p0}, Lcom/wang/avi/Indicator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 86
    return-void

    .line 88
    :cond_f
    invoke-direct {p0}, Lcom/wang/avi/Indicator;->startAnimators()V

    .line 89
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->invalidateSelf()V

    .line 90
    return-void
.end method

.method public stop()V
    .registers 1

    .line 127
    invoke-direct {p0}, Lcom/wang/avi/Indicator;->stopAnimators()V

    .line 128
    return-void
.end method
