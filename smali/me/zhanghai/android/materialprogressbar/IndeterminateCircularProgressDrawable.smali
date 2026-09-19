###### Class me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable (me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable)
.class public Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;
.source "IndeterminateCircularProgressDrawable.java"

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/MaterialProgressDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;,
        Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;
    }
.end annotation


# static fields
.field private static final PADDED_INTRINSIC_SIZE_DP:I = 0x30

.field private static final PROGRESS_INTRINSIC_SIZE_DP:I = 0x2a

.field private static final RECT_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PADDED_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PROGRESS:Landroid/graphics/RectF;


# instance fields
.field private mPaddedIntrinsicSize:I

.field private mProgressIntrinsicSize:I

.field private mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

.field private mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41a80000    # 21.0f

    const/high16 v2, -0x3e580000    # -21.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, -0x3e400000    # -24.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v2, -0x3e680000    # -19.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    .line 31
    new-instance v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 42
    .local v0, "density":F
    const/high16 v1, 0x42280000    # 42.0f

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mProgressIntrinsicSize:I

    .line 43
    const/high16 v1, 0x42400000    # 48.0f

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mPaddedIntrinsicSize:I

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    .line 46
    invoke-static {v2}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminate(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;

    .line 47
    invoke-static {v2}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminateRotation(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mAnimators:[Landroid/animation/Animator;

    .line 49
    return-void
.end method

.method private drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 96
    .local v0, "saveCount":I
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;

    invoke-static {v1}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;->access$200(Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 99
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    iget v1, v1, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathOffset:F

    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    iget v2, v2, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathStart:F

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v1, v1, v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    add-float/2addr v1, v3

    .line 101
    .local v1, "startAngle":F
    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    iget v3, v3, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathEnd:F

    iget-object v4, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    iget v4, v4, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathStart:F

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    .line 103
    .local v2, "sweepAngle":F
    sget-object v5, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    const/4 v8, 0x0

    move-object v4, p1

    move v6, v1

    move v7, v2

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 106
    return-void
.end method

.method private getIntrinsicSize()I
    .registers 2

    .line 52
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mPaddedIntrinsicSize:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mProgressIntrinsicSize:I

    :goto_9
    return v0
.end method


# virtual methods
.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .registers 2

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 68
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 60
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .registers 2

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUseIntrinsicPadding()Z
    .registers 2

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getUseIntrinsicPadding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .registers 2

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStateful()Z
    .registers 2

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 82
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mUseIntrinsicPadding:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2b

    .line 83
    int-to-float v0, p2

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    int-to-float v2, p3

    sget-object v3, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 84
    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v1

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4f

    .line 86
    :cond_2b
    int-to-float v0, p2

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    int-to-float v2, p3

    sget-object v3, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 87
    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v1

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    :goto_4f
    invoke-direct {p0, p1, p4}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 91
    return-void
.end method

.method protected onPreparePaint(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 73
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 76
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 77
    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .registers 2

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setTint(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setTint(I)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic setUseIntrinsicPadding(Z)V
    .registers 2

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setUseIntrinsicPadding(Z)V

    return-void
.end method

.method public bridge synthetic start()V
    .registers 1

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .registers 1

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->stop()V

    return-void
.end method

###### Class me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable.AnonymousClass1 (me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable$1)
.class synthetic Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;
.super Ljava/lang/Object;
.source "IndeterminateCircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable.RingPathTransform (me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable$RingPathTransform)
.class Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;
.super Ljava/lang/Object;
.source "IndeterminateCircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingPathTransform"
.end annotation


# instance fields
.field public mTrimPathEnd:F

.field public mTrimPathOffset:F

.field public mTrimPathStart:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;)V
    .registers 2
    .param p1, "x0"    # Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;

    .line 108
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;-><init>()V

    return-void
.end method


# virtual methods
.method public setTrimPathEnd(F)V
    .registers 2
    .param p1, "trimPathEnd"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 123
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathEnd:F

    .line 124
    return-void
.end method

.method public setTrimPathOffset(F)V
    .registers 2
    .param p1, "trimPathOffset"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 129
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathOffset:F

    .line 130
    return-void
.end method

.method public setTrimPathStart(F)V
    .registers 2
    .param p1, "trimPathStart"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 117
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathStart:F

    .line 118
    return-void
.end method

###### Class me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable.RingRotation (me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable$RingRotation)
.class Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;
.super Ljava/lang/Object;
.source "IndeterminateCircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingRotation"
.end annotation


# instance fields
.field private mRotation:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;)V
    .registers 2
    .param p1, "x0"    # Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;

    .line 133
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;)F
    .registers 2
    .param p0, "x0"    # Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;

    .line 133
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;->mRotation:F

    return v0
.end method


# virtual methods
.method public setRotation(F)V
    .registers 2
    .param p1, "rotation"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 140
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;->mRotation:F

    .line 141
    return-void
.end method
