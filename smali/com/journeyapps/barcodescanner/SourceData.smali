###### Class com.journeyapps.barcodescanner.SourceData (com.journeyapps.barcodescanner.SourceData)
.class public Lcom/journeyapps/barcodescanner/SourceData;
.super Ljava/lang/Object;
.source "SourceData.java"


# instance fields
.field private cropRect:Landroid/graphics/Rect;

.field private data:[B

.field private dataHeight:I

.field private dataWidth:I

.field private imageFormat:I

.field private rotation:I


# direct methods
.method public constructor <init>([BIIII)V
    .registers 9
    .param p1, "data"    # [B
    .param p2, "dataWidth"    # I
    .param p3, "dataHeight"    # I
    .param p4, "imageFormat"    # I
    .param p5, "rotation"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:[B

    .line 46
    iput p2, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    .line 47
    iput p3, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    .line 48
    iput p5, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    .line 49
    iput p4, p0, Lcom/journeyapps/barcodescanner/SourceData;->imageFormat:I

    .line 50
    mul-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_13

    .line 54
    return-void

    .line 51
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image data does not match the resolution. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBitmap(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "scaleFactor"    # I

    .line 133
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/SourceData;->isRotated()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v0

    .line 139
    :cond_14
    new-instance v6, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:[B

    iget v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->imageFormat:I

    iget v3, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    iget v4, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 140
    .local v0, "img":Landroid/graphics/YuvImage;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x5a

    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 142
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 144
    .local v2, "jpegData":[B
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 145
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iput p2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 146
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 149
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    if-eqz v5, :cond_5e

    .line 150
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 151
    .local v5, "imageMatrix":Landroid/graphics/Matrix;
    iget v6, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 152
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    move-object v6, v4

    move-object v11, v5

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 155
    .end local v5    # "imageMatrix":Landroid/graphics/Matrix;
    :cond_5e
    return-object v4
.end method

.method public static rotate180([BII)[B
    .registers 8
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .line 206
    mul-int v0, p1, p2

    .line 207
    .local v0, "n":I
    new-array v1, v0, [B

    .line 209
    .local v1, "yuv":[B
    add-int/lit8 v2, v0, -0x1

    .line 210
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_7
    if-ge v3, v0, :cond_12

    .line 211
    aget-byte v4, p0, v3

    aput-byte v4, v1, v2

    .line 212
    add-int/lit8 v2, v2, -0x1

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 214
    .end local v3    # "j":I
    :cond_12
    return-object v1
.end method

.method public static rotateCCW([BII)[B
    .registers 9
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .line 226
    mul-int v0, p1, p2

    .line 227
    .local v0, "n":I
    new-array v1, v0, [B

    .line 228
    .local v1, "yuv":[B
    add-int/lit8 v2, v0, -0x1

    .line 229
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_7
    if-ge v3, p1, :cond_1c

    .line 230
    add-int/lit8 v4, p2, -0x1

    .local v4, "y":I
    :goto_b
    if-ltz v4, :cond_19

    .line 231
    mul-int v5, v4, p1

    add-int/2addr v5, v3

    aget-byte v5, p0, v5

    aput-byte v5, v1, v2

    .line 232
    add-int/lit8 v2, v2, -0x1

    .line 230
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 229
    .end local v4    # "y":I
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 235
    .end local v3    # "x":I
    :cond_1c
    return-object v1
.end method

.method public static rotateCW([BII)[B
    .registers 8
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .line 186
    mul-int v0, p1, p2

    new-array v0, v0, [B

    .line 187
    .local v0, "yuv":[B
    const/4 v1, 0x0

    .line 188
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_6
    if-ge v2, p1, :cond_1b

    .line 189
    add-int/lit8 v3, p2, -0x1

    .local v3, "y":I
    :goto_a
    if-ltz v3, :cond_18

    .line 190
    mul-int v4, v3, p1

    add-int/2addr v4, v2

    aget-byte v4, p0, v4

    aput-byte v4, v0, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 189
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 188
    .end local v3    # "y":I
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 194
    .end local v2    # "x":I
    :cond_1b
    return-object v0
.end method

.method public static rotateCameraPreview(I[BII)[B
    .registers 5
    .param p0, "cameraRotation"    # I
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .line 159
    if-eqz p0, :cond_1e

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_19

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_14

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_f

    .line 170
    return-object p1

    .line 167
    :cond_f
    invoke-static {p1, p2, p3}, Lcom/journeyapps/barcodescanner/SourceData;->rotateCCW([BII)[B

    move-result-object v0

    return-object v0

    .line 165
    :cond_14
    invoke-static {p1, p2, p3}, Lcom/journeyapps/barcodescanner/SourceData;->rotate180([BII)[B

    move-result-object v0

    return-object v0

    .line 163
    :cond_19
    invoke-static {p1, p2, p3}, Lcom/journeyapps/barcodescanner/SourceData;->rotateCW([BII)[B

    move-result-object v0

    return-object v0

    .line 161
    :cond_1e
    return-object p1
.end method


# virtual methods
.method public createSource()Lcom/google/zxing/PlanarYUVLuminanceSource;
    .registers 14

    .line 102
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:[B

    iget v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    iget v3, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/journeyapps/barcodescanner/SourceData;->rotateCameraPreview(I[BII)[B

    move-result-object v0

    .line 105
    .local v0, "rotated":[B
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/SourceData;->isRotated()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 107
    new-instance v1, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v6, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    iget v7, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v12, 0x0

    move-object v4, v1

    move-object v5, v0

    invoke-direct/range {v4 .. v12}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v1

    .line 109
    :cond_33
    new-instance v1, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v6, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    iget v7, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v12, 0x0

    move-object v4, v1

    move-object v5, v0

    invoke-direct/range {v4 .. v12}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/SourceData;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "scaleFactor"    # I

    .line 129
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/journeyapps/barcodescanner/SourceData;->getBitmap(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getData()[B
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:[B

    return-object v0
.end method

.method public getDataHeight()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    return v0
.end method

.method public getImageFormat()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->imageFormat:I

    return v0
.end method

.method public isRotated()Z
    .registers 2

    .line 94
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .line 66
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    .line 67
    return-void
.end method
