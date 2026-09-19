###### Class com.pnikosis.materialishprogress.ProgressWheel (com.pnikosis.materialishprogress.ProgressWheel)
.class public Lcom/pnikosis/materialishprogress/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;,
        Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private barColor:I

.field private barExtraLength:F

.field private barGrowingFromFront:Z

.field private final barLength:I

.field private final barMaxLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barSpinCycleTime:D

.field private barWidth:I

.field private callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

.field private circleBounds:Landroid/graphics/RectF;

.field private circleRadius:I

.field private fillRadius:Z

.field private isSpinning:Z

.field private lastTimeAnimated:J

.field private linearProgress:Z

.field private mProgress:F

.field private mTargetProgress:F

.field private final pauseGrowingTime:J

.field private pausedTimeWithoutGrowing:J

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private shouldAnimate:Z

.field private spinSpeed:F

.field private timeStartGrowing:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    const/16 v0, 0x10

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barLength:I

    .line 32
    const/16 v0, 0x10e

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barMaxLength:I

    .line 33
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pauseGrowingTime:J

    .line 40
    const/16 v0, 0x1c

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 42
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    .line 45
    const-wide v1, 0x407cc00000000000L    # 460.0

    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    .line 47
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 50
    const/high16 v4, -0x56000000

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 51
    const v4, 0xffffff

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 54
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 62
    const/high16 v4, 0x43660000    # 230.0f

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 65
    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 69
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 70
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 71
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 93
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setAnimationEnabled()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v0, 0x10

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barLength:I

    .line 32
    const/16 v0, 0x10e

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barMaxLength:I

    .line 33
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pauseGrowingTime:J

    .line 40
    const/16 v0, 0x1c

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 42
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    .line 45
    const-wide v1, 0x407cc00000000000L    # 460.0

    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    .line 47
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 50
    const/high16 v4, -0x56000000

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 51
    const v4, 0xffffff

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 54
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 62
    const/high16 v4, 0x43660000    # 230.0f

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 65
    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 69
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 70
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 71
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 83
    sget-object v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 85
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setAnimationEnabled()V

    .line 86
    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .registers 8
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 221
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 222
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 223
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 224
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    int-to-float v1, v1

    .line 225
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 227
    sget v1, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_circleRadius:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    int-to-float v2, v2

    .line 228
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 230
    sget v1, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_fillRadius:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    .line 232
    sget v1, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_barWidth:I

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 234
    sget v1, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_rimWidth:I

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 236
    sget v1, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_spinSpeed:I

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    .line 237
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 238
    .local v1, "baseSpinSpeed":F
    mul-float v4, v4, v1

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 240
    sget v3, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_barSpinCycleTime:I

    iget-wide v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    double-to-int v4, v4

    .line 241
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-double v3, v3

    iput-wide v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    .line 243
    sget v3, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_barColor:I

    iget v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 245
    sget v3, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_rimColor:I

    iget v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 247
    sget v3, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_linearProgress:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    .line 249
    sget v3, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_progressIndeterminate:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 250
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->spin()V

    .line 254
    :cond_9a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    return-void
.end method

.method private runCallback()V
    .registers 4

    .line 428
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    if-eqz v0, :cond_18

    .line 429
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 430
    .local v0, "normalizedProgress":F
    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 432
    .end local v0    # "normalizedProgress":F
    :cond_18
    return-void
.end method

