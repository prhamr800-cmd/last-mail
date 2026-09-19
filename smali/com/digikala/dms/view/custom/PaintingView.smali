###### Class com.digikala.dms.view.custom.PaintingView (com.digikala.dms.view.custom.PaintingView)
.class public Lcom/digikala/dms/view/custom/PaintingView;
.super Landroid/view/View;
.source "PaintingView.java"


# static fields
.field private static final COLOR_BACKGROUND:I = -0x1

.field private static final COLOR_PAINT:I = -0x1000000

.field private static final QUALITY_PNG:I = 0x64

.field private static final WIDTH_STROKE:I = 0x5


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/digikala/dms/view/custom/PaintingView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/digikala/dms/view/custom/PaintingView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/digikala/dms/view/custom/PaintingView;->init()V

    .line 49
    return-void
.end method

.method private init()V
    .registers 4

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/custom/PaintingView;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/custom/PaintingView;->setFocusableInTouchMode(Z)V

    .line 54
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/custom/PaintingView;->setBackgroundColor(I)V

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v1, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v1, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 63
    iget-object v0, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPath:Landroid/graphics/Path;

    .line 66
    return-void
.end method


# virtual methods
.method public clearCanvas()V
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/digikala/dms/view/custom/PaintingView;->destroyDrawingCache()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/custom/PaintingView;->setDrawingCacheEnabled(Z)V

    .line 99
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPath:Landroid/graphics/Path;

    .line 100
    invoke-virtual {p0}, Lcom/digikala/dms/view/custom/PaintingView;->postInvalidate()V

    .line 101
    return-void
.end method

.method public getBase64Painting()Ljava/lang/String;
    .registers 5

    .line 108
    invoke-virtual {p0}, Lcom/digikala/dms/view/custom/PaintingView;->getPainting()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v0, :cond_1c

    .line 111
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 112
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 114
    :cond_1c
    const-string v2, ""

    return-object v2
.end method

.method public getPainting()Landroid/graphics/Bitmap;
    .registers 2

    .line 104
    invoke-virtual {p0}, Lcom/digikala/dms/view/custom/PaintingView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 93
    iget-object v0, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 94
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 72
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 73
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_2a

    goto :goto_29

    .line 79
    :pswitch_12
    iget-object v2, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    goto :goto_25

    .line 82
    :pswitch_18
    invoke-virtual {p0, v3}, Lcom/digikala/dms/view/custom/PaintingView;->setDrawingCacheEnabled(Z)V

    goto :goto_29

    .line 75
    :pswitch_1c
    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/custom/PaintingView;->setDrawingCacheEnabled(Z)V

    .line 76
    iget-object v2, p0, Lcom/digikala/dms/view/custom/PaintingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77
    nop

    .line 87
    :goto_25
    invoke-virtual {p0}, Lcom/digikala/dms/view/custom/PaintingView;->postInvalidate()V

    .line 88
    return v3

    .line 84
    :goto_29
    return v4

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method
