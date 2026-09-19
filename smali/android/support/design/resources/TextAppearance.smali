###### Class android.support.design.resources.TextAppearance (android.support.design.resources.TextAppearance)
.class public Landroid/support/design/resources/TextAppearance;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextAppearance"

.field private static final TYPEFACE_MONOSPACE:I = 0x3

.field private static final TYPEFACE_SANS:I = 0x1

.field private static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private font:Landroid/graphics/Typeface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final fontFamily:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilyResourceId:I
    .annotation build Landroid/support/annotation/FontRes;
    .end annotation
.end field

.field private fontResolved:Z

.field public final shadowColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field public final textColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final textColorHint:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final textColorLink:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    .line 74
    sget-object v1, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 76
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/design/resources/TextAppearance;->textSize:F

    .line 77
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    .line 78
    invoke-static {p1, v1, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 80
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_textColorHint:I

    .line 81
    invoke-static {p1, v1, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/resources/TextAppearance;->textColorHint:Landroid/content/res/ColorStateList;

    .line 83
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_textColorLink:I

    .line 84
    invoke-static {p1, v1, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/resources/TextAppearance;->textColorLink:Landroid/content/res/ColorStateList;

    .line 86
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    .line 87
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_typeface:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/resources/TextAppearance;->typeface:I

    .line 88
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_fontFamily:I

    sget v4, Landroid/support/design/R$styleable;->TextAppearance_android_fontFamily:I

    .line 89
    invoke-static {v1, v2, v4}, Landroid/support/design/resources/MaterialResources;->getIndexWithValue(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 93
    .local v2, "fontFamilyIndex":I
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/resources/TextAppearance;->fontFamilyResourceId:I

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/design/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    .line 95
    sget v4, Landroid/support/design/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->textAllCaps:Z

    .line 96
    sget v0, Landroid/support/design/R$styleable;->TextAppearance_android_shadowColor:I

    .line 97
    invoke-static {p1, v1, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 99
    sget v0, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDx:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/design/resources/TextAppearance;->shadowDx:F

    .line 100
    sget v0, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/design/resources/TextAppearance;->shadowDy:F

    .line 101
    sget v0, Landroid/support/design/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/design/resources/TextAppearance;->shadowRadius:F

    .line 103
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method static synthetic access$002(Landroid/support/design/resources/TextAppearance;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/resources/TextAppearance;
    .param p1, "x1"    # Landroid/graphics/Typeface;

    .line 45
    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic access$102(Landroid/support/design/resources/TextAppearance;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/resources/TextAppearance;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    return p1
.end method

.method static synthetic access$200(Landroid/support/design/resources/TextAppearance;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/design/resources/TextAppearance;

    .line 45
    invoke-direct {p0}, Landroid/support/design/resources/TextAppearance;->createFallbackTypeface()V

    return-void
.end method

.method private createFallbackTypeface()V
    .registers 3

    .line 193
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez v0, :cond_e

    .line 194
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    iget v1, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 198
    :cond_e
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez v0, :cond_39

    .line 199
    iget v0, p0, Landroid/support/design/resources/TextAppearance;->typeface:I

    packed-switch v0, :pswitch_data_3a

    .line 210
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    goto :goto_2b

    .line 207
    :pswitch_1c
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 208
    goto :goto_2b

    .line 204
    :pswitch_21
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 205
    goto :goto_2b

    .line 201
    :pswitch_26
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 202
    nop

    .line 213
    :goto_2b
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-eqz v0, :cond_39

    .line 214
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    iget v1, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 217
    :cond_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public getFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 114
    iget-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    if-eqz v0, :cond_7

    .line 115
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object v0

    .line 119
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_40

    .line 121
    :try_start_d
    iget v0, p0, Landroid/support/design/resources/TextAppearance;->fontFamilyResourceId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 122
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-eqz v0, :cond_3f

    .line 123
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    iget v1, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;
    :try_end_23
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_23} :catch_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_23} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_24

    goto :goto_3f

    .line 127
    :catch_24
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TextAppearance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading font "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/design/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v0

    .line 129
    :cond_3f
    :goto_3f
    nop

    .line 132
    :cond_40
    :goto_40
    invoke-direct {p0}, Landroid/support/design/resources/TextAppearance;->createFallbackTypeface()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    .line 134
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textPaint"    # Landroid/text/TextPaint;
    .param p3, "callback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    iget-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    if-eqz v0, :cond_a

    .line 148
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2, v0}, Landroid/support/design/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 149
    return-void

    .line 154
    :cond_a
    invoke-direct {p0}, Landroid/support/design/resources/TextAppearance;->createFallbackTypeface()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    .line 158
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2, v0}, Landroid/support/design/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 159
    return-void

    .line 164
    :cond_1c
    :try_start_1c
    iget v0, p0, Landroid/support/design/resources/TextAppearance;->fontFamilyResourceId:I

    new-instance v1, Landroid/support/design/resources/TextAppearance$1;

    invoke-direct {v1, p0, p2, p3}, Landroid/support/design/resources/TextAppearance$1;-><init>(Landroid/support/design/resources/TextAppearance;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    :try_end_27
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1c .. :try_end_27} :catch_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_27} :catch_42
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_28

    goto :goto_43

    .line 186
    :catch_28
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TextAppearance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading font "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/design/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_42
    move-exception v0

    .line 188
    :goto_43
    nop

    .line 189
    :goto_44
    return-void
.end method

.method public updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textPaint"    # Landroid/text/TextPaint;
    .param p3, "callback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V

    .line 228
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iget-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v2, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 230
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_18

    :cond_16
    const/high16 v0, -0x1000000

    .line 228
    :goto_18
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 232
    iget v0, p0, Landroid/support/design/resources/TextAppearance;->shadowRadius:F

    iget v1, p0, Landroid/support/design/resources/TextAppearance;->shadowDx:F

    iget v2, p0, Landroid/support/design/resources/TextAppearance;->shadowDy:F

    iget-object v3, p0, Landroid/support/design/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/support/design/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    iget-object v4, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v5, p0, Landroid/support/design/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 237
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    .line 232
    :goto_35
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 239
    return-void
.end method

.method public updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textPaint"    # Landroid/text/TextPaint;
    .param p3, "callback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 249
    invoke-static {}, Landroid/support/design/resources/TextAppearanceConfig;->shouldLoadFontSynchronously()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 250
    invoke-virtual {p0, p1}, Landroid/support/design/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/support/design/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    goto :goto_1a

    .line 252
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V

    .line 253
    iget-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    if-nez v0, :cond_1a

    .line 255
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2, v0}, Landroid/support/design/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 258
    :cond_1a
    :goto_1a
    return-void
.end method

.method public updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .registers 5
    .param p1, "textPaint"    # Landroid/text/TextPaint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    iget v0, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 270
    .local v0, "fake":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 271
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1d

    const/high16 v1, -0x41800000    # -0.25f

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 273
    iget v1, p0, Landroid/support/design/resources/TextAppearance;->textSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 274
    return-void
.end method

###### Class android.support.design.resources.TextAppearance.AnonymousClass1 (android.support.design.resources.TextAppearance$1)
.class Landroid/support/design/resources/TextAppearance$1;
.super Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/resources/TextAppearance;

.field final synthetic val$callback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Landroid/support/design/resources/TextAppearance;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/support/design/resources/TextAppearance;

    .line 167
    iput-object p1, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    iput-object p2, p0, Landroid/support/design/resources/TextAppearance$1;->val$textPaint:Landroid/text/TextPaint;

    iput-object p3, p0, Landroid/support/design/resources/TextAppearance$1;->val$callback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-direct {p0}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 178
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    invoke-static {v0}, Landroid/support/design/resources/TextAppearance;->access$200(Landroid/support/design/resources/TextAppearance;)V

    .line 179
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/resources/TextAppearance;->access$102(Landroid/support/design/resources/TextAppearance;Z)Z

    .line 180
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->val$callback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    .line 181
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 170
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    iget-object v1, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    iget v1, v1, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/resources/TextAppearance;->access$002(Landroid/support/design/resources/TextAppearance;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    iget-object v1, p0, Landroid/support/design/resources/TextAppearance$1;->val$textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 172
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/resources/TextAppearance;->access$102(Landroid/support/design/resources/TextAppearance;Z)Z

    .line 173
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->val$callback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 174
    return-void
.end method
