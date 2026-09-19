###### Class android.support.v4.media.MediaBrowserCompatUtils (android.support.v4.media.MediaBrowserCompatUtils)
.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 33
    return v0

    .line 34
    :cond_4
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_1b

    .line 35
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_19

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 36
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    .line 37
    :cond_1b
    if-nez p1, :cond_30

    .line 38
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2e

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 39
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    .line 41
    :cond_30
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE"

    .line 42
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_4d

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 43
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    .line 44
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    return v0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 11
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 49
    const/4 v0, -0x1

    if-nez p0, :cond_5

    const/4 v1, -0x1

    goto :goto_b

    :cond_5
    const-string v1, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "page1":I
    :goto_b
    if-nez p1, :cond_f

    const/4 v2, -0x1

    goto :goto_15

    :cond_f
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 51
    .local v2, "page2":I
    :goto_15
    if-nez p0, :cond_19

    .line 52
    const/4 v3, -0x1

    goto :goto_1f

    .line 51
    :cond_19
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 52
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 53
    .local v3, "pageSize1":I
    :goto_1f
    if-nez p1, :cond_23

    .line 54
    const/4 v4, -0x1

    goto :goto_29

    .line 53
    :cond_23
    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    .line 54
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 57
    .local v4, "pageSize2":I
    :goto_29
    const/4 v5, 0x1

    if-eq v1, v0, :cond_35

    if-ne v3, v0, :cond_2f

    goto :goto_35

    .line 61
    :cond_2f
    mul-int v6, v3, v1

    .line 62
    .local v6, "startIndex1":I
    add-int v7, v6, v3

    sub-int/2addr v7, v5

    goto :goto_39

    .line 58
    .end local v6    # "startIndex1":I
    :cond_35
    :goto_35
    const/4 v6, 0x0

    .line 59
    .restart local v6    # "startIndex1":I
    const v7, 0x7fffffff

    .line 62
    .local v7, "endIndex1":I
    :goto_39
    nop

    .line 65
    if-eq v2, v0, :cond_45

    if-ne v4, v0, :cond_3f

    goto :goto_45

    .line 69
    :cond_3f
    mul-int v0, v4, v2

    .line 70
    .local v0, "startIndex2":I
    add-int v8, v0, v4

    sub-int/2addr v8, v5

    goto :goto_49

    .line 66
    .end local v0    # "startIndex2":I
    :cond_45
    :goto_45
    const/4 v0, 0x0

    .line 67
    .restart local v0    # "startIndex2":I
    const v8, 0x7fffffff

    .line 70
    .local v8, "endIndex2":I
    :goto_49
    nop

    .line 74
    if-lt v7, v0, :cond_4f

    if-lt v8, v6, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    return v5
.end method
