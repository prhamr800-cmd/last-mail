###### Class kotlin.internal.PlatformImplementationsKt (kotlin.internal.PlatformImplementationsKt)
.class public final Lkotlin/internal/PlatformImplementationsKt;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformImplementations.kt\nkotlin/internal/PlatformImplementationsKt\n*L\n1#1,77:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001a \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0001\u001a\u0008\u0010\u0008\u001a\u00020\u0005H\u0002\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "IMPLEMENTATIONS",
        "Lkotlin/internal/PlatformImplementations;",
        "apiVersionIsAtLeast",
        "",
        "major",
        "",
        "minor",
        "patch",
        "getJavaVersion",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "$i$a$1$run":I
    invoke-static {}, Lkotlin/internal/PlatformImplementationsKt;->getJavaVersion()I

    move-result v1

    .line 22
    .local v1, "version":I
    const v2, 0x10008

    if-lt v1, v2, :cond_3c

    .line 23
    nop

    .line 24
    :try_start_b
    const-string v2, "kotlin.internal.jdk8.JDK8PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto :goto_78

    :cond_1a
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_22} :catch_22

    .line 26
    :catch_22
    move-exception v2

    .line 27
    nop

    .line 28
    :try_start_24
    const-string v2, "kotlin.internal.JRE8PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_33

    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto :goto_78

    :cond_33
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_3b} :catch_3b

    .line 30
    :catch_3b
    move-exception v2

    .line 33
    :cond_3c
    const v2, 0x10007

    if-lt v1, v2, :cond_73

    .line 34
    nop

    .line 35
    :try_start_42
    const-string v2, "kotlin.internal.jdk7.JDK7PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_51

    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto :goto_78

    :cond_51
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_59
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_59} :catch_59

    .line 37
    :catch_59
    move-exception v2

    .line 38
    nop

    .line 39
    :try_start_5b
    const-string v2, "kotlin.internal.JRE7PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6a

    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto :goto_78

    :cond_6a
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_72} :catch_72

    .line 41
    :catch_72
    move-exception v2

    .line 44
    :cond_73
    new-instance v2, Lkotlin/internal/PlatformImplementations;

    invoke-direct {v2}, Lkotlin/internal/PlatformImplementations;-><init>()V

    .line 20
    .end local v0    # "$i$a$1$run":I
    .end local v1    # "version":I
    :goto_78
    sput-object v2, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    return-void
.end method

.method public static final apiVersionIsAtLeast(III)Z
    .registers 4
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "patch"    # I
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 77
    sget-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    invoke-virtual {v0, p0, p1, p2}, Lkotlin/KotlinVersion;->isAtLeast(III)Z

    move-result v0

    return v0
.end method

.method private static final getJavaVersion()I
    .registers 10

    .line 48
    const v0, 0x10006

    .line 49
    .local v0, "default":I
    const-string v1, "java.specification.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 50
    .local v1, "version":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 51
    .local v2, "firstDot":I
    const/high16 v3, 0x10000

    if-gez v2, :cond_26

    .line 52
    :try_start_1c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_20} :catch_23

    mul-int v3, v3, v4

    goto :goto_25

    :catch_23
    move-exception v3

    move v3, v0

    :goto_25
    return v3

    .line 54
    :cond_26
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v5, 0x2e

    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    .line 55
    .local v4, "secondDot":I
    if-gez v4, :cond_3a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 57
    :cond_3a
    const/4 v5, 0x0

    if-eqz v1, :cond_6c

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .local v5, "firstPart":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    if-eqz v1, :cond_64

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .local v6, "secondPart":Ljava/lang/String;
    nop

    .line 60
    :try_start_54
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int v7, v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_5e} :catch_60

    add-int/2addr v3, v7

    goto :goto_63

    .line 61
    :catch_60
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/NumberFormatException;
    nop

    .line 59
    move v3, v0

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_63
    return v3

    .line 58
    .end local v6    # "secondPart":Ljava/lang/String;
    :cond_64
    new-instance v3, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v3, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    .end local v5    # "firstPart":Ljava/lang/String;
    :cond_6c
    new-instance v3, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v3, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "firstDot":I
    .end local v4    # "secondDot":I
    :cond_74
    return v0
.end method
