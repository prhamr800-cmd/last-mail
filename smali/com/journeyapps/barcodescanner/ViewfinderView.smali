###### Class com.journeyapps.barcodescanner.ViewfinderView (com.journeyapps.barcodescanner.ViewfinderView)
.class public Lcom/journeyapps/barcodescanner/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field protected static final ANIMATION_DELAY:J = 0x50L

.field protected static final CURRENT_POINT_OPACITY:I = 0xa0

.field protected static final MAX_RESULT_POINTS:I = 0x14

.field protected static final POINT_SIZE:I = 0x6

.field protected static final SCANNER_ALPHA:[I

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected cameraPreview:Lcom/journeyapps/barcodescanner/CameraPreview;

.field protected framingRect:Landroid/graphics/Rect;

.field protected final laserColor:I

.field protected lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected final maskColor:I

.field protected final paint:Landroid/graphics/Paint;

.field protected possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected previewFramingRect:Landroid/graphics/Rect;

.field protected resultBitmap:Landroid/graphics/Bitmap;

.field protected final resultColor:I

.field protected final resultPointColor:I

.field protected scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/journeyapps/barcodescanner/ViewfinderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/ViewfinderView;->TAG:Ljava/lang/String;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/journeyapps/barcodescanner/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_12
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/android/R$styleable;->zxing_finder:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 79
    .local v1, "attributes":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/zxing/client/android/R$styleable;->zxing_finder_zxing_viewfinder_mask:I

    sget v3, Lcom/google/zxing/client/android/R$color;->zxing_viewfinder_mask:I

    .line 80
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->maskColor:I

    .line 81
    sget v2, Lcom/google/zxing/client/android/R$styleable;->zxing_finder_zxing_result_view:I

    sget v3, Lcom/google/zxing/client/android/R$color;->zxing_result_view:I

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultColor:I

    .line 83
    sget v2, Lcom/google/zxing/client/android/R$styleable;->zxing_finder_zxing_viewfinder_laser:I

    sget v3, Lcom/google/zxing/client/android/R$color;->zxing_viewfinder_laser:I

    .line 84
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->laserColor:I

    .line 85
    sget v2, Lcom/google/zxing/client/android/R$styleable;->zxing_finder_zxing_possible_result_points:I

    sget v3, Lcom/google/zxing/client/android/R$color;->zxing_possible_result_points:I

    .line 86
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultPointColor:I

    .line 88
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    const/4 v2, 0x0

    iput v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->scannerAlpha:I

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 92
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 93
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .registers 6
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .line 238
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 239
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 241
    .local v1, "size":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_17

    .line 243
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0xa

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 245
    :cond_17
    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 228
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 229
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->invalidate()V

    .line 230
    return-void
.end method

.method public drawViewfinder()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 215
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 216
    if-eqz v0, :cond_a

    .line 217
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    :cond_a
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->invalidate()V

    .line 220
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 141
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->refreshSizes()V

    .line 142
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->framingRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_19a

    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->previewFramingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_11

    goto/16 :goto_19a

    .line 146
    :cond_11
    iget-object v9, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->framingRect:Landroid/graphics/Rect;

    .line 147
    .local v9, "frame":Landroid/graphics/Rect;
    iget-object v10, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->previewFramingRect:Landroid/graphics/Rect;

    .line 149
    .local v10, "previewFrame":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    .line 150
    .local v11, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    .line 153
    .local v12, "height":I
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_26

    iget v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultColor:I

    goto :goto_28

    :cond_26
    iget v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->maskColor:I

    :goto_28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v11

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 155
    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    int-to-float v3, v11

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    const/4 v1, 0x0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v11

    int-to-float v4, v12

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 159
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/16 v13, 0xa0

    if-eqz v0, :cond_83

    .line 161
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v6, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_199

    .line 166
    :cond_83
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v1, Lcom/journeyapps/barcodescanner/ViewfinderView;->SCANNER_ALPHA:[I

    iget v2, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->scannerAlpha:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    iget v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/journeyapps/barcodescanner/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->scannerAlpha:I

    .line 169
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v9, Landroid/graphics/Rect;->top:I

    add-int v14, v0, v1

    .line 170
    .local v14, "middle":I
    iget v0, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    add-int/lit8 v0, v14, -0x1

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, v14, 0x2

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v15, v0, v1

    .line 173
    .local v15, "scaleX":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v16, v0, v1

    .line 175
    .local v16, "scaleY":F
    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 176
    .local v5, "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    iget-object v4, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 177
    .local v4, "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 178
    .local v3, "frameLeft":I
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 179
    .local v1, "frameTop":I
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 180
    iput-object v6, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    goto :goto_130

    .line 182
    :cond_e9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 183
    iput-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 184
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 185
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v2, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_130

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPoint;

    .line 187
    .local v2, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    mul-float v6, v6, v15

    float-to-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    .line 188
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    mul-float v13, v13, v16

    float-to-int v13, v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    move-object/from16 v17, v0

    const/high16 v0, 0x40c00000    # 6.0f

    move-object/from16 v18, v2

    .end local v2    # "point":Lcom/google/zxing/ResultPoint;
    .local v18, "point":Lcom/google/zxing/ResultPoint;
    iget-object v2, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 187
    invoke-virtual {v8, v6, v13, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    .end local v18    # "point":Lcom/google/zxing/ResultPoint;
    nop

    .line 186
    move-object/from16 v0, v17

    goto :goto_103

    .line 192
    :cond_130
    :goto_130
    if-eqz v4, :cond_173

    .line 193
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 194
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v2, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    const/high16 v0, 0x40400000    # 3.0f

    .line 196
    .local v0, "radius":F
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_146
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_173

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/ResultPoint;

    .line 197
    .local v6, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    mul-float v13, v13, v15

    float-to-int v13, v13

    add-int/2addr v13, v3

    int-to-float v13, v13

    .line 198
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move-object/from16 v19, v2

    mul-float v2, v17, v16

    float-to-int v2, v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    move/from16 v20, v1

    .end local v1    # "frameTop":I
    .local v20, "frameTop":I
    iget-object v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 197
    invoke-virtual {v8, v13, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 200
    .end local v6    # "point":Lcom/google/zxing/ResultPoint;
    nop

    .line 196
    move-object/from16 v2, v19

    move/from16 v1, v20

    goto :goto_146

    .line 205
    .end local v0    # "radius":F
    .end local v20    # "frameTop":I
    .restart local v1    # "frameTop":I
    :cond_173
    move/from16 v20, v1

    .end local v1    # "frameTop":I
    .restart local v20    # "frameTop":I
    const-wide/16 v1, 0x50

    iget v0, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v0, -0x6

    iget v0, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v13, v0, -0x6

    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v17, v0, 0x6

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v18, v0, 0x6

    move-object/from16 v0, p0

    move/from16 v19, v20

    .end local v20    # "frameTop":I
    .local v19, "frameTop":I
    move/from16 v20, v3

    .end local v3    # "frameLeft":I
    .local v20, "frameLeft":I
    move v3, v6

    move-object/from16 v21, v4

    .end local v4    # "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    .local v21, "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move v4, v13

    move-object v13, v5

    .end local v5    # "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    .local v13, "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/journeyapps/barcodescanner/ViewfinderView;->postInvalidateDelayed(JIIII)V

    .line 211
    .end local v13    # "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    .end local v14    # "middle":I
    .end local v15    # "scaleX":F
    .end local v16    # "scaleY":F
    .end local v19    # "frameTop":I
    .end local v20    # "frameLeft":I
    .end local v21    # "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    :goto_199
    return-void

    .line 143
    .end local v9    # "frame":Landroid/graphics/Rect;
    .end local v10    # "previewFrame":Landroid/graphics/Rect;
    .end local v11    # "width":I
    .end local v12    # "height":I
    :cond_19a
    :goto_19a
    return-void
.end method

.method protected refreshSizes()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->cameraPreview:Lcom/journeyapps/barcodescanner/CameraPreview;

    if-nez v0, :cond_5

    .line 128
    return-void

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->cameraPreview:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 131
    .local v0, "framingRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->cameraPreview:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->getPreviewFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 132
    .local v1, "previewFramingRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_19

    if-eqz v1, :cond_19

    .line 133
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->framingRect:Landroid/graphics/Rect;

    .line 134
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->previewFramingRect:Landroid/graphics/Rect;

    .line 136
    :cond_19
    return-void
.end method

.method public setCameraPreview(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .registers 3
    .param p1, "view"    # Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 96
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->cameraPreview:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 97
    new-instance v0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/ViewfinderView$1;-><init>(Lcom/journeyapps/barcodescanner/ViewfinderView;)V

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->addStateListener(Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;)V

    .line 124
    return-void
.end method

###### Class com.journeyapps.barcodescanner.ViewfinderView.AnonymousClass1 (com.journeyapps.barcodescanner.ViewfinderView$1)
.class Lcom/journeyapps/barcodescanner/ViewfinderView$1;
.super Ljava/lang/Object;
.source "ViewfinderView.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/ViewfinderView;->setCameraPreview(Lcom/journeyapps/barcodescanner/CameraPreview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/ViewfinderView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 97
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;->this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraClosed()V
    .registers 1

    .line 122
    return-void
.end method

.method public cameraError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/Exception;

    .line 117
    return-void
.end method

.method public previewSized()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;->this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->refreshSizes()V

    .line 101
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;->this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->invalidate()V

    .line 102
    return-void
.end method

.method public previewStarted()V
    .registers 1

    .line 107
    return-void
.end method

.method public previewStopped()V
    .registers 1

    .line 112
    return-void
.end method
