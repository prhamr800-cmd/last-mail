###### Class com.journeyapps.barcodescanner.camera.FitXYStrategy (com.journeyapps.barcodescanner.camera.FitXYStrategy)
.class public Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "FitXYStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method

.method private static absRatio(F)F
    .registers 3
    .param p0, "ratio"    # F

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_8

    .line 16
    div-float/2addr v0, p0

    return v0

    .line 18
    :cond_8
    return p0
.end method


# virtual methods
.method protected getScore(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
    .registers 10
    .param p1, "size"    # Lcom/journeyapps/barcodescanner/Size;
    .param p2, "desired"    # Lcom/journeyapps/barcodescanner/Size;

    .line 36
    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-lez v0, :cond_45

    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-gtz v0, :cond_9

    goto :goto_45

    .line 39
    :cond_9
    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    move-result v0

    .line 40
    .local v0, "scaleX":F
    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v3, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    move-result v2

    .line 42
    .local v2, "scaleY":F
    div-float v3, v1, v0

    div-float/2addr v3, v2

    .line 44
    .local v3, "scaleScore":F
    iget v4, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    iget v5, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    iget v6, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    move-result v4

    .line 47
    .local v4, "distortion":F
    div-float/2addr v1, v4

    div-float/2addr v1, v4

    div-float/2addr v1, v4

    .line 49
    .local v1, "distortionScore":F
    mul-float v5, v3, v1

    return v5

    .line 37
    .end local v0    # "scaleX":F
    .end local v1    # "distortionScore":F
    .end local v2    # "scaleY":F
    .end local v3    # "scaleScore":F
    .end local v4    # "distortion":F
    :cond_45
    :goto_45
    const/4 v0, 0x0

    return v0
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "previewSize"    # Lcom/journeyapps/barcodescanner/Size;
    .param p2, "viewfinderSize"    # Lcom/journeyapps/barcodescanner/Size;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
