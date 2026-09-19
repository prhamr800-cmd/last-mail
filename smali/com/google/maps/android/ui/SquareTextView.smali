###### Class com.google.maps.android.ui.SquareTextView (com.google.maps.android.ui.SquareTextView)
.class public Lcom/google/maps/android/ui/SquareTextView;
.super Landroid/widget/TextView;
.source "SquareTextView.java"


# instance fields
.field private mOffsetLeft:I

.field private mOffsetTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 26
    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 26
    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 26
    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 58
    iget v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 43
    invoke-virtual {p0}, Lcom/google/maps/android/ui/SquareTextView;->getMeasuredWidth()I

    move-result v0

    .line 44
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/maps/android/ui/SquareTextView;->getMeasuredHeight()I

    move-result v1

    .line 45
    .local v1, "height":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 46
    .local v2, "dimension":I
    const/4 v3, 0x0

    if-le v0, v1, :cond_19

    .line 47
    sub-int v4, v0, v1

    iput v4, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 48
    iput v3, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    goto :goto_1f

    .line 50
    :cond_19
    iput v3, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 51
    sub-int v3, v1, v0

    iput v3, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    .line 53
    :goto_1f
    invoke-virtual {p0, v2, v2}, Lcom/google/maps/android/ui/SquareTextView;->setMeasuredDimension(II)V

    .line 54
    return-void
.end method
