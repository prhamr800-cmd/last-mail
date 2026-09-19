###### Class kotlin.collections.GroupingKt (kotlin.collections.GroupingKt)
.class public final Lkotlin/collections/GroupingKt;
.super Ljava/lang/Object;
.source "Grouping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGrouping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Grouping.kt\nkotlin/collections/GroupingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,315:1\n70#1,6:316\n44#1:322\n70#1,6:323\n70#1,6:329\n44#1:335\n70#1,6:336\n70#1,6:342\n44#1:348\n70#1,6:349\n70#1,6:355\n130#1,2:361\n70#1,6:363\n174#1,2:369\n70#1,6:371\n1483#2,2:377\n*E\n*S KotlinDebug\n*F\n+ 1 Grouping.kt\nkotlin/collections/GroupingKt\n*L\n44#1,6:316\n101#1:322\n101#1,6:323\n131#1,6:329\n151#1:335\n151#1,6:336\n175#1,6:342\n196#1:348\n196#1,6:349\n223#1,6:355\n240#1,2:361\n240#1,6:363\n257#1,2:369\n257#1,6:371\n294#1,2:377\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\u0008\u0005\u001a\u009b\u0001\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002\"\u0004\u0008\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052b\u0010\u0006\u001a^\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0015\u0012\u0013\u0018\u0001H\u0003\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u0002H\u00030\u0007H\u0087\u0008\u001a\u00b4\u0001\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002\"\u0004\u0008\u0002\u0010\u0003\"\u0016\u0008\u0003\u0010\u0010*\u0010\u0012\u0006\u0008\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102b\u0010\u0006\u001a^\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0015\u0012\u0013\u0018\u0001H\u0003\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u0002H\u00030\u0007H\u0087\u0008\u00a2\u0006\u0002\u0010\u0013\u001a0\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00150\u0001\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u0005H\u0007\u001aI\u0010\u0016\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002\"\u0016\u0008\u0002\u0010\u0010*\u0010\u0012\u0006\u0008\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00150\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u0010H\u0007\u00a2\u0006\u0002\u0010\u0017\u001a\u00bc\u0001\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002\"\u0004\u0008\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u000526\u0010\u0019\u001a2\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\u00030\u001a2K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u0011H\u0003\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\u00030\u001bH\u0087\u0008\u001a|\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002\"\u0004\u0008\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u001c\u001a\u0002H\u000326\u0010\u0006\u001a2\u0012\u0013\u0012\u0011H\u0003\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\u00030\u001aH\u0087\u0008\u00a2\u0006\u0002\u0010\u001d\u001a\u00d5\u0001\u0010\u001e\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002\"\u0004\u0008\u0002\u0010\u0003\"\u0016\u0008\u0003\u0010\u0010*\u0010\u0012\u0006\u0008\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u001026\u0010\u0019\u001a2\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\u00030\u001a2K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u0011H\u0003\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\u00030\u001bH\u0087\u0008\u00a2\u0006\u0002\u0010\u001f\u001a\u0090\u0001\u0010\u001e\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002\"\u0004\u0008\u0002\u0010\u0003\"\u0016\u0008\u0003\u0010\u0010*\u0010\u0012\u0006\u0008\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102\u0006\u0010\u001c\u001a\u0002H\u000326\u0010\u0006\u001a2\u0012\u0013\u0012\u0011H\u0003\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\u00030\u001aH\u0087\u0008\u00a2\u0006\u0002\u0010 \u001aW\u0010!\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\"\"\u0004\u0008\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\"0\u00112\u001e\u0010#\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\"0%\u0012\u0004\u0012\u0002H\u00030$H\u0081\u0008\u001a\u0088\u0001\u0010&\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\'0\u0001\"\u0004\u0008\u0000\u0010\'\"\u0008\u0008\u0001\u0010\u0004*\u0002H\'\"\u0004\u0008\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u0011H\'\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\'0\u001bH\u0087\u0008\u001a\u00a1\u0001\u0010(\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\'\"\u0008\u0008\u0001\u0010\u0004*\u0002H\'\"\u0004\u0008\u0002\u0010\u0002\"\u0016\u0008\u0003\u0010\u0010*\u0010\u0012\u0006\u0008\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\'0\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u0011H\'\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\'0\u001bH\u0087\u0008\u00a2\u0006\u0002\u0010)\u00a8\u0006*"
    }
    d2 = {
        "aggregate",
        "",
        "K",
        "R",
        "T",
        "Lkotlin/collections/Grouping;",
        "operation",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "accumulator",
        "element",
        "",
        "first",
        "aggregateTo",
        "M",
        "",
        "destination",
        "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)Ljava/util/Map;",
        "eachCount",
        "",
        "eachCountTo",
        "(Lkotlin/collections/Grouping;Ljava/util/Map;)Ljava/util/Map;",
        "fold",
        "initialValueSelector",
        "Lkotlin/Function2;",
        "Lkotlin/Function3;",
        "initialValue",
        "(Lkotlin/collections/Grouping;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;",
        "foldTo",
        "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;",
        "(Lkotlin/collections/Grouping;Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;",
        "mapValuesInPlace",
        "V",
        "f",
        "Lkotlin/Function1;",
        "",
        "reduce",
        "S",
        "reduceTo",
        "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;",
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
.method public static final aggregate(Lkotlin/collections/Grouping;Lkotlin/jvm/functions/Function4;)Ljava/util/Map;
    .registers 12
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "operation"    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-TK;-TR;-TT;-",
            "Ljava/lang/Boolean;",
            "+TR;>;)",
            "Ljava/util/Map<",
            "TK;TR;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$aggregate":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "operation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .local v1, "destination$iv":Ljava/util/Map;
    move-object v2, p0

    .local v2, "$receiver$iv":Lkotlin/collections/Grouping;
    const/4 v3, 0x0

    move v4, v3

    .line 316
    .local v4, "$i$f$aggregateTo":I
    invoke-interface {v2}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 317
    .local v6, "e$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 318
    .local v7, "key$iv":Ljava/lang/Object;
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 319
    .local v8, "accumulator$iv":Ljava/lang/Object;
    if-nez v8, :cond_35

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    const/4 v9, 0x1

    goto :goto_36

    :cond_35
    const/4 v9, 0x0

    :goto_36
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {p1, v7, v8, v6, v9}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .end local v6    # "e$iv":Ljava/lang/Object;
    .end local v7    # "key$iv":Ljava/lang/Object;
    .end local v8    # "accumulator$iv":Ljava/lang/Object;
    goto :goto_19

    .line 321
    :cond_42
    nop

    .end local v1    # "destination$iv":Ljava/util/Map;
    .end local v2    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v4    # "$i$f$aggregateTo":I
    return-object v1
.end method

.method public static final aggregateTo(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)Ljava/util/Map;
    .registers 9
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "destination"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "operation"    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;TR;>;>(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;TM;",
            "Lkotlin/jvm/functions/Function4<",
            "-TK;-TR;-TT;-",
            "Ljava/lang/Boolean;",
            "+TR;>;)TM;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$aggregateTo":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "destination"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "operation"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-interface {p0}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 71
    .local v2, "e":Ljava/lang/Object;
    invoke-interface {p0, v2}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 73
    .local v4, "accumulator":Ljava/lang/Object;
    if-nez v4, :cond_30

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    :goto_31
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p2, v3, v4, v2, v5}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v2    # "e":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "accumulator":Ljava/lang/Object;
    goto :goto_14

    .line 75
    :cond_3d
    return-object p1
.end method

.method public static final eachCount(Lkotlin/collections/Grouping;)Ljava/util/Map;
    .registers 27
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    nop

    .line 243
    nop

    .line 240
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .local v0, "destination$iv":Ljava/util/Map;
    move-object/from16 v2, p0

    .local v2, "$receiver$iv":Lkotlin/collections/Grouping;
    const/4 v3, 0x0

    move v4, v3

    .line 361
    .local v4, "$i$f$foldTo":I
    nop

    .line 362
    move-object v5, v2

    .local v5, "$receiver$iv$iv":Lkotlin/collections/Grouping;
    move v6, v3

    .line 363
    .local v6, "$i$f$aggregateTo":I
    invoke-interface {v5}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 364
    .local v12, "e$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v12}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 365
    .local v13, "key$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 366
    .local v14, "accumulator$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x1

    if-nez v14, :cond_3d

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3d

    const/16 v16, 0x1

    goto :goto_3f

    :cond_3d
    const/16 v16, 0x0

    :goto_3f
    move-object/from16 v17, v13

    .local v17, "key$iv":Ljava/lang/Object;
    move-object/from16 v18, v14

    .local v18, "acc$iv":Ljava/lang/Object;
    move-object/from16 v19, v12

    .line 362
    .local v8, "$i$a$1$aggregateTo":I
    .local v16, "first$iv":Z
    .local v19, "e$iv":Ljava/lang/Object;
    if-eqz v16, :cond_51

    move-object/from16 v20, v17

    .local v20, "$noName_0":Ljava/lang/Object;
    move-object/from16 v21, v19

    .line 241
    .local v9, "$i$a$1$foldTo":I
    .local v21, "$noName_1":Ljava/lang/Object;
    new-instance v22, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v22 .. v22}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    goto :goto_53

    .end local v9    # "$i$a$1$foldTo":I
    .end local v20    # "$noName_0":Ljava/lang/Object;
    .end local v21    # "$noName_1":Ljava/lang/Object;
    :cond_51
    move-object/from16 v22, v18

    :goto_53
    move-object/from16 v3, v22

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    .local v3, "acc":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 v20, v17

    .restart local v20    # "$noName_0":Ljava/lang/Object;
    move-object/from16 v21, v19

    .line 242
    .local v10, "$i$a$2$foldTo":I
    .local v21, "$noName_2":Ljava/lang/Object;
    move-object/from16 v24, v3

    .local v24, "$receiver":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 v25, v2

    move-object/from16 v1, v24

    .end local v2    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v24    # "$receiver":Lkotlin/jvm/internal/Ref$IntRef;
    .local v1, "$receiver":Lkotlin/jvm/internal/Ref$IntRef;
    .local v11, "$i$a$1$apply":I
    .local v25, "$receiver$iv":Lkotlin/collections/Grouping;
    iget v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v2, v15

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .end local v1    # "$receiver":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v3    # "acc":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v8    # "$i$a$1$aggregateTo":I
    .end local v10    # "$i$a$2$foldTo":I
    .end local v11    # "$i$a$1$apply":I
    .end local v16    # "first$iv":Z
    .end local v17    # "key$iv":Ljava/lang/Object;
    .end local v18    # "acc$iv":Ljava/lang/Object;
    .end local v19    # "e$iv":Ljava/lang/Object;
    .end local v20    # "$noName_0":Ljava/lang/Object;
    .end local v21    # "$noName_2":Ljava/lang/Object;
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v12    # "e$iv$iv":Ljava/lang/Object;
    .end local v13    # "key$iv$iv":Ljava/lang/Object;
    .end local v14    # "accumulator$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v25

    move-object/from16 v1, p0

    const/4 v3, 0x0

    goto :goto_1f

    .line 368
    .end local v25    # "$receiver$iv":Lkotlin/collections/Grouping;
    .restart local v2    # "$receiver$iv":Lkotlin/collections/Grouping;
    :cond_6f
    move-object/from16 v25, v2

    .line 362
    .end local v2    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v5    # "$receiver$iv$iv":Lkotlin/collections/Grouping;
    .end local v6    # "$i$f$aggregateTo":I
    .restart local v25    # "$receiver$iv":Lkotlin/collections/Grouping;
    nop

    .line 243
    .end local v0    # "destination$iv":Ljava/util/Map;
    .end local v4    # "$i$f$foldTo":I
    .end local v25    # "$receiver$iv":Lkotlin/collections/Grouping;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v23, 0x0

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_a0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .local v2, "it":Ljava/util/Map$Entry;
    .local v23, "$i$a$3$mapValuesInPlace":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .end local v2    # "it":Ljava/util/Map$Entry;
    .end local v23    # "$i$a$3$mapValuesInPlace":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    :cond_a0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "destination$iv":Ljava/util/Map;
    :cond_a8
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .end local v0    # "destination$iv":Ljava/util/Map;
    return-object v0
