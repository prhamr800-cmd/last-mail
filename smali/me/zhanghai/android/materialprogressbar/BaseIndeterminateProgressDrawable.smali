###### Class me.zhanghai.android.materialprogressbar.BaseIndeterminateProgressDrawable (me.zhanghai.android.materialprogressbar.BaseIndeterminateProgressDrawable)
.class abstract Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseProgressDrawable;
.source "BaseIndeterminateProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field protected mAnimators:[Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseProgressDrawable;-><init>()V

    .line 24
    sget v0, Lme/zhanghai/android/materialprogressbar/R$attr;->colorControlActivated:I

    const/high16 v1, -0x1000000

    invoke-static {v0, v1, p1}, Lme/zhanghai/android/materialprogressbar/internal/ThemeUtils;->getColorFromAttrRes(IILandroid/content/Context;)I

    move-result v0

    .line 28
    .local v0, "controlActivatedColor":I
    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setTint(I)V

    .line 29
    return-void
.end method

.method private isStarted()Z
    .registers 7

    .line 60
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->mAnimators:[Landroid/animation/Animator;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 61
    .local v4, "animator":Landroid/animation/Animator;
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 62
    const/4 v0, 0x1

    return v0

    .line 60
    .end local v4    # "animator":Landroid/animation/Animator;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 65
    :cond_14
    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 36
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 39
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->invalidateSelf()V

    .line 41
    :cond_c
    return-void
.end method

.method public isRunning()Z
    .registers 7

    .line 83
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->mAnimators:[Landroid/animation/Animator;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 84
    .local v4, "animator":Landroid/animation/Animator;
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 85
    const/4 v0, 0x1

    return v0

    .line 83
    .end local v4    # "animator":Landroid/animation/Animator;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 88
    :cond_14
    return v2
.end method

.method public start()V
    .registers 5

    .line 49
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    return-void

    .line 53
    :cond_7
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->mAnimators:[Landroid/animation/Animator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 54
    .local v3, "animator":Landroid/animation/Animator;
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 53
    .end local v3    # "animator":Landroid/animation/Animator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 56
    :cond_15
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->invalidateSelf()V

    .line 57
    return-void
.end method

.method public stop()V
    .registers 5

    .line 73
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->mAnimators:[Landroid/animation/Animator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 74
    .local v3, "animator":Landroid/animation/Animator;
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 73
    .end local v3    # "animator":Landroid/animation/Animator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 76
    :cond_e
    return-void
.end method
