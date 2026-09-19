###### Class android.support.design.chip.ChipDrawable (android.support.design.chip.ChipDrawable)
.class public Landroid/support/design/chip/ChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ChipDrawable.java"

# interfaces
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/ChipDrawable$Delegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_STATE:[I

.field private static final NAMESPACE_APP:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private alpha:I

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private checkedIconVisible:Z

.field private chipBackgroundColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private chipCornerRadius:F

.field private chipEndPadding:F

.field private chipIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private chipIconSize:F

.field private chipIconTint:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private chipIconVisible:Z

.field private chipMinHeight:F

.field private final chipPaint:Landroid/graphics/Paint;

.field private chipStartPadding:F

.field private chipStrokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private chipStrokeWidth:F

.field private closeIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private closeIconContentDescription:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private closeIconEndPadding:F

.field private closeIconSize:F

.field private closeIconStartPadding:F

.field private closeIconStateSet:[I

.field private closeIconTint:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private closeIconVisible:Z

.field private colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private compatRippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentChecked:Z

.field private currentChipBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private currentChipStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private currentCompatRippleColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private currentTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private currentTint:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final debugPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/design/chip/ChipDrawable$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private hideMotionSpec:Landroid/support/design/animation/MotionSpec;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private iconEndPadding:F

.field private iconStartPadding:F

.field private maxWidth:I

.field private final pointF:Landroid/graphics/PointF;

.field private rawText:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private shouldDrawText:Z

.field private showMotionSpec:Landroid/support/design/animation/MotionSpec;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private textAppearance:Landroid/support/design/resources/TextAppearance;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private textEndPadding:F

.field private final textPaint:Landroid/text/TextPaint;

.field private textStartPadding:F

.field private textWidth:F

.field private textWidthDirty:Z

.field private tint:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private tintMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private truncateAt:Landroid/text/TextUtils$TruncateAt;

.field private unicodeWrappedText:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private useCompatRipple:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/chip/ChipDrawable;->DEFAULT_STATE:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 325
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 177
    new-instance v0, Landroid/support/design/chip/ChipDrawable$1;

    invoke-direct {v0, p0}, Landroid/support/design/chip/ChipDrawable$1;-><init>(Landroid/support/design/chip/ChipDrawable;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    .line 245
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    .line 246
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 248
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 249
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 250
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 259
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    .line 263
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 267
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 268
    iput-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    .line 326
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 327
    const-string v0, ""

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    .line 329
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v0, Landroid/text/TextPaint;->density:F

    .line 330
    iput-object v2, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 331
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_61

    .line 332
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    :cond_61
    sget-object v0, Landroid/support/design/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setState([I)Z

    .line 336
    sget-object v0, Landroid/support/design/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCloseIconState([I)Z

    .line 337
    iput-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->shouldDrawText:Z

    .line 338
    return-void
.end method

.method static synthetic access$002(Landroid/support/design/chip/ChipDrawable;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipDrawable;
    .param p1, "x1"    # Z

    .line 158
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    return p1
.end method

.method private applyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1210
    if-eqz p1, :cond_3f

    .line 1211
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1212
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1213
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1214
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1216
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_32

    .line 1217
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1218
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1220
    :cond_2c
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_3f

    .line 1222
    :cond_32
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1223
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1227
    :cond_3f
    :goto_3f
    return-void
.end method

.method private calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 751
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 753
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 754
    :cond_f
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    add-float/2addr v0, v1

    .line 756
    .local v0, "offsetFromStart":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_28

    .line 757
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 758
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_35

    .line 760
    :cond_28
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 761
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 764
    :goto_35
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 765
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 767
    .end local v0    # "offsetFromStart":F
    :cond_48
    return-void
.end method

.method private calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 858
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 860
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 861
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 868
    .local v0, "offsetFromEnd":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_24

    .line 869
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2a

    .line 871
    :cond_24
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 874
    .end local v0    # "offsetFromEnd":F
    :cond_2a
    :goto_2a
    return-void
.end method

.method private calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 839
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 841
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 842
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    .line 844
    .local v0, "offsetFromEnd":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_22

    .line 845
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 846
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_2f

    .line 848
    :cond_22
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 849
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 852
    :goto_2f
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 853
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 855
    .end local v0    # "offsetFromEnd":F
    :cond_42
    return-void
.end method

.method private calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 877
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 879
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 880
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 887
    .local v0, "offsetFromEnd":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_28

    .line 888
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 889
    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_33

    .line 891
    :cond_28
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 892
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 895
    :goto_33
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 896
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 898
    .end local v0    # "offsetFromEnd":F
    :cond_3d
    return-void
.end method

.method private calculateCloseIconWidth()F
    .registers 3

    .line 545
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 546
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    return v0

    .line 548
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 813
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 815
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_44

    .line 816
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 817
    .local v0, "offsetFromStart":F
    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v1, v2

    .line 819
    .local v1, "offsetFromEnd":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_2e

    .line 820
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 821
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->right:F

    goto :goto_3a

    .line 823
    :cond_2e
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 824
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    .line 829
    :goto_3a
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 830
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->bottom:F

    .line 832
    .end local v0    # "offsetFromStart":F
    .end local v1    # "offsetFromEnd":F
    :cond_44
    return-void
.end method

.method private calculateTextCenterFromBaseline()F
    .registers 3

    .line 804
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 805
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private calculateTextWidth(Ljava/lang/CharSequence;)F
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 533
    if-nez p1, :cond_4

    .line 534
    const/4 v0, 0x0

    return v0

    .line 537
    :cond_4
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method private canShowCheckedIcon()Z
    .registers 2

    .line 510
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconVisible:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/design/chip/ChipDrawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 277
    new-instance v0, Landroid/support/design/chip/ChipDrawable;

    invoke-direct {v0, p0}, Landroid/support/design/chip/ChipDrawable;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, "chip":Landroid/support/design/chip/ChipDrawable;
    invoke-direct {v0, p1, p2, p3}, Landroid/support/design/chip/ChipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    .line 279
    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Landroid/support/design/chip/ChipDrawable;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .line 296
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 300
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 301
    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 302
    :cond_12
    if-ne v1, v2, :cond_3c

    .line 306
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chip"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 310
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 311
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-interface {v2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    .line 312
    .local v3, "style":I
    if-nez v3, :cond_2d

    .line 313
    sget v4, Landroid/support/design/R$style;->Widget_MaterialComponents_Chip_Entry:I

    move v3, v4

    .line 316
    :cond_2d
    sget v4, Landroid/support/design/R$attr;->chipStandaloneStyle:I

    invoke-static {p0, v2, v4, v3}, Landroid/support/design/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/design/chip/ChipDrawable;

    move-result-object v4

    return-object v4

    .line 307
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "style":I
    :cond_34
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Must have a <chip> start tag"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_3c
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_44} :catch_44
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_44} :catch_44

    .line 317
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "type":I
    :catch_44
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load chip resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 321
    throw v1
.end method

.method private drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 648
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 649
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 650
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 651
    .local v0, "tx":F
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 653
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 655
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 656
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 658
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 660
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_34
    return-void
.end method

.method private drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 597
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 598
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 599
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 600
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 601
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 602
    return-void
.end method

.method private drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 633
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 634
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 635
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 636
    .local v0, "tx":F
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 638
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 640
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 641
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 643
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 645
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_34
    return-void
.end method

.method private drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 609
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4e

    .line 610
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 612
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 613
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 620
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 621
    .local v0, "strokeCornerRadius":F
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 623
    .end local v0    # "strokeCornerRadius":F
    :cond_4e
    return-void
.end method

.method private drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 695
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 696
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 697
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 698
    .local v0, "tx":F
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 700
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 702
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 703
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 705
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 707
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_34
    return-void
.end method

.method private drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 626
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 629
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 630
    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 710
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_87

    .line 711
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 717
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 718
    :cond_22
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 719
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 723
    :cond_2e
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_46

    .line 724
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    .line 725
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 724
    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 729
    :cond_46
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 730
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 731
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 735
    :cond_58
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 736
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 737
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 740
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 741
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 742
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 744
    :cond_87
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 664
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7f

    .line 665
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 668
    .local v0, "align":Landroid/graphics/Paint$Align;
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Landroid/support/design/chip/ChipDrawable;->calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 670
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eqz v1, :cond_26

    .line 671
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 672
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/design/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V

    .line 674
    :cond_26
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 676
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTextWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-le v1, v2, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    .line 677
    .local v1, "clip":Z
    :goto_42
    const/4 v2, 0x0

    .line 678
    .local v2, "saveCount":I
    if-eqz v1, :cond_4e

    .line 679
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 680
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 683
    :cond_4e
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    .line 684
    .local v3, "finalText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_66

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    if-eqz v4, :cond_66

    .line 685
    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Landroid/support/design/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 687
    :cond_66
    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v9, v4, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v4, p1

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 688
    if-eqz v1, :cond_7f

    .line 689
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 692
    .end local v0    # "align":Landroid/graphics/Paint$Align;
    .end local v1    # "clip":Z
    .end local v2    # "saveCount":I
    .end local v3    # "finalText":Ljava/lang/CharSequence;
    :cond_7f
    return-void
.end method

.method private getTextWidth()F
    .registers 2

    .line 522
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    if-nez v0, :cond_7

    .line 523
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidth:F

    return v0

    .line 526
    :cond_7
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->calculateTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidth:F

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    .line 529
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidth:F

    return v0
.end method

.method private getTintColorFilter()Landroid/graphics/ColorFilter;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1235
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_9
    return-object v0
.end method

.method private static hasState([II)Z
    .registers 6
    .param p0, "stateSet"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "state"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 1245
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1246
    return v0

    .line 1249
    :cond_4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 1250
    .local v3, "s":I
    if-ne v3, p1, :cond_e

    .line 1251
    const/4 v0, 0x1

    return v0

    .line 1249
    .end local v3    # "s":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1254
    :cond_11
    return v0
.end method

.method private static isStateful(Landroid/content/res/ColorStateList;)Z
    .registers 2
    .param p0, "colorStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1038
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isStateful(Landroid/graphics/drawable/Drawable;)Z
    .registers 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1042
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isStateful(Landroid/support/design/resources/TextAppearance;)Z
    .registers 2
    .param p0, "textAppearance"    # Landroid/support/design/resources/TextAppearance;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1046
    if-eqz p0, :cond_10

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 1048
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1046
    :goto_11
    return v0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 342
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget-object v2, Landroid/support/design/R$styleable;->Chip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 343
    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 346
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v2, Landroid/support/design/R$styleable;->Chip_chipBackgroundColor:I

    .line 347
    invoke-static {v1, v0, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 346
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 348
    sget v1, Landroid/support/design/R$styleable;->Chip_chipMinHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 349
    sget v1, Landroid/support/design/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 350
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Landroid/support/design/R$styleable;->Chip_chipStrokeColor:I

    .line 351
    invoke-static {v1, v0, v3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 350
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 352
    sget v1, Landroid/support/design/R$styleable;->Chip_chipStrokeWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 353
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Landroid/support/design/R$styleable;->Chip_rippleColor:I

    invoke-static {v1, v0, v3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 355
    sget v1, Landroid/support/design/R$styleable;->Chip_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Landroid/support/design/R$styleable;->Chip_android_textAppearance:I

    .line 357
    invoke-static {v1, v0, v3}, Landroid/support/design/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/resources/TextAppearance;

    move-result-object v1

    .line 356
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setTextAppearance(Landroid/support/design/resources/TextAppearance;)V

    .line 359
    sget v1, Landroid/support/design/R$styleable;->Chip_android_ellipsize:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 361
    .local v1, "ellipsize":I
    packed-switch v1, :pswitch_data_1b4

    goto :goto_7b

    .line 369
    :pswitch_69
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 370
    goto :goto_7b

    .line 366
    :pswitch_6f
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 367
    goto :goto_7b

    .line 363
    :pswitch_75
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 364
    nop

    .line 377
    :goto_7b
    sget v3, Landroid/support/design/R$styleable;->Chip_chipIconVisible:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 380
    if-eqz p1, :cond_a3

    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "chipIconEnabled"

    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a3

    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "chipIconVisible"

    .line 381
    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a3

    .line 382
    sget v3, Landroid/support/design/R$styleable;->Chip_chipIconEnabled:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 384
    :cond_a3
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/R$styleable;->Chip_chipIcon:I

    invoke-static {v3, v0, v4}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/R$styleable;->Chip_chipIconTint:I

    invoke-static {v3, v0, v4}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 386
    sget v3, Landroid/support/design/R$styleable;->Chip_chipIconSize:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setChipIconSize(F)V

    .line 388
    sget v3, Landroid/support/design/R$styleable;->Chip_closeIconVisible:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 392
    if-eqz p1, :cond_ea

    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "closeIconEnabled"

    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ea

    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "closeIconVisible"

    .line 393
    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ea

    .line 394
    sget v3, Landroid/support/design/R$styleable;->Chip_closeIconEnabled:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 396
    :cond_ea
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/R$styleable;->Chip_closeIcon:I

    invoke-static {v3, v0, v4}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/R$styleable;->Chip_closeIconTint:I

    .line 398
    invoke-static {v3, v0, v4}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 397
    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 399
    sget v3, Landroid/support/design/R$styleable;->Chip_closeIconSize:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 401
    sget v3, Landroid/support/design/R$styleable;->Chip_android_checkable:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCheckable(Z)V

    .line 402
    sget v3, Landroid/support/design/R$styleable;->Chip_checkedIconVisible:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 406
    if-eqz p1, :cond_13a

    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "checkedIconEnabled"

    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13a

    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "checkedIconVisible"

    .line 407
    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13a

    .line 408
    sget v3, Landroid/support/design/R$styleable;->Chip_checkedIconEnabled:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 410
    :cond_13a
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/R$styleable;->Chip_checkedIcon:I

    invoke-static {v3, v0, v4}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/R$styleable;->Chip_showMotionSpec:I

    invoke-static {v3, v0, v4}, Landroid/support/design/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 413
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/R$styleable;->Chip_hideMotionSpec:I

    invoke-static {v3, v0, v4}, Landroid/support/design/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 415
    sget v3, Landroid/support/design/R$styleable;->Chip_chipStartPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 416
    sget v3, Landroid/support/design/R$styleable;->Chip_iconStartPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 417
    sget v3, Landroid/support/design/R$styleable;->Chip_iconEndPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 418
    sget v3, Landroid/support/design/R$styleable;->Chip_textStartPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 419
    sget v3, Landroid/support/design/R$styleable;->Chip_textEndPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 420
    sget v3, Landroid/support/design/R$styleable;->Chip_closeIconStartPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 421
    sget v3, Landroid/support/design/R$styleable;->Chip_closeIconEndPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 422
    sget v3, Landroid/support/design/R$styleable;->Chip_chipEndPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/design/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 424
    sget v2, Landroid/support/design/R$styleable;->Chip_android_maxWidth:I

    const v3, 0x7fffffff

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/design/chip/ChipDrawable;->setMaxWidth(I)V

    .line 426
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 427
    return-void

    nop

    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6f
        :pswitch_69
    .end packed-switch
.end method

.method private onStateChange([I[I)Z
    .registers 14
    .param p1, "chipState"    # [I
    .param p2, "closeIconState"    # [I

    .line 958
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 959
    .local v0, "invalidate":Z
    const/4 v1, 0x0

    .line 961
    .local v1, "sizeChanged":Z
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    iget v4, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 963
    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 965
    .local v2, "newChipBackgroundColor":I
    :goto_14
    iget v4, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    if-eq v4, v2, :cond_1b

    .line 966
    iput v2, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 967
    const/4 v0, 0x1

    .line 970
    :cond_1b
    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_28

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    iget v5, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 972
    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 974
    .local v4, "newChipStrokeColor":I
    :goto_29
    iget v5, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    if-eq v5, v4, :cond_30

    .line 975
    iput v4, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 976
    const/4 v0, 0x1

    .line 979
    :cond_30
    iget-object v5, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_3d

    iget-object v5, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    iget v6, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 981
    invoke-virtual {v5, p1, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    goto :goto_3e

    :cond_3d
    const/4 v5, 0x0

    .line 983
    .local v5, "newCompatRippleColor":I
    :goto_3e
    iget v6, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    if-eq v6, v5, :cond_49

    .line 984
    iput v5, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 985
    iget-boolean v6, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v6, :cond_49

    .line 986
    const/4 v0, 0x1

    .line 990
    :cond_49
    iget-object v6, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eqz v6, :cond_5e

    iget-object v6, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    iget-object v6, v6, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_5e

    iget-object v6, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    iget-object v6, v6, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iget v7, p0, Landroid/support/design/chip/ChipDrawable;->currentTextColor:I

    .line 992
    invoke-virtual {v6, p1, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    goto :goto_5f

    :cond_5e
    const/4 v6, 0x0

    .line 994
    .local v6, "newTextColor":I
    :goto_5f
    iget v7, p0, Landroid/support/design/chip/ChipDrawable;->currentTextColor:I

    if-eq v7, v6, :cond_66

    .line 995
    iput v6, p0, Landroid/support/design/chip/ChipDrawable;->currentTextColor:I

    .line 996
    const/4 v0, 0x1

    .line 999
    :cond_66
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v7

    const v8, 0x10100a0

    invoke-static {v7, v8}, Landroid/support/design/chip/ChipDrawable;->hasState([II)Z

    move-result v7

    if-eqz v7, :cond_79

    iget-boolean v7, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    if-eqz v7, :cond_79

    const/4 v7, 0x1

    goto :goto_7a

    :cond_79
    const/4 v7, 0x0

    .line 1000
    .local v7, "newChecked":Z
    :goto_7a
    iget-boolean v8, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    if-eq v8, v7, :cond_92

    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_92

    .line 1001
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v8

    .line 1002
    .local v8, "oldChipIconWidth":F
    iput-boolean v7, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    .line 1003
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v9

    .line 1004
    .local v9, "newChipIconWidth":F
    const/4 v0, 0x1

    .line 1006
    cmpl-float v10, v8, v9

    if-eqz v10, :cond_92

    .line 1007
    const/4 v1, 0x1

    .line 1011
    .end local v8    # "oldChipIconWidth":F
    .end local v9    # "newChipIconWidth":F
    :cond_92
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_9f

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget v8, p0, Landroid/support/design/chip/ChipDrawable;->currentTint:I

    invoke-virtual {v3, p1, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    nop

    .line 1012
    .local v3, "newTint":I
    :cond_9f
    iget v8, p0, Landroid/support/design/chip/ChipDrawable;->currentTint:I

    if-eq v8, v3, :cond_b0

    .line 1013
    iput v3, p0, Landroid/support/design/chip/ChipDrawable;->currentTint:I

    .line 1014
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget-object v9, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v8, v9}, Landroid/support/design/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v8

    iput-object v8, p0, Landroid/support/design/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1015
    const/4 v0, 0x1

    .line 1018
    :cond_b0
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_bf

    .line 1019
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 1021
    :cond_bf
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 1022
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 1024
    :cond_ce
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 1025
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 1028
    :cond_dd
    if-eqz v0, :cond_e2

    .line 1029
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1031
    :cond_e2
    if-eqz v1, :cond_e7

    .line 1032
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1034
    :cond_e7
    return v0
.end method

.method private showsCheckedIcon()Z
    .registers 2

    .line 500
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconVisible:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private showsChipIcon()Z
    .registers 2

    .line 495
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconVisible:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private showsCloseIcon()Z
    .registers 2

    .line 505
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconVisible:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1203
    if-eqz p1, :cond_6

    .line 1204
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1206
    :cond_6
    return-void
.end method

.method private updateCompatRippleColor()V
    .registers 2

    .line 1239
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1240
    invoke-static {v0}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 1241
    return-void
.end method


# virtual methods
.method calculateChipIconWidth()F
    .registers 3

    .line 515
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    .line 518
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 516
    :cond_f
    :goto_f
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    add-float/2addr v0, v1

    return v0
.end method

.method calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "pointF"    # Landroid/graphics/PointF;

    .line 771
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 772
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 774
    .local v0, "align":Landroid/graphics/Paint$Align;
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_37

    .line 775
    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v1, v2

    .line 777
    .local v1, "offsetFromStart":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_23

    .line 778
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 779
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_2b

    .line 781
    :cond_23
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 782
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 785
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateTextCenterFromBaseline()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/PointF;->y:F

    .line 788
    .end local v1    # "offsetFromStart":F
    :cond_37
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 553
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 554
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getAlpha()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4f

    .line 558
    :cond_11
    const/4 v1, 0x0

    .line 559
    .local v1, "saveCount":I
    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    const/16 v3, 0xff

    if-ge v2, v3, :cond_2b

    .line 560
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v2

    iget v9, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    .line 561
    move-object v4, p1

    invoke-static/range {v4 .. v9}, Landroid/support/design/canvas/CanvasCompat;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    move-result v1

    .line 566
    :cond_2b
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 569
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 572
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 575
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 578
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 581
    iget-boolean v2, p0, Landroid/support/design/chip/ChipDrawable;->shouldDrawText:Z

    if-eqz v2, :cond_41

    .line 582
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 586
    :cond_41
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 589
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 591
    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    if-ge v2, v3, :cond_4e

    .line 592
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 594
    :cond_4e
    return-void

    .line 555
    .end local v1    # "saveCount":I
    :cond_4f
    :goto_4f
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1126
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1747
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1268
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipCornerRadius()F
    .registers 2

    .line 1299
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    return v0
.end method

.method public getChipEndPadding()F
    .registers 2

    .line 1924
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1466
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getChipIconSize()F
    .registers 2

    .line 1527
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1495
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipMinHeight()F
    .registers 2

    .line 1283
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    return v0
.end method

.method public getChipStartPadding()F
    .registers 2

    .line 1798
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1315
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipStrokeWidth()F
    .registers 2

    .line 1330
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    return v0
.end method

.method public getChipTouchBounds(Landroid/graphics/RectF;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 461
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/design/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 462
    return-void
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1595
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1671
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .registers 2

    .line 1906
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    return v0
.end method

.method public getCloseIconSize()F
    .registers 2

    .line 1643
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    return v0
.end method

.method public getCloseIconStartPadding()F
    .registers 2

    .line 1888
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    return v0
.end method

.method public getCloseIconState()[I
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 944
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStateSet:[I

    return-object v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1623
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 469
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 470
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1140
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    .line 1411
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getHideMotionSpec()Landroid/support/design/animation/MotionSpec;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1786
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object v0
.end method

.method public getIconEndPadding()F
    .registers 2

    .line 1835
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    return v0
.end method

.method public getIconStartPadding()F
    .registers 2

    .line 1814
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 490
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    .line 475
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    .line 478
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 480
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTextWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 482
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    add-float/2addr v0, v1

    .line 476
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 484
    .local v0, "calculatedWidth":I
    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->maxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getMaxWidth()I
    .registers 2
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 1942
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->maxWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1162
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 10
    .param p1, "outline"    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1168
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1169
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1170
    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_20

    .line 1172
    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1175
    :goto_20
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1176
    return-void
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1349
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShowMotionSpec()Landroid/support/design/animation/MotionSpec;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1773
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1366
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAppearance()Landroid/support/design/resources/TextAppearance;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1389
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    return-object v0
.end method

.method public getTextEndPadding()F
    .registers 2

    .line 1872
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    return v0
.end method

.method public getTextStartPadding()F
    .registers 2

    .line 1856
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    return v0
.end method

.method public getUseCompatRipple()Z
    .registers 2

    .line 440
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1180
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1181
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 1182
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1184
    :cond_9
    return-void
.end method

.method public isCheckable()Z
    .registers 2

    .line 1675
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    return v0
.end method

.method public isCheckedIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1706
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCheckedIconVisible()Z
    .registers 2

    .line 1700
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconVisible:Z

    return v0
.end method

.method public isChipIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1425
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v0

    return v0
.end method

.method public isChipIconVisible()Z
    .registers 2

    .line 1419
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconVisible:Z

    return v0
.end method

.method public isCloseIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1554
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCloseIconStateful()Z
    .registers 2

    .line 924
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public isCloseIconVisible()Z
    .registers 2

    .line 1548
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconVisible:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 908
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 909
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 910
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_45

    :cond_1c
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    .line 911
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/support/design/resources/TextAppearance;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 912
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->canShowCheckedIcon()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 913
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 914
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 915
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    const/4 v0, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v0, 0x1

    .line 908
    :goto_46
    return v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 4
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1054
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 1056
    .local v0, "invalidate":Z
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1057
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1059
    :cond_11
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1060
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1062
    :cond_1e
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1063
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1066
    :cond_2b
    if-eqz v0, :cond_30

    .line 1067
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1069
    :cond_30
    const/4 v1, 0x1

    return v1
.end method

.method protected onLevelChange(I)Z
    .registers 4
    .param p1, "level"    # I

    .line 1074
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 1076
    .local v0, "invalidate":Z
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1077
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1079
    :cond_11
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1080
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1082
    :cond_1e
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1083
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1086
    :cond_2b
    if-eqz v0, :cond_30

    .line 1087
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1089
    :cond_30
    return v0
.end method

.method protected onSizeChange()V
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/chip/ChipDrawable$Delegate;

    .line 451
    .local v0, "delegate":Landroid/support/design/chip/ChipDrawable$Delegate;
    if-eqz v0, :cond_d

    .line 452
    invoke-interface {v0}, Landroid/support/design/chip/ChipDrawable$Delegate;->onChipDrawableSizeChange()V

    .line 454
    :cond_d
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 3
    .param p1, "state"    # [I

    .line 949
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .line 1188
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1189
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 1190
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1192
    :cond_9
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 1118
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    if-eq v0, p1, :cond_9

    .line 1119
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    .line 1120
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1122
    :cond_9
    return-void
.end method

.method public setCheckable(Z)V
    .registers 5
    .param p1, "checkable"    # Z

    .line 1683
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    if-eq v0, p1, :cond_21

    .line 1684
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    .line 1686
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1687
    .local v0, "oldChipIconWidth":F
    if-nez p1, :cond_13

    iget-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    if-eqz v1, :cond_13

    .line 1688
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    .line 1690
    :cond_13
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1692
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1693
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_21

    .line 1694
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1697
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_21
    return-void
.end method

.method public setCheckableResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1679
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCheckable(Z)V

    .line 1680
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "checkedIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1755
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 1756
    .local v0, "oldCheckedIcon":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_22

    .line 1757
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1758
    .local v1, "oldChipIconWidth":F
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 1759
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    .line 1761
    .local v2, "newChipIconWidth":F
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1762
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1764
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1765
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_22

    .line 1766
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1769
    .end local v1    # "oldChipIconWidth":F
    .end local v2    # "newChipIconWidth":F
    :cond_22
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .registers 2
    .param p1, "checkedIconEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1742
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 1743
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1736
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 1737
    return-void
.end method

.method public setCheckedIconResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1751
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1752
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1710
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 1711
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .registers 6
    .param p1, "checkedIconVisible"    # Z

    .line 1714
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconVisible:Z

    if-eq v0, p1, :cond_28

    .line 1715
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    .line 1716
    .local v0, "oldShowsCheckedIcon":Z
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconVisible:Z

    .line 1717
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    .line 1719
    .local v1, "newShowsCheckedIcon":Z
    if-eq v0, v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1720
    .local v2, "changed":Z
    :goto_13
    if-eqz v2, :cond_28

    .line 1721
    if-eqz v1, :cond_1d

    .line 1722
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 1724
    :cond_1d
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1727
    :goto_22
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1728
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1731
    .end local v0    # "oldShowsCheckedIcon":Z
    .end local v1    # "newShowsCheckedIcon":Z
    .end local v2    # "changed":Z
    :cond_28
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "chipBackgroundColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1276
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_d

    .line 1277
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1278
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1280
    :cond_d
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1272
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 1273
    return-void
.end method

.method public setChipCornerRadius(F)V
    .registers 3
    .param p1, "chipCornerRadius"    # F

    .line 1307
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 1308
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    .line 1309
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1311
    :cond_b
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1303
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 1304
    return-void
.end method

.method public setChipEndPadding(F)V
    .registers 3
    .param p1, "chipEndPadding"    # F

    .line 1932
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 1933
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    .line 1934
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1935
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1937
    :cond_e
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1928
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 1929
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "chipIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1474
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1475
    .local v0, "oldChipIcon":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_34

    .line 1476
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1477
    .local v1, "oldChipIconWidth":F
    if-eqz p1, :cond_15

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    iput-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 1478
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    .line 1480
    .local v2, "newChipIconWidth":F
    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1481
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1482
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1485
    :cond_2a
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1486
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_34

    .line 1487
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1490
    .end local v1    # "oldChipIconWidth":F
    .end local v2    # "newChipIconWidth":F
    :cond_34
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .registers 2
    .param p1, "chipIconEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1461
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 1462
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .registers 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1455
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconVisible(I)V

    .line 1456
    return-void
.end method

.method public setChipIconResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1470
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1471
    return-void
.end method

.method public setChipIconSize(F)V
    .registers 5
    .param p1, "chipIconSize"    # F

    .line 1535
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1a

    .line 1536
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1537
    .local v0, "oldChipIconWidth":F
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    .line 1538
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1540
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1541
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1a

    .line 1542
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1545
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_1a
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1531
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipIconSize(F)V

    .line 1532
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "chipIconTint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1515
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_18

    .line 1516
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 1518
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1519
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1522
    :cond_11
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1524
    :cond_18
    return-void
.end method

.method public setChipIconTintResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1505
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 1506
    return-void
.end method

.method public setChipIconVisible(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1429
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 1430
    return-void
.end method

.method public setChipIconVisible(Z)V
    .registers 6
    .param p1, "chipIconVisible"    # Z

    .line 1433
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconVisible:Z

    if-eq v0, p1, :cond_28

    .line 1434
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    .line 1435
    .local v0, "oldShowsChipIcon":Z
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconVisible:Z

    .line 1436
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    .line 1438
    .local v1, "newShowsChipIcon":Z
    if-eq v0, v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1439
    .local v2, "changed":Z
    :goto_13
    if-eqz v2, :cond_28

    .line 1440
    if-eqz v1, :cond_1d

    .line 1441
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 1443
    :cond_1d
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1446
    :goto_22
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1447
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1450
    .end local v0    # "oldShowsChipIcon":Z
    .end local v1    # "newShowsChipIcon":Z
    .end local v2    # "changed":Z
    :cond_28
    return-void
.end method

.method public setChipMinHeight(F)V
    .registers 3
    .param p1, "chipMinHeight"    # F

    .line 1291
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 1292
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    .line 1293
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1294
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1296
    :cond_e
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1287
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 1288
    return-void
.end method

.method public setChipStartPadding(F)V
    .registers 3
    .param p1, "chipStartPadding"    # F

    .line 1806
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 1807
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    .line 1808
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1809
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1811
    :cond_e
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1802
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 1803
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "chipStrokeColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1323
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_d

    .line 1324
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 1325
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1327
    :cond_d
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1319
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1320
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .registers 3
    .param p1, "chipStrokeWidth"    # F

    .line 1338
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_10

    .line 1339
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    .line 1341
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1343
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1345
    :cond_10
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1334
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 1335
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "closeIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1603
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1604
    .local v0, "oldCloseIcon":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_34

    .line 1605
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    .line 1606
    .local v1, "oldCloseIconWidth":F
    if-eqz p1, :cond_15

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    iput-object v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 1607
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v2

    .line 1609
    .local v2, "newCloseIconWidth":F
    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1610
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1611
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1614
    :cond_2a
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1615
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_34

    .line 1616
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1619
    .end local v1    # "oldCloseIconWidth":F
    .end local v2    # "newCloseIconWidth":F
    :cond_34
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "closeIconContentDescription"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1661
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_12

    .line 1662
    nop

    .line 1663
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    .line 1665
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1667
    :cond_12
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .registers 2
    .param p1, "closeIconEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1590
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 1591
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .registers 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1584
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconVisible(I)V

    .line 1585
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .registers 3
    .param p1, "closeIconEndPadding"    # F

    .line 1914
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_14

    .line 1915
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    .line 1916
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1917
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1918
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1921
    :cond_14
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1910
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 1911
    return-void
.end method

.method public setCloseIconResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1599
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1600
    return-void
.end method

.method public setCloseIconSize(F)V
    .registers 3
    .param p1, "closeIconSize"    # F

    .line 1651
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_14

    .line 1652
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    .line 1653
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1654
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1655
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1658
    :cond_14
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1647
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 1648
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .registers 3
    .param p1, "closeIconStartPadding"    # F

    .line 1896
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_14

    .line 1897
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    .line 1898
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1899
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1900
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1903
    :cond_14
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1892
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 1893
    return-void
.end method

.method public setCloseIconState([I)Z
    .registers 3
    .param p1, "stateSet"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 932
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 933
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStateSet:[I

    .line 934
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 935
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result v0

    return v0

    .line 938
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "closeIconTint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1631
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_18

    .line 1632
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 1634
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1635
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1638
    :cond_11
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1640
    :cond_18
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1627
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 1628
    return-void
.end method

.method public setCloseIconVisible(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1558
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 1559
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .registers 6
    .param p1, "closeIconVisible"    # Z

    .line 1562
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconVisible:Z

    if-eq v0, p1, :cond_28

    .line 1563
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    .line 1564
    .local v0, "oldShowsCloseIcon":Z
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconVisible:Z

    .line 1565
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    .line 1567
    .local v1, "newShowsCloseIcon":Z
    if-eq v0, v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1568
    .local v2, "changed":Z
    :goto_13
    if-eqz v2, :cond_28

    .line 1569
    if-eqz v1, :cond_1d

    .line 1570
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 1572
    :cond_1d
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1575
    :goto_22
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1576
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1579
    .end local v0    # "oldShowsCloseIcon":Z
    .end local v1    # "newShowsCloseIcon":Z
    .end local v2    # "changed":Z
    :cond_28
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1131
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_9

    .line 1132
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1133
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1135
    :cond_9
    return-void
.end method

.method public setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V
    .registers 3
    .param p1, "delegate"    # Landroid/support/design/chip/ChipDrawable$Delegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 445
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 446
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 2
    .param p1, "truncateAt"    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1415
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 1416
    return-void
.end method

.method public setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .registers 2
    .param p1, "hideMotionSpec"    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1794
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 1795
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1790
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 1791
    return-void
.end method

.method public setIconEndPadding(F)V
    .registers 5
    .param p1, "iconEndPadding"    # F

    .line 1843
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1a

    .line 1844
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1845
    .local v0, "oldChipIconWidth":F
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    .line 1846
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1848
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1849
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1a

    .line 1850
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1853
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_1a
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1839
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 1840
    return-void
.end method

.method public setIconStartPadding(F)V
    .registers 5
    .param p1, "iconStartPadding"    # F

    .line 1822
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1a

    .line 1823
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1824
    .local v0, "oldChipIconWidth":F
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    .line 1825
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1827
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1828
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1a

    .line 1829
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1832
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_1a
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1818
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 1819
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .param p1, "maxWidth"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 1947
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->maxWidth:I

    .line 1948
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1357
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_10

    .line 1358
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1359
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 1360
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1362
    :cond_10
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1353
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1354
    return-void
.end method

.method setShouldDrawText(Z)V
    .registers 2
    .param p1, "shouldDrawText"    # Z

    .line 1961
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->shouldDrawText:Z

    .line 1962
    return-void
.end method

.method public setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .registers 2
    .param p1, "showMotionSpec"    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1781
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 1782
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1777
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 1778
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1374
    if-nez p1, :cond_4

    .line 1375
    const-string p1, ""

    .line 1377
    :cond_4
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_1d

    .line 1378
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    .line 1379
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    .line 1382
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1383
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1385
    :cond_1d
    return-void
.end method

.method public setTextAppearance(Landroid/support/design/resources/TextAppearance;)V
    .registers 5
    .param p1, "textAppearance"    # Landroid/support/design/resources/TextAppearance;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1397
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eq v0, p1, :cond_1e

    .line 1398
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    .line 1400
    if-eqz p1, :cond_14

    .line 1401
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/design/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V

    .line 1402
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    .line 1405
    :cond_14
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1406
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1408
    :cond_1e
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .registers 4
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 1393
    new-instance v0, Landroid/support/design/resources/TextAppearance;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/design/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setTextAppearance(Landroid/support/design/resources/TextAppearance;)V

    .line 1394
    return-void
.end method

.method public setTextEndPadding(F)V
    .registers 3
    .param p1, "textEndPadding"    # F

    .line 1880
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 1881
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    .line 1882
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1883
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1885
    :cond_e
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1876
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 1877
    return-void
.end method

.method public setTextResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1370
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    return-void
.end method

.method public setTextStartPadding(F)V
    .registers 3
    .param p1, "textStartPadding"    # F

    .line 1864
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 1865
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    .line 1866
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1867
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1869
    :cond_e
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1860
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 1861
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1145
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_d

    .line 1146
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 1147
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1149
    :cond_d
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1153
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_11

    .line 1154
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1155
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Landroid/support/design/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1156
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1158
    :cond_11
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .registers 3
    .param p1, "useCompatRipple"    # Z

    .line 431
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eq v0, p1, :cond_10

    .line 432
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    .line 433
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 434
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 436
    :cond_10
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 1094
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 1096
    .local v0, "invalidate":Z
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1097
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1099
    :cond_11
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1100
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1102
    :cond_1e
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1103
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1106
    :cond_2b
    if-eqz v0, :cond_30

    .line 1107
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1109
    :cond_30
    return v0
.end method

.method shouldDrawText()Z
    .registers 2

    .line 1951
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->shouldDrawText:Z

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1196
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1197
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 1198
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1200
    :cond_9
    return-void
.end method

###### Class android.support.design.chip.ChipDrawable.AnonymousClass1 (android.support.design.chip.ChipDrawable$1)
.class Landroid/support/design/chip/ChipDrawable$1;
.super Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
.source "ChipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/chip/ChipDrawable;


# direct methods
.method constructor <init>(Landroid/support/design/chip/ChipDrawable;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/chip/ChipDrawable;

    .line 178
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable$1;->this$0:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 187
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable$1;->this$0:Landroid/support/design/chip/ChipDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/chip/ChipDrawable;->access$002(Landroid/support/design/chip/ChipDrawable;Z)Z

    .line 182
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable$1;->this$0:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 183
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable$1;->this$0:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 184
    return-void
.end method

###### Class android.support.design.chip.ChipDrawable.Delegate (android.support.design.chip.ChipDrawable$Delegate)
.class public interface abstract Landroid/support/design/chip/ChipDrawable$Delegate;
.super Ljava/lang/Object;
.source "ChipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract onChipDrawableSizeChange()V
.end method
