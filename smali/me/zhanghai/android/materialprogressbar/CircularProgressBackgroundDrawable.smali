###### Class me.zhanghai.android.materialprogressbar.CircularProgressBackgroundDrawable (me.zhanghai.android.materialprogressbar.CircularProgressBackgroundDrawable)
.class Lme/zhanghai/android/materialprogressbar/CircularProgressBackgroundDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;
.source "CircularProgressBackgroundDrawable.java"

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/ShowBackgroundDrawable;


# instance fields
.field private mShow:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/CircularProgressBackgroundDrawable;->mShow:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 31
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/CircularProgressBackgroundDrawable;->mShow:Z

    if-eqz v0, :cond_7

    .line 32
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    :cond_7
    return-void
.end method

.method public getShowBackground()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/CircularProgressBackgroundDrawable;->mShow:Z

    return v0
.end method

.method protected onDrawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 38
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lme/zhanghai/android/materialprogressbar/CircularProgressBackgroundDrawable;->drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 39
    return-void
.end method

.method public setShowBackground(Z)V
    .registers 3
    .param p1, "show"    # Z

    .line 23
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/CircularProgressBackgroundDrawable;->mShow:Z

    if-eq v0, p1, :cond_9

    .line 24
    iput-boolean p1, p0, Lme/zhanghai/android/materialprogressbar/CircularProgressBackgroundDrawable;->mShow:Z

    .line 25
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/CircularProgressBackgroundDrawable;->invalidateSelf()V

    .line 27
    :cond_9
    return-void
.end method
