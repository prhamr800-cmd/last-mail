###### Class com.journeyapps.barcodescanner.Size (com.journeyapps.barcodescanner.Size)
.class public Lcom/journeyapps/barcodescanner/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 14
    iput p2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 15
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/journeyapps/barcodescanner/Size;)I
    .registers 5
    .param p1, "other"    # Lcom/journeyapps/barcodescanner/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v0, v0, v1

    .line 87
    .local v0, "aPixels":I
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v1, v1, v2

    .line 88
    .local v1, "bPixels":I
    if-ge v1, v0, :cond_10

    .line 89
    const/4 v2, 0x1

    return v2

    .line 91
    :cond_10
    if-le v1, v0, :cond_14

    .line 92
    const/4 v2, -0x1

    return v2

    .line 94
    :cond_14
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 104
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    .line 106
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/journeyapps/barcodescanner/Size;

    .line 108
    .local v2, "size":Lcom/journeyapps/barcodescanner/Size;
    iget v3, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v4, v2, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v4, v2, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    .line 104
    .end local v2    # "size":Lcom/journeyapps/barcodescanner/Size;
    :cond_24
    :goto_24
    return v1
.end method

.method public fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z
    .registers 4
    .param p1, "other"    # Lcom/journeyapps/barcodescanner/Size;

    .line 78
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-gt v0, v1, :cond_e

    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 113
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 114
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    add-int/2addr v1, v2

    .line 115
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public rotate()Lcom/journeyapps/barcodescanner/Size;
    .registers 4

    .line 24
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public scale(II)Lcom/journeyapps/barcodescanner/Size;
    .registers 6
    .param p1, "n"    # I
    .param p2, "d"    # I

    .line 35
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v1, v1, p1

    div-int/2addr v1, p2

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v2, v2, p1

    div-int/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public scaleCrop(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .registers 6
    .param p1, "into"    # Lcom/journeyapps/barcodescanner/Size;

    .line 62
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v0, v0, v1

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, v2

    if-gt v0, v1, :cond_1f

    .line 64
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v2, v2, v3

    iget v3, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    div-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0

    .line 67
    :cond_1f
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    div-int/2addr v1, v2

    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public scaleFit(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .registers 6
    .param p1, "into"    # Lcom/journeyapps/barcodescanner/Size;

    .line 46
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v0, v0, v1

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, v2

    if-lt v0, v1, :cond_1f

    .line 48
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v2, v2, v3

    iget v3, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    div-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0

    .line 51
    :cond_1f
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    div-int/2addr v1, v2

    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
