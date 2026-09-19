###### Class com.google.zxing.oned.rss.RSSUtils (com.google.zxing.oned.rss.RSSUtils)
.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .registers 7
    .param p0, "n"    # I
    .param p1, "r"    # I

    .line 106
    sub-int v0, p0, p1

    if-le v0, p1, :cond_8

    .line 107
    move v0, p1

    .line 108
    .local v0, "minDenom":I
    sub-int v1, p0, p1

    goto :goto_b

    .line 110
    .end local v0    # "minDenom":I
    :cond_8
    sub-int v0, p0, p1

    .line 111
    .restart local v0    # "minDenom":I
    move v1, p1

    .line 113
    .local v1, "maxDenom":I
    :goto_b
    const/4 v2, 0x1

    .line 114
    .local v2, "val":I
    const/4 v3, 0x1

    .line 115
    .local v3, "j":I
    move v4, v3

    move v3, v2

    move v2, p0

    .local v2, "i":I
    .local v3, "val":I
    .local v4, "j":I
    :goto_10
    if-le v2, v1, :cond_1c

    .line 116
    mul-int v3, v3, v2

    .line 117
    if-gt v4, v0, :cond_19

    .line 118
    div-int/2addr v3, v4

    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 115
    :cond_19
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 122
    .end local v2    # "i":I
    :cond_1c
    :goto_1c
    if-gt v4, v0, :cond_22

    .line 123
    div-int/2addr v3, v4

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 126
    :cond_22
    return v3
.end method

.method public static getRSSvalue([IIZ)I
    .registers 15
    .param p0, "widths"    # [I
    .param p1, "maxWidth"    # I
    .param p2, "noNarrow"    # Z

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "n":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    .end local v0    # "n":I
    .local v3, "n":I
    :goto_5
    if-ge v0, v1, :cond_d

    aget v4, p0, v0

    .line 69
    .local v4, "width":I
    add-int/2addr v3, v4

    .line 68
    .end local v4    # "width":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 71
    :cond_d
    const/4 v0, 0x0

    .line 72
    .local v0, "val":I
    const/4 v1, 0x0

    .line 73
    .local v1, "narrowMask":I
    array-length v4, p0

    .line 74
    .local v4, "elements":I
    nop

    .local v2, "bar":I
    :goto_11
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_7f

    .line 76
    const/4 v5, 0x1

    .local v5, "elmWidth":I
    const/4 v6, 0x1

    shl-int v7, v6, v2

    or-int/2addr v1, v7

    .line 77
    :goto_1a
    aget v7, p0, v2

    if-ge v5, v7, :cond_7b

    .line 79
    sub-int v7, v3, v5

    sub-int/2addr v7, v6

    sub-int v8, v4, v2

    add-int/lit8 v8, v8, -0x2

    invoke-static {v7, v8}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v7

    .line 80
    .local v7, "subVal":I
    if-eqz p2, :cond_46

    if-nez v1, :cond_46

    sub-int v8, v3, v5

    sub-int v9, v4, v2

    sub-int/2addr v9, v6

    sub-int/2addr v8, v9

    sub-int v9, v4, v2

    sub-int/2addr v9, v6

    if-lt v8, v9, :cond_46

    .line 82
    sub-int v8, v3, v5

    sub-int v9, v4, v2

    sub-int/2addr v8, v9

    sub-int v9, v4, v2

    add-int/lit8 v9, v9, -0x2

    invoke-static {v8, v9}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v8

    sub-int/2addr v7, v8

    .line 85
    :cond_46
    sub-int v8, v4, v2

    sub-int/2addr v8, v6

    if-le v8, v6, :cond_6c

    .line 86
    const/4 v8, 0x0

    .line 87
    .local v8, "lessVal":I
    sub-int v9, v3, v5

    sub-int v10, v4, v2

    add-int/lit8 v10, v10, -0x2

    sub-int/2addr v9, v10

    .line 88
    .local v9, "mxwElement":I
    :goto_53
    if-le v9, p1, :cond_65

    .line 89
    sub-int v10, v3, v5

    sub-int/2addr v10, v9

    sub-int/2addr v10, v6

    sub-int v11, v4, v2

    add-int/lit8 v11, v11, -0x3

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    add-int/2addr v8, v10

    .line 88
    add-int/lit8 v9, v9, -0x1

    goto :goto_53

    .line 92
    .end local v9    # "mxwElement":I
    :cond_65
    add-int/lit8 v9, v4, -0x1

    sub-int/2addr v9, v2

    mul-int v9, v9, v8

    sub-int/2addr v7, v9

    .line 93
    .end local v8    # "lessVal":I
    goto :goto_72

    :cond_6c
    sub-int v8, v3, v5

    if-le v8, p1, :cond_72

    .line 94
    add-int/lit8 v7, v7, -0x1

    .line 96
    :cond_72
    :goto_72
    add-int/2addr v0, v7

    .line 78
    .end local v7    # "subVal":I
    add-int/lit8 v5, v5, 0x1

    shl-int v7, v6, v2

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v1, v7

    goto :goto_1a

    .line 98
    :cond_7b
    sub-int/2addr v3, v5

    .line 74
    .end local v5    # "elmWidth":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 100
    .end local v2    # "bar":I
    :cond_7f
    return v0
.end method