.method private runCallback(F)V
    .registers 3
    .param p1, "value"    # F

    .line 422
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    if-eqz v0, :cond_9

    .line 423
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    invoke-interface {v0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 425
    :cond_9
    return-void
.end method

.method private setAnimationEnabled()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 100
    .local v0, "currentApiVersion":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x11

    if-lt v0, v2, :cond_17

    .line 101
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    goto :goto_25

    .line 104
    :cond_17
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 108
    .local v1, "animationValue":F
    :goto_25
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    iput-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->shouldAnimate:Z

    .line 109
    return-void
.end method

.method private setupBounds(II)V
    .registers 18
    .param p1, "layout_width"    # I
    .param p2, "layout_height"    # I

    .line 189
    move-object v0, p0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingTop()I

    move-result v1

    .line 190
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingBottom()I

    move-result v2

    .line 191
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingLeft()I

    move-result v3

    .line 192
    .local v3, "paddingLeft":I
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingRight()I

    move-result v4

    .line 194
    .local v4, "paddingRight":I
    iget-boolean v5, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    if-nez v5, :cond_57

    .line 196
    sub-int v5, p1, v3

    sub-int/2addr v5, v4

    sub-int v6, p2, v2

    sub-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 199
    .local v5, "minValue":I
    iget v6, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 202
    .local v6, "circleDiameter":I
    sub-int v7, p1, v3

    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v3

    .line 203
    .local v7, "xOffset":I
    sub-int v8, p2, v1

    sub-int/2addr v8, v2

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    .line 205
    .local v8, "yOffset":I
    new-instance v9, Landroid/graphics/RectF;

    iget v10, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int/2addr v10, v7

    int-to-float v10, v10

    iget v11, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int/2addr v11, v8

    int-to-float v11, v11

    add-int v12, v7, v6

    iget v13, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    add-int v13, v8, v6

    move v14, v5

    .end local v5    # "minValue":I
    .local v14, "minValue":I
    iget v5, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    sub-int/2addr v13, v5

    int-to-float v5, v13

    invoke-direct {v9, v10, v11, v12, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 208
    .end local v6    # "circleDiameter":I
    .end local v7    # "xOffset":I
    .end local v8    # "yOffset":I
    .end local v14    # "minValue":I
    goto :goto_72

    .line 209
    :cond_57
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget v7, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int/2addr v7, v1

    int-to-float v7, v7

    sub-int v8, p1, v4

    iget v9, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-int v9, p2, v2

    iget v10, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 212
    :goto_72
    return-void
.end method

.method private setupPaints()V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    return-void
.end method

.method private updateBarLength(J)V
    .registers 8
    .param p1, "deltaTimeInMilliSeconds"    # J

    .line 356
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5f

    .line 357
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    long-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    .line 359
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2a

    .line 362
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    .line 364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 366
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    .line 369
    :cond_2a
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    .line 370
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 371
    .local v0, "distance":F
    const/high16 v1, 0x437e0000    # 254.0f

    .line 373
    .local v1, "destLength":F
    iget-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    if-eqz v2, :cond_4f

    .line 374
    mul-float v2, v0, v1

    iput v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    goto :goto_5e

    .line 376
    :cond_4f
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    .line 377
    .local v2, "newLength":F
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    sub-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 378
    iput v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    .line 380
    .end local v0    # "distance":F
    .end local v1    # "destLength":F
    .end local v2    # "newLength":F
    :goto_5e
    goto :goto_64

    .line 381
    :cond_5f
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 383
    :goto_64
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .registers 2

    .line 610
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarWidth()I
    .registers 2

    .line 591
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .registers 2

    .line 572
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getProgress()F
    .registers 3

    .line 513
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_c

    :cond_7
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    :goto_c
    return v0
.end method

.method public getRimColor()I
    .registers 2

    .line 630
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimWidth()I
    .registers 2

    .line 670
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .registers 3

    .line 652
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .registers 2

    .line 390
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 270
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "mustInvalidate":Z
    iget-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->shouldAnimate:Z

    if-nez v1, :cond_16

    .line 277
    return-void

    .line 280
    :cond_16
    iget-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v4, 0x43b40000    # 360.0f

    if-eqz v1, :cond_6a

    .line 282
    const/4 v0, 0x1

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v5, v7

    .line 285
    .local v5, "deltaTime":J
    long-to-float v1, v5

    iget v7, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    mul-float v1, v1, v7

    div-float/2addr v1, v3

    .line 287
    .local v1, "deltaNormalized":F
    invoke-direct {p0, v5, v6}, Lcom/pnikosis/materialishprogress/ProgressWheel;->updateBarLength(J)V

    .line 289
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 290
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_46

    .line 291
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 296
    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {p0, v3}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback(F)V

    .line 298
    :cond_46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 300
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    sub-float/2addr v3, v2

    .line 301
    .local v3, "from":F
    const/high16 v2, 0x41800000    # 16.0f

    iget v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    add-float/2addr v4, v2

    .line 303
    .local v4, "length":F
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 304
    const/4 v3, 0x0

    .line 305
    const/high16 v4, 0x43070000    # 135.0f

    .line 308
    :cond_5d
    iget-object v8, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v3

    move v10, v4

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 309
    .end local v1    # "deltaNormalized":F
    .end local v3    # "from":F
    .end local v4    # "length":F
    .end local v5    # "deltaTime":J
    goto/16 :goto_df

    .line 310
    :cond_6a
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 312
    .local v1, "oldProgress":F
    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_93

    .line 314
    const/4 v0, 0x1

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    div-float/2addr v5, v3

    .line 317
    .local v5, "deltaTime":F
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    mul-float v3, v3, v5

    .line 319
    .local v3, "deltaNormalized":F
    iget v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    add-float/2addr v6, v3

    iget v7, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 323
    .end local v3    # "deltaNormalized":F
    .end local v5    # "deltaTime":F
    :cond_93
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_9c

    .line 324
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback()V

    .line 327
    :cond_9c
    const/4 v3, 0x0

    .line 328
    .local v3, "offset":F
    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 329
    .local v5, "progress":F
    iget-boolean v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    if-nez v6, :cond_cb

    .line 330
    const/high16 v6, 0x40000000    # 2.0f

    .line 331
    .local v6, "factor":F
    iget v7, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    div-float/2addr v7, v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    float-to-double v9, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v6

    float-to-double v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v9, v11, v9

    double-to-float v7, v9

    mul-float v3, v7, v4

    .line 332
    iget v7, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    div-float/2addr v7, v4

    sub-float/2addr v8, v7

    float-to-double v7, v8

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double/2addr v11, v7

    double-to-float v7, v11

    mul-float v5, v7, v4

    .line 335
    .end local v6    # "factor":F
    :cond_cb
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 336
    const/high16 v5, 0x43b40000    # 360.0f

    .line 339
    :cond_d3
    iget-object v7, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    sub-float v8, v3, v2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 342
    .end local v1    # "oldProgress":F
    .end local v3    # "offset":F
    .end local v5    # "progress":F
    :goto_df
    if-eqz v0, :cond_e4

    .line 343
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 345
    :cond_e4
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 116
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 118
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    .local v0, "viewWidth":I
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 121
    .local v1, "viewHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 122
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 123
    .local v3, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 124
    .local v4, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 130
    .local v5, "heightSize":I
    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v2, v7, :cond_33

    .line 132
    move v8, v3

    goto :goto_3b

    .line 133
    :cond_33
    if-ne v2, v6, :cond_3a

    .line 135
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_3b

    .line 138
    :cond_3a
    move v8, v0

    .line 142
    .local v8, "width":I
    :goto_3b
    if-eq v4, v7, :cond_49

    if-ne v2, v7, :cond_40

    goto :goto_49

    .line 145
    :cond_40
    if-ne v4, v6, :cond_47

    .line 147
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_4a

    .line 150
    :cond_47
    move v6, v1

    goto :goto_4a

    .line 144
    :cond_49
    :goto_49
    move v6, v5

    .line 150
    .local v6, "height":I
    :goto_4a
    nop

    .line 153
    invoke-virtual {p0, v8, v6}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setMeasuredDimension(II)V

    .line 154
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 485
    instance-of v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    if-nez v0, :cond_8

    .line 486
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 487
    return-void

    .line 490
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    .line 491
    .local v0, "ss":Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;
    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 493
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 494
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 495
    iget-boolean v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 496
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 497
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 498
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 499
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 500
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 501
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 502
    iget-boolean v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    .line 503
    iget-boolean v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 506
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 464
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 466
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 469
    .local v1, "ss":Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iput v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    .line 470
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iput v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 471
    iget-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    iput-boolean v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    .line 472
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    iput v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    .line 473
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    iput v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    .line 474
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    iput v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    .line 475
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    iput v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    .line 476
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    iput v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    .line 477
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    iput v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    .line 478
    iget-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    iput-boolean v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    .line 479
    iget-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    iput-boolean v2, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    .line 481
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupBounds(II)V

    .line 165
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupPaints()V

    .line 166
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 167
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 348
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 350
    if-nez p2, :cond_b

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 353
    :cond_b
    return-void
.end method

.method public resetCount()V
    .registers 2

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 398
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 399
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 400
    return-void
.end method

.method public setBarColor(I)V
    .registers 3
    .param p1, "barColor"    # I

    .line 619
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 620
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupPaints()V

    .line 621
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_c

    .line 622
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 624
    :cond_c
    return-void
.end method

.method public setBarWidth(I)V
    .registers 3
    .param p1, "barWidth"    # I

    .line 600
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 601
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_9

    .line 602
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 604
    :cond_9
    return-void
.end method

.method public setCallback(Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;)V
    .registers 3
    .param p1, "progressCallback"    # Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    .line 258
    iput-object p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    .line 260
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_9

    .line 261
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback()V

    .line 263
    :cond_9
    return-void
.end method

.method public setCircleRadius(I)V
    .registers 3
    .param p1, "circleRadius"    # I

    .line 581
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 582
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_9

    .line 583
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 585
    :cond_9
    return-void
.end method

.method public setInstantProgress(F)V
    .registers 5
    .param p1, "progress"    # F

    .line 441
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 442
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 446
    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_12

    .line 447
    sub-float/2addr p1, v0

    goto :goto_17

    .line 448
    :cond_12
    cmpg-float v0, p1, v1

    if-gez v0, :cond_17

    .line 449
    const/4 p1, 0x0

    .line 452
    :cond_17
    :goto_17
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1e

    .line 453
    return-void

    .line 456
    :cond_1e
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v1, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 457
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 459
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 460
    return-void
.end method

.method public setLinearProgress(Z)V
    .registers 3
    .param p1, "isLinear"    # Z

    .line 562
    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    .line 563
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_9

    .line 564
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 566
    :cond_9
    return-void
.end method

.method public setProgress(F)V
    .registers 5
    .param p1, "progress"    # F

    .line 527
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 528
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 531
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback()V

    .line 534
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_15

    .line 535
    sub-float/2addr p1, v0

    goto :goto_1a

    .line 536
    :cond_15
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1a

    .line 537
    const/4 p1, 0x0

    .line 540
    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_21

    .line 541
    return-void

    .line 547
    :cond_21
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    .line 548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 551
    :cond_2f
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v1, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 553
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 554
    return-void
.end method

.method public setRimColor(I)V
    .registers 3
    .param p1, "rimColor"    # I

    .line 639
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 640
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupPaints()V

    .line 641
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_c

    .line 642
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 644
    :cond_c
    return-void
.end method

.method public setRimWidth(I)V
    .registers 3
    .param p1, "rimWidth"    # I

    .line 679
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 680
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_9

    .line 681
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 683
    :cond_9
    return-void
.end method

.method public setSpinSpeed(F)V
    .registers 3
    .param p1, "spinSpeed"    # F

    .line 663
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v0, v0, p1

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 664
    return-void
.end method

.method public spin()V
    .registers 3

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 418
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 419
    return-void
.end method

.method public stopSpinning()V
    .registers 2

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 407
    const/4 v0, 0x0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 408
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 409
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 410
    return-void
.end method

###### Class com.pnikosis.materialishprogress.ProgressWheel.AnonymousClass1 (com.pnikosis.materialishprogress.ProgressWheel$1)
.class synthetic Lcom/pnikosis/materialishprogress/ProgressWheel$1;
.super Ljava/lang/Object;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pnikosis/materialishprogress/ProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.pnikosis.materialishprogress.ProgressWheel.ProgressCallback (com.pnikosis.materialishprogress.ProgressWheel$ProgressCallback)
.class public interface abstract Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;
.super Ljava/lang/Object;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pnikosis/materialishprogress/ProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressCallback"
.end annotation


# virtual methods
.method public abstract onProgressUpdate(F)V
.end method

###### Class com.pnikosis.materialishprogress.ProgressWheel.WheelSavedState (com.pnikosis.materialishprogress.ProgressWheel$WheelSavedState)
.class Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pnikosis/materialishprogress/ProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WheelSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field barColor:I

.field barWidth:I

.field circleRadius:I

.field fillRadius:Z

.field isSpinning:Z

.field linearProgress:Z

.field mProgress:F

.field mTargetProgress:F

.field rimColor:I

.field rimWidth:I

.field spinSpeed:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 701
    new-instance v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState$1;

    invoke-direct {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 728
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_53

    const/4 v1, 0x1

    nop

    :cond_53
    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    .line 740
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pnikosis/materialishprogress/ProgressWheel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/pnikosis/materialishprogress/ProgressWheel$1;

    .line 699
    invoke-direct {p0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 724
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 725
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 743
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 744
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 745
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 746
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 747
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 748
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 754
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 755
    return-void
.end method

###### Class com.pnikosis.materialishprogress.ProgressWheel.WheelSavedState.AnonymousClass1 (com.pnikosis.materialishprogress.ProgressWheel$WheelSavedState$1)
.class final Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState$1;
.super Ljava/lang/Object;
.source "ProgressWheel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 704
    new-instance v0, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;Lcom/pnikosis/materialishprogress/ProgressWheel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;
    .registers 3
    .param p1, "size"    # I

    .line 708
    new-array v0, p1, [Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState$1;->newArray(I)[Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    move-result-object p1

    return-object p1
.end method
