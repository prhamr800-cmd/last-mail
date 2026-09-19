###### Class android.support.design.circularreveal.CircularRevealHelper (android.support.design.circularreveal.CircularRevealHelper)
.class public Landroid/support/design/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/circularreveal/CircularRevealHelper$Strategy;,
        Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field public static final BITMAP_SHADER:I = 0x0

.field public static final CLIP_PATH:I = 0x1

.field private static final DEBUG:Z = false

.field public static final REVEAL_ANIMATOR:I = 0x2

.field public static final STRATEGY:I


# instance fields
.field private buildingCircularRevealCache:Z

.field private debugPaint:Landroid/graphics/Paint;

.field private final delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

.field private hasCircularRevealCache:Z

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final revealPaint:Landroid/graphics/Paint;

.field private final revealPath:Landroid/graphics/Path;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 127
    const/4 v0, 0x2

    sput v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_17

    .line 128
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_14

    .line 129
    const/4 v0, 0x1

    sput v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_17

    .line 131
    :cond_14
    const/4 v0, 0x0

    sput v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 133
    :goto_17
    return-void
.end method

.method public constructor <init>(Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;)V
    .registers 5
    .param p1, "delegate"    # Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    .line 137
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 138
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 140
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 143
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    return-void
.end method

.method private drawDebugCircle(Landroid/graphics/Canvas;IF)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "color"    # I
    .param p3, "width"    # F

    .line 351
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 353
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 355
    return-void
.end method

.method private drawDebugMode(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 336
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 337
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 338
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 342
    :cond_1c
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 343
    const/high16 v0, -0x1000000

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, p1, v0, v1}, Landroid/support/design/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    .line 344
    const/high16 v0, -0x10000

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, v0, v1}, Landroid/support/design/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    .line 347
    :cond_30
    invoke-direct {p0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    .line 348
    return-void
.end method

.method private drawOverlayDrawable(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 303
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawOverlayDrawable()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 304
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 305
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 306
    .local v1, "translationX":F
    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 308
    .local v2, "translationY":F
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    neg-float v3, v1

    neg-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 312
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "translationX":F
    .end local v2    # "translationY":F
    :cond_31
    return-void
.end method

.method private getDistanceToFurthestCorner(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)F
    .registers 8
    .param p1, "revealInfo"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    .line 253
    iget v0, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    .line 253
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/design/widget/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v0

    return v0
.end method

.method private invalidateRevealInfo()V
    .registers 6

    .line 241
    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 242
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 243
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_21

    .line 244
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v3, v3, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 249
    :cond_21
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 250
    return-void
.end method

.method private shouldDrawCircularReveal()Z
    .registers 5

    .line 319
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 320
    .local v0, "invalidRevealInfo":Z
    :goto_12
    sget v3, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v3, :cond_1f

    .line 321
    if-nez v0, :cond_1e

    iget-boolean v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    if-eqz v3, :cond_1e

    const/4 v1, 0x1

    nop

    :cond_1e
    return v1

    .line 323
    :cond_1f
    if-nez v0, :cond_23

    const/4 v1, 0x1

    nop

    :cond_23
    return v1
.end method

.method private shouldDrawOverlayDrawable()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private shouldDrawScrim()Z
    .registers 2

    .line 328
    iget-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public buildCircularRevealCache()V
    .registers 8

    .line 152
    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_57

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 156
    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 157
    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 159
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_43

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_43

    .line 160
    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 161
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v3, "canvas":Landroid/graphics/Canvas;
    iget-object v4, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 165
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_43
    if-eqz v2, :cond_53

    .line 166
    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v2, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 169
    :cond_53
    iput-boolean v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 170
    iput-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 172
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_57
    return-void
.end method

.method public destroyCircularRevealCache()V
    .registers 3

    .line 175
    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_17

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 177
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 178
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 181
    :cond_17
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 263
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 264
    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    packed-switch v0, :pswitch_data_c4

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported strategy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :pswitch_24
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 268
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_bf

    .line 272
    :pswitch_47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 273
    .local v0, "count":I
    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 275
    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v1, p1}, Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 276
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 277
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    :cond_71
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 281
    goto :goto_bf

    .line 283
    .end local v0    # "count":I
    :pswitch_75
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 285
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_bf

    .line 293
    :cond_9e
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 295
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 299
    :cond_bf
    :goto_bf
    invoke-direct {p0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    .line 300
    return-void

    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_75
        :pswitch_47
        :pswitch_24
    .end packed-switch
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 227
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 209
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_6

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_6
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, v1}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 214
    .local v0, "revealInfo":Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 215
    invoke-direct {p0, v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result v1

    iput v1, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 217
    :cond_19
    return-object v0
.end method

.method public isOpaque()Z
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0}, Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 236
    iput-object p1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 238
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 221
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 223
    return-void
.end method

.method public setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 5
    .param p1, "revealInfo"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    if-nez p1, :cond_6

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_2d

    .line 191
    :cond_6
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_12

    .line 192
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, p1}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_17

    .line 194
    :cond_12
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->set(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 198
    :goto_17
    iget v0, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 199
    invoke-direct {p0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    .line 198
    invoke-static {v0, v1, v2}, Landroid/support/design/widget/MathUtils;->geq(FFF)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 200
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 204
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->invalidateRevealInfo()V

    .line 205
    return-void
.end method

###### Class android.support.design.circularreveal.CircularRevealHelper.Delegate (android.support.design.circularreveal.CircularRevealHelper$Delegate)
.class interface abstract Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract actualDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract actualIsOpaque()Z
.end method

###### Class android.support.design.circularreveal.CircularRevealHelper.Strategy (android.support.design.circularreveal.CircularRevealHelper$Strategy)
.class public interface abstract annotation Landroid/support/design/circularreveal/CircularRevealHelper$Strategy;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Strategy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
