###### Class me.zhanghai.android.materialprogressbar.BaseDrawable (me.zhanghai.android.materialprogressbar.BaseDrawable)
.class abstract Lme/zhanghai/android/materialprogressbar/BaseDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BaseDrawable.java"

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/TintableDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;
    }
.end annotation


# instance fields
.field protected mAlpha:I

.field protected mColorFilter:Landroid/graphics/ColorFilter;

.field private mConstantState:Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;

.field protected mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field protected mTintList:Landroid/content/res/ColorStateList;

.field protected mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    const/16 v0, 0xff

    iput v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mAlpha:I

    .line 26
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 29
    new-instance v0, Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;-><init>(Lme/zhanghai/android/materialprogressbar/BaseDrawable;Lme/zhanghai/android/materialprogressbar/BaseDrawable$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mConstantState:Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;

    return-void
.end method

.method private updateTintFilter()Z
    .registers 5

    .line 106
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-nez v0, :cond_b

    goto :goto_1f

    .line 112
    :cond_b
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 114
    .local v0, "tintColor":I
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 115
    return v1

    .line 107
    .end local v0    # "tintColor":I
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    move v0, v1

    .line 108
    .local v0, "hadTintFilter":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 109
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 133
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2d

    .line 138
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 139
    .local v1, "saveCount":I
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->onDraw(Landroid/graphics/Canvas;II)V

    .line 141
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 142
    return-void

    .line 135
    .end local v1    # "saveCount":I
    :cond_2d
    :goto_2d
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 33
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 52
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method protected getColorFilterForDrawing()Landroid/graphics/ColorFilter;
    .registers 2

    .line 145
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_9
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 157
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mConstantState:Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .line 124
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;II)V
.end method

.method protected onStateChange([I)Z
    .registers 3
    .param p1, "state"    # [I

    .line 101
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->updateTintFilter()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 41
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mAlpha:I

    if-eq v0, p1, :cond_9

    .line 42
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mAlpha:I

    .line 43
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->invalidateSelf()V

    .line 45
    :cond_9
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    iput-object p1, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 61
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->invalidateSelf()V

    .line 62
    return-void
.end method

.method public setTint(I)V
    .registers 3
    .param p1, "tintColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 69
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    iput-object p1, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintList:Landroid/content/res/ColorStateList;

    .line 78
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->updateTintFilter()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 79
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->invalidateSelf()V

    .line 81
    :cond_b
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    iput-object p1, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 89
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->updateTintFilter()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->invalidateSelf()V

    .line 92
    :cond_b
    return-void
.end method

###### Class me.zhanghai.android.materialprogressbar.BaseDrawable.AnonymousClass1 (me.zhanghai.android.materialprogressbar.BaseDrawable$1)
.class synthetic Lme/zhanghai/android/materialprogressbar/BaseDrawable$1;
.super Ljava/lang/Object;
.source "BaseDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/BaseDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class me.zhanghai.android.materialprogressbar.BaseDrawable.DummyConstantState (me.zhanghai.android.materialprogressbar.BaseDrawable$DummyConstantState)
.class Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BaseDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/BaseDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyConstantState"
.end annotation


# instance fields
.field final synthetic this$0:Lme/zhanghai/android/materialprogressbar/BaseDrawable;


# direct methods
.method private constructor <init>(Lme/zhanghai/android/materialprogressbar/BaseDrawable;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;->this$0:Lme/zhanghai/android/materialprogressbar/BaseDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/zhanghai/android/materialprogressbar/BaseDrawable;Lme/zhanghai/android/materialprogressbar/BaseDrawable$1;)V
    .registers 3
    .param p1, "x0"    # Lme/zhanghai/android/materialprogressbar/BaseDrawable;
    .param p2, "x1"    # Lme/zhanghai/android/materialprogressbar/BaseDrawable$1;

    .line 160
    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;-><init>(Lme/zhanghai/android/materialprogressbar/BaseDrawable;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 170
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BaseDrawable$DummyConstantState;->this$0:Lme/zhanghai/android/materialprogressbar/BaseDrawable;

    return-object v0
.end method
