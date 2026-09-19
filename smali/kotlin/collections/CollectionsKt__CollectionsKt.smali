###### Class kotlin.collections.CollectionsKt__CollectionsKt (kotlin.collections.CollectionsKt__CollectionsKt)
.class Lkotlin/collections/CollectionsKt__CollectionsKt;
.super Ljava/lang/Object;
.source "Collections.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collections.kt\nkotlin/collections/CollectionsKt__CollectionsKt\n*L\n1#1,346:1\n291#1:347\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000v\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000f\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u001a@\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0004\u0008\u0000\u0010\u00072\u0006\u0010\u000c\u001a\u00020\u00062!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u0002H\u00070\u000eH\u0087\u0008\u001a@\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0013\"\u0004\u0008\u0000\u0010\u00072\u0006\u0010\u000c\u001a\u00020\u00062!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u0002H\u00070\u000eH\u0087\u0008\u001a\u001f\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u0002H\u00070\u0015j\u0008\u0012\u0004\u0012\u0002H\u0007`\u0016\"\u0004\u0008\u0000\u0010\u0007H\u0087\u0008\u001a5\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u0002H\u00070\u0015j\u0008\u0012\u0004\u0012\u0002H\u0007`\u0016\"\u0004\u0008\u0000\u0010\u00072\u0012\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00070\u0018\"\u0002H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a\"\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u00182\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0081\u0008\u00a2\u0006\u0002\u0010\u001d\u001a4\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0018\"\u0004\u0008\u0000\u0010\u00072\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0018H\u0081\u0008\u00a2\u0006\u0002\u0010\u001f\u001a\u0012\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0004\u0008\u0000\u0010\u0007\u001a\u0015\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0004\u0008\u0000\u0010\u0007H\u0087\u0008\u001a!\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0004\u0008\u0000\u0010\u00072\u0006\u0010\"\u001a\u0002H\u0007H\u0007\u00a2\u0006\u0002\u0010#\u001a+\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0004\u0008\u0000\u0010\u00072\u0012\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00070\u0018\"\u0002H\u0007\u00a2\u0006\u0002\u0010$\u001a%\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0008\u0008\u0000\u0010\u0007*\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u0001H\u0007\u00a2\u0006\u0002\u0010#\u001a3\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0008\u0008\u0000\u0010\u0007*\u00020\u001b2\u0016\u0010\u0017\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u0001H\u00070\u0018\"\u0004\u0018\u0001H\u0007\u00a2\u0006\u0002\u0010$\u001a\u0015\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0013\"\u0004\u0008\u0000\u0010\u0007H\u0087\u0008\u001a+\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0013\"\u0004\u0008\u0000\u0010\u00072\u0012\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00070\u0018\"\u0002H\u0007\u00a2\u0006\u0002\u0010$\u001a%\u0010\'\u001a\u00020(2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0008+\u001a%\u0010,\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0002\"\u0004\u0008\u0000\u0010\u0007*\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00070\u0018H\u0000\u00a2\u0006\u0002\u0010-\u001aS\u0010.\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u00082\u0006\u0010\"\u001a\u0002H\u00072\u001a\u0010/\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u0002H\u000700j\n\u0012\u0006\u0008\u0000\u0012\u0002H\u0007`12\u0008\u0008\u0002\u0010)\u001a\u00020\u00062\u0008\u0008\u0002\u0010*\u001a\u00020\u0006\u00a2\u0006\u0002\u00102\u001a>\u0010.\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u00082\u0008\u0008\u0002\u0010)\u001a\u00020\u00062\u0008\u0008\u0002\u0010*\u001a\u00020\u00062\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00060\u000e\u001aE\u0010.\u001a\u00020\u0006\"\u000e\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u000704*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00070\u00082\u0008\u0010\"\u001a\u0004\u0018\u0001H\u00072\u0008\u0008\u0002\u0010)\u001a\u00020\u00062\u0008\u0008\u0002\u0010*\u001a\u00020\u0006\u00a2\u0006\u0002\u00105\u001ad\u00106\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u0007\"\u000e\u0008\u0001\u00107*\u0008\u0012\u0004\u0012\u0002H704*\u0008\u0012\u0004\u0012\u0002H\u00070\u00082\u0008\u00108\u001a\u0004\u0018\u0001H72\u0008\u0008\u0002\u0010)\u001a\u00020\u00062\u0008\u0008\u0002\u0010*\u001a\u00020\u00062\u0016\u0008\u0004\u00109\u001a\u0010\u0012\u0004\u0012\u0002H\u0007\u0012\u0006\u0012\u0004\u0018\u0001H70\u000eH\u0086\u0008\u00a2\u0006\u0002\u0010:\u001a,\u0010;\u001a\u00020<\"\t\u0008\u0000\u0010\u0007\u00a2\u0006\u0002\u0008=*\u0008\u0012\u0004\u0012\u0002H\u00070\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0002H\u0087\u0008\u001a1\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0018\"\u0004\u0008\u0000\u0010\u0007*\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00070\u00182\u0006\u0010?\u001a\u00020<H\u0003\u00a2\u0006\u0004\u0008@\u0010A\u001a\u0019\u0010B\u001a\u00020<\"\u0004\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u0002H\u0087\u0008\u001a\u001e\u0010C\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0004\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u0008H\u0000\u001a!\u0010D\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0002\"\u0004\u0008\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u0002H\u0087\u0008\u001a!\u0010D\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0004\u0008\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u0008H\u0087\u0008\u001a\u001f\u0010E\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0008\"\u0004\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070FH\u0087\u0008\"\u0019\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"!\u0010\u0005\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006G"
    }
    d2 = {
        "indices",
        "Lkotlin/ranges/IntRange;",
        "",
        "getIndices",
        "(Ljava/util/Collection;)Lkotlin/ranges/IntRange;",
        "lastIndex",
        "",
        "T",
        "",
        "getLastIndex",
        "(Ljava/util/List;)I",
        "List",
        "size",
        "init",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "MutableList",
        "",
        "arrayListOf",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "elements",
        "",
        "([Ljava/lang/Object;)Ljava/util/ArrayList;",
        "copyToArrayImpl",
        "",
        "collection",
        "(Ljava/util/Collection;)[Ljava/lang/Object;",
        "array",
        "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;",
        "emptyList",
        "listOf",
        "element",
        "(Ljava/lang/Object;)Ljava/util/List;",
        "([Ljava/lang/Object;)Ljava/util/List;",
        "listOfNotNull",
        "mutableListOf",
        "rangeCheck",
        "",
        "fromIndex",
        "toIndex",
        "rangeCheck$CollectionsKt__CollectionsKt",
        "asCollection",
        "([Ljava/lang/Object;)Ljava/util/Collection;",
        "binarySearch",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;II)I",
        "comparison",
        "",
        "(Ljava/util/List;Ljava/lang/Comparable;II)I",
        "binarySearchBy",
        "K",
        "key",
        "selector",
        "(Ljava/util/List;Ljava/lang/Comparable;IILkotlin/jvm/functions/Function1;)I",
        "containsAll",
        "",
        "Lkotlin/internal/OnlyInputTypes;",
        "copyToArrayOfAny",
        "isVarargs",
        "copyToArrayOfAny$CollectionsKt__CollectionsKt",
        "([Ljava/lang/Object;Z)[Ljava/lang/Object;",
        "isNotEmpty",
        "optimizeReadOnlyList",
        "orEmpty",
        "toList",
        "Ljava/util/Enumeration;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0x9
    }
    xi = 0x1
    xs = "kotlin/collections/CollectionsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final List(ILkotlin/jvm/functions/Function1;)Ljava/util/List;
    .registers 7
    .param p0, "size"    # I
    .param p1, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 123
    .local v0, "$i$f$List":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v2, p0, -0x1

    if-ltz v2, :cond_1b

    const/4 v3, 0x0

    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v3, v2, :cond_1b

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1b
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static final MutableList(ILkotlin/jvm/functions/Function1;)Ljava/util/List;
    .registers 9
    .param p0, "size"    # I
    .param p1, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 132
    .local v0, "$i$f$MutableList":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v1, "list":Ljava/util/ArrayList;
    add-int/lit8 v2, p0, -0x1

    if-ltz v2, :cond_1d

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    move v5, v3

    .local v4, "$i$a$1$repeat":I
    .local v5, "index":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "$i$a$1$repeat":I
    .end local v5    # "index":I
    if-eq v3, v2, :cond_1d

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 134
    :cond_1d
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method public static final synthetic access$copyToArrayOfAny([Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 3
    .param p0, "$receiver"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "isVarargs"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->copyToArrayOfAny$CollectionsKt__CollectionsKt([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final arrayListOf()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 101
    .local v0, "$i$f$arrayListOf":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static final varargs arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "elements"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    array-length v0, p0

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lkotlin/collections/ArrayAsCollection;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1b
    return-object v0
.end method

.method public static final asCollection([Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p0, "$receiver"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lkotlin/collections/ArrayAsCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public static final binarySearch(Ljava/util/List;IILkotlin/jvm/functions/Function1;)I
    .registers 9
    .param p0, "$receiver"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "comparison"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;II",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparison"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p1, p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->rangeCheck$CollectionsKt__CollectionsKt(III)V

    .line 315
    move v0, p1

    .line 316
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 318
    .local v1, "high":I
    :goto_14
    if-gt v0, v1, :cond_33

    .line 319
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 320
    .local v2, "mid":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 321
    .local v3, "midVal":Ljava/lang/Object;
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 323
    .local v4, "cmp":I
    if-gez v4, :cond_2d

    .line 324
    add-int/lit8 v0, v2, 0x1

    goto :goto_31

    .line 325
    :cond_2d
    if-lez v4, :cond_32

    .line 326
    add-int/lit8 v1, v2, -0x1

    .line 318
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;
    .end local v4    # "cmp":I
    :goto_31
    goto :goto_14

    .line 328
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Object;
    .restart local v4    # "cmp":I
    :cond_32
    return v2

    .line 330
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;
    .end local v4    # "cmp":I
    :cond_33
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method public static final binarySearch(Ljava/util/List;Ljava/lang/Comparable;II)I
    .registers 9
    .param p0, "$receiver"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "element"    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+TT;>;TT;II)I"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p2, p3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->rangeCheck$CollectionsKt__CollectionsKt(III)V

    .line 222
    move v0, p2

    .line 223
    .local v0, "low":I
    add-int/lit8 v1, p3, -0x1

    .line 225
    .local v1, "high":I
    :goto_f
    if-gt v0, v1, :cond_2a

    .line 226
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 227
    .local v2, "mid":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 228
    .local v3, "midVal":Ljava/lang/Comparable;
    invoke-static {v3, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v4

    .line 230
    .local v4, "cmp":I
    if-gez v4, :cond_24

    .line 231
    add-int/lit8 v0, v2, 0x1

    goto :goto_28

    .line 232
    :cond_24
    if-lez v4, :cond_29

    .line 233
    add-int/lit8 v1, v2, -0x1

    .line 225
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;
    .end local v4    # "cmp":I
    :goto_28
    goto :goto_f

    .line 235
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Comparable;
    .restart local v4    # "cmp":I
    :cond_29
    return v2

    .line 237
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;
    .end local v4    # "cmp":I
    :cond_2a
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method public static final binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;II)I
    .registers 10
    .param p0, "$receiver"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "comparator"    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;II)I"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p3, p4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->rangeCheck$CollectionsKt__CollectionsKt(III)V

    .line 257
    move v0, p3

    .line 258
    .local v0, "low":I
    add-int/lit8 v1, p4, -0x1

    .line 260
    .local v1, "high":I
    :goto_14
    if-gt v0, v1, :cond_2d

    .line 261
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 262
    .local v2, "mid":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 263
    .local v3, "midVal":Ljava/lang/Object;
    invoke-interface {p2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 265
    .local v4, "cmp":I
    if-gez v4, :cond_27

    .line 266
    add-int/lit8 v0, v2, 0x1

    goto :goto_2b

    .line 267
    :cond_27
    if-lez v4, :cond_2c

    .line 268
    add-int/lit8 v1, v2, -0x1

    .line 260
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;
    .end local v4    # "cmp":I
    :goto_2b
    goto :goto_14

    .line 270
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Object;
    .restart local v4    # "cmp":I
    :cond_2c
    return v2

    .line 272
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;
    .end local v4    # "cmp":I
    :cond_2d
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method public static bridge synthetic binarySearch$default(Ljava/util/List;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)I
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    .line 312
    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    :cond_d
    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/CollectionsKt;->binarySearch(Ljava/util/List;IILkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    .line 219
    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    :cond_d
    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/CollectionsKt;->binarySearch(Ljava/util/List;Ljava/lang/Comparable;II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic binarySearch$default(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;IIILjava/lang/Object;)I
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    .line 254
    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    :cond_d
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/collections/CollectionsKt;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result p0

    return p0
.end method

.method public static final binarySearchBy(Ljava/util/List;Ljava/lang/Comparable;IILkotlin/jvm/functions/Function1;)I
    .registers 7
    .param p0, "$receiver"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "key"    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "selector"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable<",
            "-TK;>;>(",
            "Ljava/util/List<",
            "+TT;>;TK;II",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TK;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$binarySearchBy":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "selector"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    new-instance v1, Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;

    invoke-direct {v1, p4, p1}, Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Comparable;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p2, p3, v1}, Lkotlin/collections/CollectionsKt;->binarySearch(Ljava/util/List;IILkotlin/jvm/functions/Function1;)I

    move-result v1

    return v1
.end method

.method public static bridge synthetic binarySearchBy$default(Ljava/util/List;Ljava/lang/Comparable;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)I
    .registers 7
    .param p0, "$receiver"    # Ljava/util/List;
    .param p1, "key"    # Ljava/lang/Comparable;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "selector"    # Lkotlin/jvm/functions/Function1;

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    .line 290
    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    .local p5, "$i$f$binarySearchBy":I
    :cond_d
    const-string p6, "$receiver"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "selector"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    new-instance p6, Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;

    invoke-direct {p6, p4, p1}, Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Comparable;)V

    check-cast p6, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p2, p3, p6}, Lkotlin/collections/CollectionsKt;->binarySearch(Ljava/util/List;IILkotlin/jvm/functions/Function1;)I

    move-result p6

    return p6
.end method

.method private static final containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 4
    .param p0, "$receiver"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 178
    .local v0, "$i$f$containsAll":I
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method private static final copyToArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 4
    .param p0, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 189
    .local v0, "$i$f$copyToArrayImpl":I
    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "kotlin.jvm.internal.Coll\u2026Array.toArray(collection)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final copyToArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "*>;[TT;)[TT;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 194
    .local v0, "$i$f$copyToArrayImpl":I
    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "kotlin.jvm.internal.Coll\u2026oArray(collection, array)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final copyToArrayOfAny$CollectionsKt__CollectionsKt([Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 4
    .param p0, "$receiver"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "isVarargs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;Z)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 199
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 201
    if-eqz p0, :cond_12

    .line 199
    move-object v0, p0

    goto :goto_26

    .line 201
    :cond_12
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1a
    array-length v0, p0

    const-class v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(\u2026 Array<Any?>::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    :goto_26
    nop

    .line 203
    return-object v0
.end method

.method public static final emptyList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;
    .registers 4
    .param p0, "$receiver"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lkotlin/ranges/IntRange;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final getLastIndex(Ljava/util/List;)I
    .registers 2
    .param p0, "$receiver"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)I"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static final isNotEmpty(Ljava/util/Collection;)Z
    .registers 3
    .param p0, "$receiver"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 153
    .local v0, "$i$f$isNotEmpty":I
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static final listOf()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 84
    .local v0, "$i$f$listOf":I
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static final listOf(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p0, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 91
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "java.util.Collections.singletonList(element)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final varargs listOf([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .param p0, "elements"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    array-length v0, p0

    if-lez v0, :cond_d

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public static final listOfNotNull(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .param p0, "element"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    if-eqz p0, :cond_7

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public static final varargs listOfNotNull([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .param p0, "elements"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final mutableListOf()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 96
    .local v0, "$i$f$mutableListOf":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final varargs mutableListOf([Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .param p0, "elements"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    array-length v0, p0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_d
    check-cast v0, Ljava/util/List;

    goto :goto_1e

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lkotlin/collections/ArrayAsCollection;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    :goto_1e
    return-object v0
.end method

.method public static final optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "$receiver"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 183
    nop

    .line 180
    move-object v0, p0

    goto :goto_1d

    .line 182
    :pswitch_f
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1d

    .line 181
    :pswitch_19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 180
    :goto_1d
    nop

    .line 184
    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_f
    .end packed-switch
.end method

.method private static final orEmpty(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .param p0, "$receiver"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 157
    .local v0, "$i$f$orEmpty":I
    if-eqz p0, :cond_5

    move-object v1, p0

    goto :goto_b

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_b
    return-object v1
.end method

.method private static final orEmpty(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "$receiver"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 161
    .local v0, "$i$f$orEmpty":I
    if-eqz p0, :cond_5

    move-object v1, p0

    goto :goto_9

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_9
    return-object v1
.end method

.method private static final rangeCheck$CollectionsKt__CollectionsKt(III)V
    .registers 6
    .param p0, "size"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 338
    nop

    .line 339
    if-gt p1, p2, :cond_4d

    .line 340
    if-ltz p1, :cond_2f

    .line 341
    if-gt p2, p0, :cond_9

    .line 342
    nop

    .line 343
    return-void

    .line 341
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is greater than size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 340
    :cond_2f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is less than zero."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 339
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is greater than toIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static final toList(Ljava/util/Enumeration;)Ljava/util/List;
    .registers 4
    .param p0, "$receiver"    # Ljava/util/Enumeration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 169
    .local v0, "$i$f$toList":I
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "java.util.Collections.list(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

###### Class kotlin.collections.CollectionsKt__CollectionsKt.AnonymousClass1 (kotlin.collections.CollectionsKt__CollectionsKt$binarySearchBy$1)
.class public final Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Collections.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/CollectionsKt__CollectionsKt;->binarySearchBy(Ljava/util/List;Ljava/lang/Comparable;IILkotlin/jvm/functions/Function1;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collections.kt\nkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1\n*L\n1#1,346:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000f\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u000e\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "K",
        "",
        "it",
        "invoke",
        "(Ljava/lang/Object;)I"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/Comparable;

.field final synthetic $selector:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Comparable;)V
    .registers 3

    iput-object p1, p0, Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;->$selector:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;->$key:Ljava/lang/Comparable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)I
    .registers 4
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;->$selector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;->$key:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1;->invoke(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
