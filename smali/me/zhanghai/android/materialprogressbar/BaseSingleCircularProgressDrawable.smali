###### Class me.zhanghai.android.materialprogressbar.BaseSingleCircularProgressDrawable (me.zhanghai.android.materialprogressbar.BaseSingleCircularProgressDrawable)
.class abstract Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseProgressDrawable;
.source "BaseSingleCircularProgressDrawable.java"


# static fields
.field private static final RECT_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PADDED_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PROGRESS:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41a80000    # 21.0f

    const/high16 v2, -0x3e580000    # -21.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, -0x3e400000    # -24.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v2, -0x3e680000    # -19.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseProgressDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method protected drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "startAngle"    # F
    .param p4, "sweepAngle"    # F

    .line 42
    sget-object v1, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float v2, p3, v0

    const/4 v4, 0x0

    move-object v0, p1

    move v3, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 43
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 27
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->mUseIntrinsicPadding:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2b

    .line 28
    int-to-float v0, p2

    sget-object v2, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    int-to-float v2, p3

    sget-object v3, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 29
    sget-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v1

    sget-object v2, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4f

    .line 31
    :cond_2b
    int-to-float v0, p2

    sget-object v2, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    int-to-float v2, p3

    sget-object v3, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 32
    sget-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v1

    sget-object v2, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    :goto_4f
    invoke-virtual {p0, p1, p4}, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->onDrawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method protected abstract onDrawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method protected onPreparePaint(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    return-void
.end method