.end method

.method public static final eachCountTo(Lkotlin/collections/Grouping;Ljava/util/Map;)Ljava/util/Map;
    .registers 23
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "destination"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/lang/Integer;",
            ">;>(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;TM;)TM;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "$receiver"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "destination"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "initialValue$iv":Ljava/lang/Object;
    move-object/from16 v4, p0

    .local v4, "$receiver$iv":Lkotlin/collections/Grouping;
    move v5, v1

    .line 369
    .local v5, "$i$f$foldTo":I
    nop

    .line 370
    move-object v6, v4

    .local v6, "$receiver$iv$iv":Lkotlin/collections/Grouping;
    move v7, v1

    .line 371
    .local v7, "$i$f$aggregateTo":I
    invoke-interface {v6}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 372
    .local v11, "e$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v11}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 373
    .local v12, "key$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 374
    .local v13, "accumulator$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x1

    if-nez v13, :cond_3c

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3c

    const/4 v15, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v15, 0x0

    :goto_3d
    move-object/from16 v16, v12

    .local v16, "$noName_0$iv":Ljava/lang/Object;
    move-object/from16 v17, v13

    .local v17, "acc$iv":Ljava/lang/Object;
    move-object/from16 v18, v11

    .line 370
    .local v9, "$i$a$2$aggregateTo":I
    .local v15, "first$iv":Z
    .local v18, "e$iv":Ljava/lang/Object;
    if-eqz v15, :cond_48

    move-object/from16 v19, v3

    goto :goto_4a

    :cond_48
    move-object/from16 v19, v17

    :goto_4a
    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v19

    .local v19, "acc":I
    move-object/from16 v20, v18

    .line 257
    .local v10, "$i$a$1$foldTo":I
    .local v20, "$noName_1":Ljava/lang/Object;
    add-int/lit8 v19, v19, 0x1

    .end local v10    # "$i$a$1$foldTo":I
    .end local v19    # "acc":I
    .end local v20    # "$noName_1":Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .end local v9    # "$i$a$2$aggregateTo":I
    .end local v15    # "first$iv":Z
    .end local v16    # "$noName_0$iv":Ljava/lang/Object;
    .end local v17    # "acc$iv":Ljava/lang/Object;
    .end local v18    # "e$iv":Ljava/lang/Object;
    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v11    # "e$iv$iv":Ljava/lang/Object;
    .end local v12    # "key$iv$iv":Ljava/lang/Object;
    .end local v13    # "accumulator$iv$iv":Ljava/lang/Object;
    goto :goto_1f

    .line 376
    :cond_5c
    nop

    .line 370
    .end local v6    # "$receiver$iv$iv":Lkotlin/collections/Grouping;
    .end local v7    # "$i$f$aggregateTo":I
    nop

    .line 257
    .end local v3    # "initialValue$iv":Ljava/lang/Object;
    .end local v4    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v5    # "$i$f$foldTo":I
    return-object v0
