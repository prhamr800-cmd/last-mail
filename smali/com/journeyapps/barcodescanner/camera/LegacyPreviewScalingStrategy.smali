###### Class com.journeyapps.barcodescanner.camera.LegacyPreviewScalingStrategy (com.journeyapps.barcodescanner.camera.LegacyPreviewScalingStrategy)
.class public Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "LegacyPreviewScalingStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method

.method public static scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .registers 9
    .param p0, "from"    # Lcom/journeyapps/barcodescanner/Size;
    .param p1, "to"    # Lcom/journeyapps/barcodescanner/Size;

    .line 96
    move-object v0, p0

    .line 98
    .local v0, "current":Lcom/journeyapps/barcodescanner/Size;
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v1, :cond_22

    .line 101
    :goto_a
    invoke-virtual {v0, v3, v4}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v1

    .line 102
    .local v1, "scaled150":Lcom/journeyapps/barcodescanner/Size;
    invoke-virtual {v0, v4, v2}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v5

    .line 103
    .local v5, "scaled200":Lcom/journeyapps/barcodescanner/Size;
    invoke-virtual {p1, v1}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 105
    return-object v1

    .line 106
    :cond_19
    invoke-virtual {p1, v5}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 108
    return-object v5

    .line 111
    :cond_20
    move-object v0, v5

    .line 113
    .end local v1    # "scaled150":Lcom/journeyapps/barcodescanner/Size;
    .end local v5    # "scaled200":Lcom/journeyapps/barcodescanner/Size;
    goto :goto_a

    .line 117
    :cond_22
    :goto_22
    invoke-virtual {v0, v4, v3}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v1

    .line 118
    .local v1, "scaled66":Lcom/journeyapps/barcodescanner/Size;
    invoke-virtual {v0, v2, v4}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v5

    .line 120
    .local v5, "scaled50":Lcom/journeyapps/barcodescanner/Size;
    invoke-virtual {p1, v5}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 121
    invoke-virtual {p1, v1}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 123
    return-object v1

    .line 126
    :cond_37
    return-object v0

    .line 130
    :cond_38
    move-object v0, v5

    .line 132
    .end local v1    # "scaled66":Lcom/journeyapps/barcodescanner/Size;
    .end local v5    # "scaled50":Lcom/journeyapps/barcodescanner/Size;
    goto :goto_22
.end method


# virtual methods
.method public getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .registers 7
    .param p2, "desired"    # Lcom/journeyapps/barcodescanner/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;",
            "Lcom/journeyapps/barcodescanner/Size;",
            ")",
            "Lcom/journeyapps/barcodescanner/Size;"
        }
    .end annotation

    .line 40
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/journeyapps/barcodescanner/Size;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/Size;

    return-object v0

    .line 44
    :cond_a
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;

    invoke-direct {v1, p0, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;-><init>(Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;Lcom/journeyapps/barcodescanner/Size;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Viewfinder size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview in order of preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/Size;

    return-object v0
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .registers 11
    .param p1, "previewSize"    # Lcom/journeyapps/barcodescanner/Size;
    .param p2, "viewfinderSize"    # Lcom/journeyapps/barcodescanner/Size;

    .line 147
    invoke-static {p1, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 148
    .local v0, "scaledPreview":Lcom/journeyapps/barcodescanner/Size;
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->TAG:Ljava/lang/String;

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

    .line 150
    iget v1, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 151
    .local v1, "dx":I
    iget v2, v0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v3, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 153
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

###### Class com.journeyapps.barcodescanner.camera.LegacyPreviewScalingStrategy.AnonymousClass1 (com.journeyapps.barcodescanner.camera.LegacyPreviewScalingStrategy$1)
.class Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;
.super Ljava/lang/Object;
.source "LegacyPreviewScalingStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

.field final synthetic val$desired:Lcom/journeyapps/barcodescanner/Size;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;Lcom/journeyapps/barcodescanner/Size;)V
    .registers 3
    .param p1, "this$0"    # Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

    .line 44
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->this$0:Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lcom/journeyapps/barcodescanner/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)I
    .registers 9
    .param p1, "a"    # Lcom/journeyapps/barcodescanner/Size;
    .param p2, "b"    # Lcom/journeyapps/barcodescanner/Size;

    .line 47
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lcom/journeyapps/barcodescanner/Size;

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 48
    .local v0, "ascaled":Lcom/journeyapps/barcodescanner/Size;
    iget v1, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v1, v2

    .line 49
    .local v1, "aScale":I
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lcom/journeyapps/barcodescanner/Size;

    invoke-static {p2, v2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v2

    .line 50
    .local v2, "bscaled":Lcom/journeyapps/barcodescanner/Size;
    iget v3, v2, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v4, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v3, v4

    .line 52
    .local v3, "bScale":I
    if-nez v1, :cond_1f

    if-nez v3, :cond_1f

    .line 54
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result v4

    return v4

    .line 55
    :cond_1f
    const/4 v4, -0x1

    if-nez v1, :cond_23

    .line 57
    return v4

    .line 58
    :cond_23
    const/4 v5, 0x1

    if-nez v3, :cond_27

    .line 60
    return v5

    .line 61
    :cond_27
    if-gez v1, :cond_30

    if-gez v3, :cond_30

    .line 63
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result v4

    return v4

    .line 64
    :cond_30
    if-lez v1, :cond_3a

    if-lez v3, :cond_3a

    .line 66
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result v4

    neg-int v4, v4

    return v4

    .line 67
    :cond_3a
    if-gez v1, :cond_3d

    .line 69
    return v4

    .line 72
    :cond_3d
    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 44
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    check-cast p2, Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->compare(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)I

    move-result p1

    return p1
.end method
