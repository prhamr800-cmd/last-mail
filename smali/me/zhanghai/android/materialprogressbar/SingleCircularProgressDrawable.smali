###### Class me.zhanghai.android.materialprogressbar.SingleCircularProgressDrawable (me.zhanghai.android.materialprogressbar.SingleCircularProgressDrawable)
.class Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;
.source "SingleCircularProgressDrawable.java"

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/ShowBackgroundDrawable;


# static fields
.field private static final LEVEL_MAX:I = 0x2710

.field private static final START_ANGLE_MAX_DYNAMIC:F = 360.0f

.field private static final START_ANGLE_MAX_NORMAL:F = 0.0f

.field private static final SWEEP_ANGLE_MAX:F = 360.0f


# instance fields
.field private mShowBackground:Z

.field private final mStartAngleMax:F


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "style"    # I

    .line 28
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;-><init>()V

    .line 29
    packed-switch p1, :pswitch_data_18

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value for style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_e
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->mStartAngleMax:F

    .line 35
    goto :goto_17

    .line 31
    :pswitch_13
    const/4 v0, 0x0

    iput v0, p0, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->mStartAngleMax:F

    .line 32
    nop

    .line 39
    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public getShowBackground()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->mShowBackground:Z

    return v0
.end method

.method protected onDrawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->getLevel()I

    move-result v0

    .line 64
    .local v0, "level":I
    if-nez v0, :cond_7

    .line 65
    return-void

    .line 68
    :cond_7
    int-to-float v1, v0

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    .line 69
    .local v1, "ratio":F
    iget v2, p0, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->mStartAngleMax:F

    mul-float v2, v2, v1

    .line 70
    .local v2, "startAngle":F
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v3, v3, v1

    .line 72
    .local v3, "sweepAngle":F
    invoke-virtual {p0, p1, p2, v2, v3}, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 73
    iget-boolean v4, p0, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->mShowBackground:Z

    if-eqz v4, :cond_1e

    .line 75
    invoke-virtual {p0, p1, p2, v2, v3}, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 77
    :cond_1e
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 43
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->invalidateSelf()V

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public setShowBackground(Z)V
    .registers 3
    .param p1, "show"    # Z

    .line 54
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->mShowBackground:Z

    if-eq v0, p1, :cond_9

    .line 55
    iput-boolean p1, p0, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->mShowBackground:Z

    .line 56
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/SingleCircularProgressDrawable;->invalidateSelf()V

    .line 58
    :cond_9
    return-void
.end method
