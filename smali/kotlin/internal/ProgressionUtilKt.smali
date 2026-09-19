###### Class kotlin.internal.ProgressionUtilKt (kotlin.internal.ProgressionUtilKt)
.class public final Lkotlin/internal/ProgressionUtilKt;
.super Ljava/lang/Object;
.source "progressionUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a \u0010\u0000\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0000\u001a \u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0000\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "differenceModulo",
        "",
        "a",
        "b",
        "c",
        "",
        "getProgressionLastElement",
        "start",
        "end",
        "step",
        "mod",
        "kotlin-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method private static final differenceModulo(III)I
    .registers 5
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 32
    invoke-static {p0, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result v0

    invoke-static {p1, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result v0

    return v0
.end method

.method private static final differenceModulo(JJJ)J
    .registers 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 36
    invoke-static {p0, p1, p4, p5}, Lkotlin/internal/ProgressionUtilKt;->mod(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, p4, p5}, Lkotlin/internal/ProgressionUtilKt;->mod(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p4, p5}, Lkotlin/internal/ProgressionUtilKt;->mod(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getProgressionLastElement(III)I
    .registers 5
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "step"    # I

    .line 53
    if-lez p2, :cond_9

    .line 54
    invoke-static {p1, p0, p2}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result v0

    sub-int v0, p1, v0

    return v0

    .line 56
    :cond_9
    if-gez p2, :cond_12

    .line 57
    neg-int v0, p2

    invoke-static {p0, p1, v0}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    .line 60
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step is zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final getProgressionLastElement(JJJ)J
    .registers 15
    .param p0, "start"    # J
    .param p2, "end"    # J
    .param p4, "step"    # J

    .line 78
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_10

    .line 79
    move-wide v0, p2

    move-wide v2, p0

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(JJJ)J

    move-result-wide v0

    sub-long v0, p2, v0

    return-wide v0

    .line 81
    :cond_10
    cmp-long v2, p4, v0

    if-gez v2, :cond_1d

    .line 82
    neg-long v7, p4

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v3 .. v8}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(JJJ)J

    move-result-wide v0

    add-long/2addr v0, p2

    return-wide v0

    .line 85
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step is zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static final mod(II)I
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 21
    rem-int v0, p0, p1

    .line 22
    .local v0, "mod":I
    if-ltz v0, :cond_6

    move v1, v0

    goto :goto_8

    :cond_6
    add-int v1, v0, p1

    :goto_8
    return v1
.end method

.method private static final mod(JJ)J
    .registers 9
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 26
    rem-long v0, p0, p2

    .line 27
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    move-wide v2, v0

    goto :goto_d

    :cond_a
    const/4 v2, 0x0

    add-long v2, v0, p2

    :goto_d
    return-wide v2
.end method
