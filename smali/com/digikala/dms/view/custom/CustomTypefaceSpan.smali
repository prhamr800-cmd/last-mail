###### Class com.digikala.dms.view.custom.CustomTypefaceSpan (com.digikala.dms.view.custom.CustomTypefaceSpan)
.class public Lcom/digikala/dms/view/custom/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "CustomTypefaceSpan.java"


# instance fields
.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/graphics/Typeface;

    .line 17
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/digikala/dms/view/custom/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    .line 19
    return-void
.end method

.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .registers 6
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 33
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 34
    .local v0, "old":Landroid/graphics/Typeface;
    if-nez v0, :cond_8

    .line 35
    const/4 v1, 0x0

    goto :goto_c

    .line 37
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 40
    .local v1, "oldStyle":I
    :goto_c
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    .line 41
    .local v2, "fake":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1b

    .line 42
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 45
    :cond_1b
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_24

    .line 46
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 49
    :cond_24
    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 52
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 23
    iget-object v0, p0, Lcom/digikala/dms/view/custom/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/digikala/dms/view/custom/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 24
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/view/custom/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/digikala/dms/view/custom/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 29
    return-void
.end method