.end method

.method public static final fold(Lkotlin/collections/Grouping;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;
    .registers 22
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "initialValue"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-TT;+TR;>;)",
            "Ljava/util/Map<",
            "TK;TR;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .local v1, "$i$f$fold":I
    const-string v2, "$receiver"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "operation"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    nop

    .line 151
    move-object/from16 v2, p0

    .local v2, "$receiver$iv":Lkotlin/collections/Grouping;
    const/4 v4, 0x0

    move v5, v4

    .line 335
    .local v5, "$i$f$aggregate":I
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    .local v6, "destination$iv$iv":Ljava/util/Map;
    move-object v7, v2

    .local v7, "$receiver$iv$iv":Lkotlin/collections/Grouping;
    move v8, v4

    .line 336
    .local v8, "$i$f$aggregateTo":I
    invoke-interface {v7}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 337
    .local v11, "e$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v11}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 338
    .local v12, "key$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 339
    .local v13, "accumulator$iv$iv":Ljava/lang/Object;
    if-nez v13, :cond_3e

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3e

    const/4 v14, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v14, 0x0

    :goto_3f
    move-object v15, v12

    .local v15, "$noName_0":Ljava/lang/Object;
    move-object/from16 v16, v13

    .local v16, "acc":Ljava/lang/Object;
    move-object/from16 v17, v11

    .line 151
    .local v10, "$i$a$2$aggregate":I
    .local v14, "first":Z
    .local v17, "e":Ljava/lang/Object;
    if-eqz v14, :cond_49

    move-object/from16 v4, p1

    goto :goto_4b

    :cond_49
    move-object/from16 v4, v16

    :goto_4b
    move/from16 v18, v1

    move-object/from16 v1, v17

    .end local v17    # "e":Ljava/lang/Object;
    .local v1, "e":Ljava/lang/Object;
    .local v18, "$i$f$fold":I
    invoke-interface {v0, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "e":Ljava/lang/Object;
    .end local v10    # "$i$a$2$aggregate":I
    .end local v14    # "first":Z
    .end local v15    # "$noName_0":Ljava/lang/Object;
    .end local v16    # "acc":Ljava/lang/Object;
    invoke-interface {v6, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v11    # "e$iv$iv":Ljava/lang/Object;
    .end local v12    # "key$iv$iv":Ljava/lang/Object;
    .end local v13    # "accumulator$iv$iv":Ljava/lang/Object;
    move/from16 v1, v18

    const/4 v4, 0x0

    goto :goto_22

    .line 341
    .end local v18    # "$i$f$fold":I
    .local v1, "$i$f$fold":I
    :cond_5a
    move/from16 v18, v1

    .line 151
    .end local v1    # "$i$f$fold":I
    .end local v2    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v5    # "$i$f$aggregate":I
    .end local v6    # "destination$iv$iv":Ljava/util/Map;
    .end local v7    # "$receiver$iv$iv":Lkotlin/collections/Grouping;
    .end local v8    # "$i$f$aggregateTo":I
    .restart local v18    # "$i$f$fold":I
    return-object v6
.end method

.method public static final fold(Lkotlin/collections/Grouping;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;
    .registers 23
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "initialValueSelector"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "operation"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TT;+TR;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-TK;-TR;-TT;+TR;>;)",
            "Ljava/util/Map<",
            "TK;TR;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .local v2, "$i$f$fold":I
    const-string v3, "$receiver"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "initialValueSelector"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "operation"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    nop

    .line 101
    move-object/from16 v3, p0

    .local v3, "$receiver$iv":Lkotlin/collections/Grouping;
    const/4 v5, 0x0

    move v6, v5

    .line 322
    .local v6, "$i$f$aggregate":I
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .local v7, "destination$iv$iv":Ljava/util/Map;
    move-object v8, v3

    .local v8, "$receiver$iv$iv":Lkotlin/collections/Grouping;
    move v9, v5

    .line 323
    .local v9, "$i$f$aggregateTo":I
    invoke-interface {v8}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_70

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 324
    .local v12, "e$iv$iv":Ljava/lang/Object;
    invoke-interface {v8, v12}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 325
    .local v13, "key$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 326
    .local v14, "accumulator$iv$iv":Ljava/lang/Object;
    if-nez v14, :cond_45

    invoke-interface {v7, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_45

    const/4 v15, 0x1

    goto :goto_46

    :cond_45
    const/4 v15, 0x0

    :goto_46
    move-object/from16 v16, v13

    .local v16, "key":Ljava/lang/Object;
    move-object/from16 v17, v14

    .local v17, "acc":Ljava/lang/Object;
    move-object/from16 v18, v12

    .line 101
    .local v11, "$i$a$1$aggregate":I
    .local v15, "first":Z
    .local v18, "e":Ljava/lang/Object;
    if-eqz v15, :cond_5b

    move/from16 v19, v2

    move-object/from16 v5, v16

    move-object/from16 v2, v18

    .end local v16    # "key":Ljava/lang/Object;
    .end local v18    # "e":Ljava/lang/Object;
    .local v2, "e":Ljava/lang/Object;
    .local v5, "key":Ljava/lang/Object;
    .local v19, "$i$f$fold":I
    invoke-interface {v0, v5, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_63

    .end local v5    # "key":Ljava/lang/Object;
    .end local v19    # "$i$f$fold":I
    .local v2, "$i$f$fold":I
    .restart local v16    # "key":Ljava/lang/Object;
    .restart local v18    # "e":Ljava/lang/Object;
    :cond_5b
    move/from16 v19, v2

    move-object/from16 v5, v16

    move-object/from16 v2, v18

    move-object/from16 v0, v17

    .end local v16    # "key":Ljava/lang/Object;
    .end local v18    # "e":Ljava/lang/Object;
    .local v2, "e":Ljava/lang/Object;
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v19    # "$i$f$fold":I
    :goto_63
    invoke-interface {v1, v5, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v2    # "e":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v11    # "$i$a$1$aggregate":I
    .end local v15    # "first":Z
    .end local v17    # "acc":Ljava/lang/Object;
    invoke-interface {v7, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v12    # "e$iv$iv":Ljava/lang/Object;
    .end local v13    # "key$iv$iv":Ljava/lang/Object;
    .end local v14    # "accumulator$iv$iv":Ljava/lang/Object;
    move/from16 v2, v19

    move-object/from16 v0, p1

    const/4 v5, 0x0

    goto :goto_29

    .line 328
    .end local v19    # "$i$f$fold":I
    .local v2, "$i$f$fold":I
    :cond_70
    move/from16 v19, v2

    .line 101
    .end local v2    # "$i$f$fold":I
    .end local v3    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v6    # "$i$f$aggregate":I
    .end local v7    # "destination$iv$iv":Ljava/util/Map;
    .end local v8    # "$receiver$iv$iv":Lkotlin/collections/Grouping;
    .end local v9    # "$i$f$aggregateTo":I
    .restart local v19    # "$i$f$fold":I
    return-object v7
.end method

.method public static final foldTo(Lkotlin/collections/Grouping;Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;
    .registers 20
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "destination"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "initialValue"    # Ljava/lang/Object;
    .param p3, "operation"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;TR;>;>(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;TM;TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-TT;+TR;>;)TM;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .local v2, "$i$f$foldTo":I
    const-string v3, "$receiver"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "destination"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "operation"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    nop

    .line 175
    move-object/from16 v3, p0

    .local v3, "$receiver$iv":Lkotlin/collections/Grouping;
    const/4 v5, 0x0

    move v6, v5

    .line 342
    .local v6, "$i$f$aggregateTo":I
    invoke-interface {v3}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 343
    .local v9, "e$iv":Ljava/lang/Object;
    invoke-interface {v3, v9}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 344
    .local v10, "key$iv":Ljava/lang/Object;
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 345
    .local v11, "accumulator$iv":Ljava/lang/Object;
    if-nez v11, :cond_3c

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3c

    const/4 v12, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v12, 0x0

    :goto_3d
    move-object v13, v10

    .local v13, "$noName_0":Ljava/lang/Object;
    move-object v14, v11

    .local v14, "acc":Ljava/lang/Object;
    move-object v15, v9

    .line 175
    .local v8, "$i$a$2$aggregateTo":I
    .local v12, "first":Z
    .local v15, "e":Ljava/lang/Object;
    if-eqz v12, :cond_45

    move-object/from16 v5, p2

    goto :goto_46

    :cond_45
    move-object v5, v14

    :goto_46
    invoke-interface {v1, v5, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v8    # "$i$a$2$aggregateTo":I
    .end local v12    # "first":Z
    .end local v13    # "$noName_0":Ljava/lang/Object;
    .end local v14    # "acc":Ljava/lang/Object;
    .end local v15    # "e":Ljava/lang/Object;
    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v9    # "e$iv":Ljava/lang/Object;
    .end local v10    # "key$iv":Ljava/lang/Object;
    .end local v11    # "accumulator$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    goto :goto_20

    .line 347
    :cond_4f
    nop

    .line 175
    .end local v3    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v6    # "$i$f$aggregateTo":I
    return-object v0
.end method

.method public static final foldTo(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;
    .registers 21
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "destination"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "initialValueSelector"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "operation"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;TR;>;>(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;TM;",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TT;+TR;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-TK;-TR;-TT;+TR;>;)TM;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .local v3, "$i$f$foldTo":I
    const-string v4, "$receiver"

    move-object/from16 v5, p0

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "destination"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "initialValueSelector"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "operation"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    nop

    .line 131
    move-object/from16 v4, p0

    .local v4, "$receiver$iv":Lkotlin/collections/Grouping;
    const/4 v6, 0x0

    move v7, v6

    .line 329
    .local v7, "$i$f$aggregateTo":I
    invoke-interface {v4}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_27
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_61

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 330
    .local v10, "e$iv":Ljava/lang/Object;
    invoke-interface {v4, v10}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 331
    .local v11, "key$iv":Ljava/lang/Object;
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 332
    .local v12, "accumulator$iv":Ljava/lang/Object;
    if-nez v12, :cond_43

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_43

    const/4 v13, 0x1

    goto :goto_44

    :cond_43
    const/4 v13, 0x0

    :goto_44
    move-object v14, v11

    .local v14, "key":Ljava/lang/Object;
    move-object v15, v12

    .local v15, "acc":Ljava/lang/Object;
    move-object/from16 v16, v10

    .line 131
    .local v9, "$i$a$1$aggregateTo":I
    .local v13, "first":Z
    .local v16, "e":Ljava/lang/Object;
    if-eqz v13, :cond_53

    move-object/from16 v6, v16

    .end local v16    # "e":Ljava/lang/Object;
    .local v6, "e":Ljava/lang/Object;
    invoke-interface {v1, v14, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_56

    .end local v6    # "e":Ljava/lang/Object;
    .restart local v16    # "e":Ljava/lang/Object;
    :cond_53
    move-object/from16 v6, v16

    move-object v1, v15

    .end local v16    # "e":Ljava/lang/Object;
    .restart local v6    # "e":Ljava/lang/Object;
    :goto_56
    invoke-interface {v2, v14, v1, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v6    # "e":Ljava/lang/Object;
    .end local v9    # "$i$a$1$aggregateTo":I
    .end local v13    # "first":Z
    .end local v14    # "key":Ljava/lang/Object;
    .end local v15    # "acc":Ljava/lang/Object;
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v11    # "key$iv":Ljava/lang/Object;
    .end local v12    # "accumulator$iv":Ljava/lang/Object;
    move-object/from16 v1, p2

    const/4 v6, 0x0

    goto :goto_27

    .line 334
    :cond_61
    nop

    .line 131
    .end local v4    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v7    # "$i$f$aggregateTo":I
    return-object v0
.end method

.method private static final mapValuesInPlace(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .registers 11
    .param p0, "$receiver"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "f"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;+TR;>;)",
            "Ljava/util/Map<",
            "TK;TR;>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 294
    .local v0, "$i$f$mapValuesInPlace":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$receiver$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    move v3, v2

    .line 377
    .local v3, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/util/Map$Entry;

    .line 295
    .local v2, "$i$a$1$forEach":I
    .local v6, "it":Ljava/util/Map$Entry;
    if-eqz v6, :cond_28

    invoke-static {v6}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v2    # "$i$a$1$forEach":I
    .end local v6    # "it":Ljava/util/Map$Entry;
    goto :goto_d

    .line 295
    .restart local v6    # "it":Ljava/util/Map$Entry;
    :cond_28
    new-instance v4, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>"

    invoke-direct {v4, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 378
    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Ljava/util/Map$Entry;
    :cond_30
    nop

    .line 297
    .end local v1    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    if-eqz p0, :cond_38

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :cond_38
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, R>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final reduce(Lkotlin/collections/Grouping;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;
    .registers 21
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "operation"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T::TS;K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-TK;-TS;-TT;+TS;>;)",
            "Ljava/util/Map<",
            "TK;TS;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .local v1, "$i$f$reduce":I
    const-string v2, "$receiver"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "operation"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    move-object/from16 v2, p0

    .local v2, "$receiver$iv":Lkotlin/collections/Grouping;
    const/4 v4, 0x0

    move v5, v4

    .line 348
    .local v5, "$i$f$aggregate":I
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    .local v6, "destination$iv$iv":Ljava/util/Map;
    move-object v7, v2

    .local v7, "$receiver$iv$iv":Lkotlin/collections/Grouping;
    move v8, v4

    .line 349
    .local v8, "$i$f$aggregateTo":I
    invoke-interface {v7}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 350
    .local v11, "e$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v11}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 351
    .local v12, "key$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 352
    .local v13, "accumulator$iv$iv":Ljava/lang/Object;
    if-nez v13, :cond_3d

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3d

    const/4 v14, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v14, 0x0

    :goto_3e
    move-object v15, v12

    .local v15, "key":Ljava/lang/Object;
    move-object/from16 v16, v13

    .local v16, "acc":Ljava/lang/Object;
    move-object/from16 v17, v11

    .line 197
    .local v10, "$i$a$1$aggregate":I
    .local v14, "first":Z
    .local v17, "e":Ljava/lang/Object;
    nop

    .line 198
    if-eqz v14, :cond_4b

    move/from16 v18, v1

    .end local v1    # "$i$f$reduce":I
    .end local v10    # "$i$a$1$aggregate":I
    .end local v14    # "first":Z
    .end local v15    # "key":Ljava/lang/Object;
    .end local v16    # "acc":Ljava/lang/Object;
    .end local v17    # "e":Ljava/lang/Object;
    .local v18, "$i$f$reduce":I
    :goto_48
    move-object/from16 v1, v17

    goto :goto_56

    .end local v18    # "$i$f$reduce":I
    .restart local v1    # "$i$f$reduce":I
    .restart local v10    # "$i$a$1$aggregate":I
    .restart local v14    # "first":Z
    .restart local v15    # "key":Ljava/lang/Object;
    .restart local v16    # "acc":Ljava/lang/Object;
    .restart local v17    # "e":Ljava/lang/Object;
    :cond_4b
    move/from16 v18, v1

    move-object/from16 v4, v16

    move-object/from16 v1, v17

    .end local v16    # "acc":Ljava/lang/Object;
    .end local v17    # "e":Ljava/lang/Object;
    .local v1, "e":Ljava/lang/Object;
    .local v4, "acc":Ljava/lang/Object;
    .restart local v18    # "$i$f$reduce":I
    invoke-interface {v0, v15, v4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    goto :goto_48

    .end local v1    # "e":Ljava/lang/Object;
    .end local v4    # "acc":Ljava/lang/Object;
    .end local v10    # "$i$a$1$aggregate":I
    .end local v14    # "first":Z
    .end local v15    # "key":Ljava/lang/Object;
    :goto_56
    invoke-interface {v6, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v11    # "e$iv$iv":Ljava/lang/Object;
    .end local v12    # "key$iv$iv":Ljava/lang/Object;
    .end local v13    # "accumulator$iv$iv":Ljava/lang/Object;
    move/from16 v1, v18

    const/4 v4, 0x0

    goto :goto_21

    .line 354
    .end local v18    # "$i$f$reduce":I
    .local v1, "$i$f$reduce":I
    :cond_5d
    move/from16 v18, v1

    .line 199
    .end local v1    # "$i$f$reduce":I
    .end local v2    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v5    # "$i$f$aggregate":I
    .end local v6    # "destination$iv$iv":Ljava/util/Map;
    .end local v7    # "$receiver$iv$iv":Lkotlin/collections/Grouping;
    .end local v8    # "$i$f$aggregateTo":I
    .restart local v18    # "$i$f$reduce":I
    return-object v6
.end method

.method public static final reduceTo(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;
    .registers 16
    .param p0, "$receiver"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "destination"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "operation"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T::TS;K:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;TS;>;>(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;TM;",
            "Lkotlin/jvm/functions/Function3<",
            "-TK;-TS;-TT;+TS;>;)TM;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$reduceTo":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "destination"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "operation"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    move-object v1, p0

    .local v1, "$receiver$iv":Lkotlin/collections/Grouping;
    const/4 v2, 0x0

    move v3, v2

    .line 355
    .local v3, "$i$f$aggregateTo":I
    invoke-interface {v1}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 356
    .local v6, "e$iv":Ljava/lang/Object;
    invoke-interface {v1, v6}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 357
    .local v7, "key$iv":Ljava/lang/Object;
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 358
    .local v8, "accumulator$iv":Ljava/lang/Object;
    if-nez v8, :cond_34

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    const/4 v9, 0x1

    goto :goto_35

    :cond_34
    const/4 v9, 0x0

    :goto_35
    move-object v10, v7

    .local v10, "key":Ljava/lang/Object;
    move-object v11, v8

    .local v11, "acc":Ljava/lang/Object;
    move-object v12, v6

    .line 224
    .local v5, "$i$a$1$aggregateTo":I
    .local v9, "first":Z
    .local v12, "e":Ljava/lang/Object;
    nop

    .line 225
    if-eqz v9, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-interface {p2, v10, v11, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v5    # "$i$a$1$aggregateTo":I
    .end local v9    # "first":Z
    .end local v10    # "key":Ljava/lang/Object;
    .end local v11    # "acc":Ljava/lang/Object;
    .end local v12    # "e":Ljava/lang/Object;
    :goto_40
    invoke-interface {p1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v6    # "e$iv":Ljava/lang/Object;
    .end local v7    # "key$iv":Ljava/lang/Object;
    .end local v8    # "accumulator$iv":Ljava/lang/Object;
    goto :goto_18

    .line 360
    :cond_44
    nop

    .line 226
    .end local v1    # "$receiver$iv":Lkotlin/collections/Grouping;
    .end local v3    # "$i$f$aggregateTo":I
    return-object p1
.end method
