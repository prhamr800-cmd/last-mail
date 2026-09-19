###### Class com.journeyapps.barcodescanner.camera.FitCenterStrategy (com.journeyapps.barcodescanner.camera.FitCenterStrategy)
.class public Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "FitCenterStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getScore(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
    .registers 10
    .param p1, "size"    # Lcom/journeyapps/barcodescanner/Size;
    .param p2, "desired"    # Lcom/journeyapps/barcodescanner/Size;

    .line 30
    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-lez v0, :cond_45

    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-gtz v0, :cond_9

    goto :goto_45

    .line 33
    :cond_9
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->scaleFit(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 35
    .local v0, "scaled":Lcom/journeyapps/barcodescanner/Size;
    iget v1, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 39
    .local v1, "scaleRatio":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_2a

    .line 41
    div-float v3, v2, v1

    float-to-double v3, v3

    const-wide v5, 0x3ff199999999999aL    # 1.1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_2b

    .line 44
    :cond_2a
    move v3, v1

    .line 49
    .local v3, "scaleScore":F
    :goto_2b
    iget v4, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    iget v5, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    iget v6, v0, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    .line 54
    .local v4, "cropRatio":F
    div-float/2addr v2, v4

    div-float/2addr v2, v4

    div-float/2addr v2, v4

    .line 56
    .local v2, "cropScore":F
    mul-float v5, v3, v2

    return v5

    .line 31
    .end local v0    # "scaled":Lcom/journeyapps/barcodescanner/Size;
    .end local v1    # "scaleRatio":F
    .end local v2    # "cropScore":F
    .end local v3    # "scaleScore":F
    .end local v4    # "cropRatio":F
    :cond_45
    :goto_45
    const/4 v0, 0x0

    return v0
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .registers 11
    .param p1, "previewSize"    # Lcom/journeyapps/barcodescanner/Size;
    .param p2, "viewfinderSize"    # Lcom/journeyapps/barcodescanner/Size;

    .line 70
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->scaleFit(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 71
    .local v0, "scaledPreview":Lcom/journeyapps/barcodescanner/Size;
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; Scaled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; Want: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v1, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 74
    .local v1, "dx":I
    iget v2, v0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v3, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 76
    .local v2, "dy":I
    new-instance v3, Landroid/graphics/Rect;

    neg-int v4, v1

    neg-int v5, v2

    iget v6, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v6, v1

    iget v7, v0, Lcom/journeyapps/barcodescanner/Size;->height:I

    sub-int/2addr v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method
