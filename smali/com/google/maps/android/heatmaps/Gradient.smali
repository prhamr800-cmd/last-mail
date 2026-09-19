###### Class com.google.maps.android.heatmaps.Gradient (com.google.maps.android.heatmaps.Gradient)
.class public Lcom/google/maps/android/heatmaps/Gradient;
.super Ljava/lang/Object;
.source "Gradient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR_MAP_SIZE:I = 0x3e8


# instance fields
.field public final mColorMapSize:I

.field public mColors:[I

.field public mStartPoints:[F


# direct methods
.method public constructor <init>([I[F)V
    .registers 4
    .param p1, "colors"    # [I
    .param p2, "startPoints"    # [F

    .line 73
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0}, Lcom/google/maps/android/heatmaps/Gradient;-><init>([I[FI)V

    .line 74
    return-void
.end method

.method public constructor <init>([I[FI)V
    .registers 7
    .param p1, "colors"    # [I
    .param p2, "startPoints"    # [F
    .param p3, "colorMapSize"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_45

    .line 88
    array-length v0, p1

    if-eqz v0, :cond_3d

    .line 91
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p2

    if-ge v0, v1, :cond_23

    .line 92
    aget v1, p2, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p2, v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1b

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 93
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "startPoints should be in increasing order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0    # "i":I
    :cond_23
    iput p3, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColorMapSize:I

    .line 97
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    .line 98
    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    .line 99
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    return-void

    .line 89
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No colors have been defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors and startPoints should be same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateColorIntervals()Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "colorIntervals":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;>;"
    iget-object v1, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_48

    .line 108
    iget-object v1, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    aget v1, v1, v2

    .line 109
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    aget v4, v4, v2

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 108
    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 110
    .local v1, "initialColor":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;

    iget-object v5, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    aget v8, v5, v2

    iget v5, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColorMapSize:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    aget v2, v6, v2

    mul-float v9, v5, v2

    const/4 v10, 0x0

    move-object v5, v4

    move-object v6, p0

    move v7, v1

    invoke-direct/range {v5 .. v10}, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;-><init>(Lcom/google/maps/android/heatmaps/Gradient;IIFLcom/google/maps/android/heatmaps/Gradient$1;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .end local v1    # "initialColor":I
    :cond_48
    const/4 v1, 0x1

    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4a
    iget-object v3, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    array-length v3, v3

    if-ge v2, v3, :cond_87

    .line 114
    iget v3, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColorMapSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;

    iget-object v4, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    add-int/lit8 v5, v2, -0x1

    aget v6, v4, v5

    iget-object v4, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    aget v7, v4, v2

    iget v4, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColorMapSize:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    aget v5, v5, v2

    iget-object v8, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    add-int/lit8 v9, v2, -0x1

    aget v8, v8, v9

    sub-float/2addr v5, v8

    mul-float v8, v4, v5

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;-><init>(Lcom/google/maps/android/heatmaps/Gradient;IIFLcom/google/maps/android/heatmaps/Gradient$1;)V

    invoke-virtual {v0, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 120
    .end local v2    # "i":I
    :cond_87
    iget-object v2, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    iget-object v3, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    array-length v3, v3

    sub-int/2addr v3, v1

    aget v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c4

    .line 121
    iget-object v2, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 122
    .restart local v2    # "i":I
    iget v1, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColorMapSize:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    aget v4, v4, v2

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;

    iget-object v4, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    aget v6, v4, v2

    iget-object v4, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColors:[I

    aget v7, v4, v2

    iget v4, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColorMapSize:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/maps/android/heatmaps/Gradient;->mStartPoints:[F

    aget v5, v5, v2

    sub-float/2addr v3, v5

    mul-float v8, v4, v3

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;-><init>(Lcom/google/maps/android/heatmaps/Gradient;IIFLcom/google/maps/android/heatmaps/Gradient$1;)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v2    # "i":I
    :cond_c4
    return-object v0
.end method

.method static interpolateColor(IIF)I
    .registers 12
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 170
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 172
    .local v0, "alpha":I
    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 173
    .local v2, "hsv1":[F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 174
    new-array v3, v1, [F

    .line 175
    .local v3, "hsv2":[F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v4, v5, v6, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 178
    const/4 v4, 0x0

    aget v5, v2, v4

    aget v6, v3, v4

    sub-float/2addr v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4a

    .line 179
    aget v5, v3, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    goto :goto_58

    .line 180
    :cond_4a
    aget v5, v3, v4

    aget v8, v2, v4

    sub-float/2addr v5, v8

    cmpl-float v5, v5, v7

    if-lez v5, :cond_58

    .line 181
    aget v5, v2, v4

    add-float/2addr v5, v6

    aput v5, v2, v4

    .line 185
    :cond_58
    :goto_58
    new-array v5, v1, [F

    .line 186
    .local v5, "result":[F
    nop

    .local v4, "i":I
    :goto_5b
    if-ge v4, v1, :cond_6c

    .line 187
    aget v6, v3, v4

    aget v7, v2, v4

    sub-float/2addr v6, v7

    mul-float v6, v6, p2

    aget v7, v2, v4

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 190
    .end local v4    # "i":I
    :cond_6c
    invoke-static {v0, v5}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    return v1
.end method


# virtual methods
.method generateColorMap(D)[I
    .registers 13
    .param p1, "opacity"    # D

    .line 136
    invoke-direct {p0}, Lcom/google/maps/android/heatmaps/Gradient;->generateColorIntervals()Ljava/util/HashMap;

    move-result-object v0

    .line 137
    .local v0, "colorIntervals":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;>;"
    iget v1, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColorMapSize:I

    new-array v1, v1, [I

    .line 138
    .local v1, "colorMap":[I
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;

    .line 139
    .local v3, "interval":Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;
    const/4 v4, 0x0

    .line 140
    .local v4, "start":I
    move v5, v4

    move-object v4, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v4, "interval":Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;
    .local v5, "start":I
    :goto_17
    iget v6, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColorMapSize:I

    if-ge v3, v6, :cond_4a

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;

    .line 143
    move v5, v3

    .line 145
    :cond_31
    sub-int v6, v3, v5

    int-to-float v6, v6

    invoke-static {v4}, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->access$100(Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;)F

    move-result v7

    div-float/2addr v6, v7

    .line 146
    .local v6, "ratio":F
    invoke-static {v4}, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->access$200(Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;)I

    move-result v7

    invoke-static {v4}, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->access$300(Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;)I

    move-result v8

    invoke-static {v7, v8, v6}, Lcom/google/maps/android/heatmaps/Gradient;->interpolateColor(IIF)I

    move-result v7

    aput v7, v1, v3

    .line 140
    .end local v6    # "ratio":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 148
    .end local v3    # "i":I
    :cond_4a
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p1, v6

    if-eqz v3, :cond_77

    .line 149
    nop

    .local v2, "i":I
    :goto_51
    iget v3, p0, Lcom/google/maps/android/heatmaps/Gradient;->mColorMapSize:I

    if-ge v2, v3, :cond_77

    .line 150
    aget v3, v1, v2

    .line 151
    .local v3, "c":I
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, p1

    double-to-int v6, v6

    .line 152
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 151
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v1, v2

    .line 149
    .end local v3    # "c":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 156
    .end local v2    # "i":I
    :cond_77
    return-object v1
.end method

###### Class com.google.maps.android.heatmaps.Gradient.AnonymousClass1 (com.google.maps.android.heatmaps.Gradient$1)
.class synthetic Lcom/google/maps/android/heatmaps/Gradient$1;
.super Ljava/lang/Object;
.source "Gradient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/heatmaps/Gradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.maps.android.heatmaps.Gradient.ColorInterval (com.google.maps.android.heatmaps.Gradient$ColorInterval)
.class Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;
.super Ljava/lang/Object;
.source "Gradient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/heatmaps/Gradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorInterval"
.end annotation


# instance fields
.field private final color1:I

.field private final color2:I

.field private final duration:F

.field final synthetic this$0:Lcom/google/maps/android/heatmaps/Gradient;


# direct methods
.method private constructor <init>(Lcom/google/maps/android/heatmaps/Gradient;IIF)V
    .registers 5
    .param p2, "color1"    # I
    .param p3, "color2"    # I
    .param p4, "duration"    # F

    .line 40
    iput-object p1, p0, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->this$0:Lcom/google/maps/android/heatmaps/Gradient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p2, p0, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->color1:I

    .line 42
    iput p3, p0, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->color2:I

    .line 43
    iput p4, p0, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->duration:F

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/android/heatmaps/Gradient;IIFLcom/google/maps/android/heatmaps/Gradient$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/google/maps/android/heatmaps/Gradient;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # F
    .param p5, "x4"    # Lcom/google/maps/android/heatmaps/Gradient$1;

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;-><init>(Lcom/google/maps/android/heatmaps/Gradient;IIF)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;

    .line 30
    iget v0, p0, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->duration:F

    return v0
.end method

.method static synthetic access$200(Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;

    .line 30
    iget v0, p0, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->color1:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;

    .line 30
    iget v0, p0, Lcom/google/maps/android/heatmaps/Gradient$ColorInterval;->color2:I

    return v0
.end method
