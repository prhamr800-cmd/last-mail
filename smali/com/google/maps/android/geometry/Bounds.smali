###### Class com.google.maps.android.geometry.Bounds (com.google.maps.android.geometry.Bounds)
.class public Lcom/google/maps/android/geometry/Bounds;
.super Ljava/lang/Object;
.source "Bounds.java"


# instance fields
.field public final maxX:D

.field public final maxY:D

.field public final midX:D

.field public final midY:D

.field public final minX:D

.field public final minY:D


# direct methods
.method public constructor <init>(DDDD)V
    .registers 13
    .param p1, "minX"    # D
    .param p3, "maxX"    # D
    .param p5, "minY"    # D
    .param p7, "maxY"    # D

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/google/maps/android/geometry/Bounds;->minX:D

    .line 34
    iput-wide p5, p0, Lcom/google/maps/android/geometry/Bounds;->minY:D

    .line 35
    iput-wide p3, p0, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    .line 36
    iput-wide p7, p0, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    .line 38
    add-double v0, p1, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->midX:D

    .line 39
    add-double v0, p5, p7

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->midY:D

    .line 40
    return-void
.end method


# virtual methods
.method public contains(DD)Z
    .registers 8
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 43
    iget-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->minX:D

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_1a

    iget-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_1a

    iget-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->minY:D

    cmpg-double v2, v0, p3

    if-gtz v2, :cond_1a

    iget-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public contains(Lcom/google/maps/android/geometry/Bounds;)Z
    .registers 7
    .param p1, "bounds"    # Lcom/google/maps/android/geometry/Bounds;

    .line 59
    iget-wide v0, p1, Lcom/google/maps/android/geometry/Bounds;->minX:D

    iget-wide v2, p0, Lcom/google/maps/android/geometry/Bounds;->minX:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_22

    iget-wide v0, p1, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    iget-wide v2, p0, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_22

    iget-wide v0, p1, Lcom/google/maps/android/geometry/Bounds;->minY:D

    iget-wide v2, p0, Lcom/google/maps/android/geometry/Bounds;->minY:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_22

    iget-wide v0, p1, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    iget-wide v2, p0, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public contains(Lcom/google/maps/android/geometry/Point;)Z
    .registers 6
    .param p1, "point"    # Lcom/google/maps/android/geometry/Point;

    .line 47
    iget-wide v0, p1, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v2, p1, Lcom/google/maps/android/geometry/Point;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/maps/android/geometry/Bounds;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public intersects(DDDD)Z
    .registers 12
    .param p1, "minX"    # D
    .param p3, "maxX"    # D
    .param p5, "minY"    # D
    .param p7, "maxY"    # D

    .line 51
    iget-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1a

    iget-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->minX:D

    cmpg-double v2, v0, p3

    if-gez v2, :cond_1a

    iget-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    cmpg-double v2, p5, v0

    if-gez v2, :cond_1a

    iget-wide v0, p0, Lcom/google/maps/android/geometry/Bounds;->minY:D

    cmpg-double v2, v0, p7

    if-gez v2, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public intersects(Lcom/google/maps/android/geometry/Bounds;)Z
    .registers 11
    .param p1, "bounds"    # Lcom/google/maps/android/geometry/Bounds;

    .line 55
    iget-wide v1, p1, Lcom/google/maps/android/geometry/Bounds;->minX:D

    iget-wide v3, p1, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    iget-wide v5, p1, Lcom/google/maps/android/geometry/Bounds;->minY:D

    iget-wide v7, p1, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/maps/android/geometry/Bounds;->intersects(DDDD)Z

    move-result v0

    return v0
.end method
