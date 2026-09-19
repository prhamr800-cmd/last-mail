###### Class kotlin.experimental.BitwiseOperationsKt (kotlin.experimental.BitwiseOperationsKt)
.class public final Lkotlin/experimental/BitwiseOperationsKt;
.super Ljava/lang/Object;
.source "bitwiseOperations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0004\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0000\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0003*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0005\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u00a8\u0006\u0007"
    }
    d2 = {
        "and",
        "",
        "other",
        "",
        "inv",
        "or",
        "xor",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method private static final and(BB)B
    .registers 4
    .param p0, "$receiver"    # B
    .param p1, "other"    # B
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 22
    .local v0, "$i$f$and":I
    and-int v1, p0, p1

    int-to-byte v1, v1

    return v1
.end method

.method private static final and(SS)S
    .registers 4
    .param p0, "$receiver"    # S
    .param p1, "other"    # S
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 40
    .local v0, "$i$f$and":I
    and-int v1, p0, p1

    int-to-short v1, v1

    return v1
.end method

.method private static final inv(B)B
    .registers 3
    .param p0, "$receiver"    # B
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 34
    .local v0, "$i$f$inv":I
    xor-int/lit8 v1, p0, -0x1

    int-to-byte v1, v1

    return v1
.end method

.method private static final inv(S)S
    .registers 3
    .param p0, "$receiver"    # S
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$f$inv":I
    xor-int/lit8 v1, p0, -0x1

    int-to-short v1, v1

    return v1
.end method

.method private static final or(BB)B
    .registers 4
    .param p0, "$receiver"    # B
    .param p1, "other"    # B
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 26
    .local v0, "$i$f$or":I
    or-int v1, p0, p1

    int-to-byte v1, v1

    return v1
.end method

.method private static final or(SS)S
    .registers 4
    .param p0, "$receiver"    # S
    .param p1, "other"    # S
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$or":I
    or-int v1, p0, p1

    int-to-short v1, v1

    return v1
.end method

.method private static final xor(BB)B
    .registers 4
    .param p0, "$receiver"    # B
    .param p1, "other"    # B
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$f$xor":I
    xor-int v1, p0, p1

    int-to-byte v1, v1

    return v1
.end method

.method private static final xor(SS)S
    .registers 4
    .param p0, "$receiver"    # S
    .param p1, "other"    # S
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$f$xor":I
    xor-int v1, p0, p1

    int-to-short v1, v1

    return v1
.end method
