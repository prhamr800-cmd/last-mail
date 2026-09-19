###### Class kotlin.text.StringsKt__StringNumberConversionsKt (kotlin.text.StringsKt__StringNumberConversionsKt)
.class Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringBuilderKt;
.source "StringNumberConversions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringNumberConversions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversions.kt\nkotlin/text/StringsKt__StringNumberConversionsKt\n*L\n1#1,476:1\n467#1,7:477\n467#1,7:484\n467#1,7:491\n467#1,7:498\n*E\n*S KotlinDebug\n*F\n+ 1 StringNumberConversions.kt\nkotlin/text/StringsKt__StringNumberConversionsKt\n*L\n333#1,7:477\n341#1,7:484\n428#1,7:491\n440#1,7:498\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\\\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\n\n\u0002\u0008\u0005\u001a4\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002H\u00010\u0005H\u0083\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\r\u0010\u0008\u001a\u00020\t*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010\u0008\u001a\u00020\t*\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0087\u0008\u001a\u000e\u0010\u000c\u001a\u0004\u0018\u00010\t*\u00020\u0003H\u0007\u001a\u0016\u0010\u000c\u001a\u0004\u0018\u00010\t*\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0007\u001a\r\u0010\r\u001a\u00020\u000e*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010\r\u001a\u00020\u000e*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\u0008\u001a\u000e\u0010\u0011\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007\u001a\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u001a\r\u0010\u0012\u001a\u00020\u0013*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u0015*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010\u0014\u001a\u00020\u0015*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\u0008\u001a\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0015*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0017\u001a\u001b\u0010\u0016\u001a\u0004\u0018\u00010\u0015*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010\u0018\u001a\r\u0010\u0019\u001a\u00020\u001a*\u00020\u0003H\u0087\u0008\u001a\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u001a*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u001c\u001a\r\u0010\u001d\u001a\u00020\u001e*\u00020\u0003H\u0087\u0008\u001a\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u001e*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010 \u001a\r\u0010!\u001a\u00020\u0010*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010!\u001a\u00020\u0010*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\u0008\u001a\u0013\u0010\"\u001a\u0004\u0018\u00010\u0010*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010#\u001a\u001b\u0010\"\u001a\u0004\u0018\u00010\u0010*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010$\u001a\r\u0010%\u001a\u00020&*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\u0008\u001a\u0013\u0010\'\u001a\u0004\u0018\u00010&*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010(\u001a\u001b\u0010\'\u001a\u0004\u0018\u00010&*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010)\u001a\r\u0010*\u001a\u00020+*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010*\u001a\u00020+*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\u0008\u001a\u0013\u0010,\u001a\u0004\u0018\u00010+*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010-\u001a\u001b\u0010,\u001a\u0004\u0018\u00010+*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010.\u001a\u0015\u0010/\u001a\u00020\u0003*\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\u0008\u001a\u0015\u0010/\u001a\u00020\u0003*\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\u0008\u001a\u0015\u0010/\u001a\u00020\u0003*\u00020&2\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\u0008\u001a\u0015\u0010/\u001a\u00020\u0003*\u00020+2\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\u0008\u00a8\u00060"
    }
    d2 = {
        "screenFloatValue",
        "T",
        "str",
        "",
        "parse",
        "Lkotlin/Function1;",
        "screenFloatValue$StringsKt__StringNumberConversionsKt",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "toBigDecimal",
        "Ljava/math/BigDecimal;",
        "mathContext",
        "Ljava/math/MathContext;",
        "toBigDecimalOrNull",
        "toBigInteger",
        "Ljava/math/BigInteger;",
        "radix",
        "",
        "toBigIntegerOrNull",
        "toBoolean",
        "",
        "toByte",
        "",
        "toByteOrNull",
        "(Ljava/lang/String;)Ljava/lang/Byte;",
        "(Ljava/lang/String;I)Ljava/lang/Byte;",
        "toDouble",
        "",
        "toDoubleOrNull",
        "(Ljava/lang/String;)Ljava/lang/Double;",
        "toFloat",
        "",
        "toFloatOrNull",
        "(Ljava/lang/String;)Ljava/lang/Float;",
        "toInt",
        "toIntOrNull",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "(Ljava/lang/String;I)Ljava/lang/Integer;",
        "toLong",
        "",
        "toLongOrNull",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "(Ljava/lang/String;I)Ljava/lang/Long;",
        "toShort",
        "",
        "toShortOrNull",
        "(Ljava/lang/String;)Ljava/lang/Short;",
        "(Ljava/lang/String;I)Ljava/lang/Short;",
        "toString",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0x9
    }
    xi = 0x1
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/text/StringsKt__StringBuilderKt;-><init>()V

    return-void
.end method

.method private static final screenFloatValue$StringsKt__StringNumberConversionsKt(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parse"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 467
    .local v0, "$i$f$screenFloatValue$StringsKt__StringNumberConversionsKt":I
    nop

    .line 468
    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lkotlin/text/ScreenFloatValueRegEx;->value:Lkotlin/text/Regex;

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 469
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_12} :catch_16

    .line 468
    move-object v1, v2

    goto :goto_15

    .line 471
    :cond_14
    nop

    .line 468
    :goto_15
    goto :goto_18

    .line 472
    :catch_16
    move-exception v2

    .line 473
    .local v2, "e":Ljava/lang/NumberFormatException;
    nop

    .line 467
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_18
    return-object v1
.end method

.method private static final toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 406
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toBigDecimal(Ljava/lang/String;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 4
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "mathContext"    # Ljava/math/MathContext;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 419
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    return-object v1
.end method

.method public static final toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 6
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x0

    move v1, v0

    .line 491
    .local v1, "$i$f$screenFloatValue$StringsKt__StringNumberConversionsKt":I
    nop

    .line 492
    const/4 v2, 0x0

    :try_start_9
    sget-object v3, Lkotlin/text/ScreenFloatValueRegEx;->value:Lkotlin/text/Regex;

    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 493
    move-object v3, p0

    .line 428
    .local v0, "$i$a$1$screenFloatValue":I
    .local v3, "it":Ljava/lang/String;
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1a} :catch_1e

    .line 492
    .end local v0    # "$i$a$1$screenFloatValue":I
    .end local v3    # "it":Ljava/lang/String;
    move-object v2, v4

    goto :goto_1d

    .line 495
    :cond_1c
    nop

    .line 492
    :goto_1d
    goto :goto_20

    .line 496
    :catch_1e
    move-exception v0

    .line 497
    .local v0, "e$iv":Ljava/lang/NumberFormatException;
    nop

    .line 491
    .end local v0    # "e$iv":Ljava/lang/NumberFormatException;
    :goto_20
    nop

    .line 428
    .end local v1    # "$i$f$screenFloatValue$StringsKt__StringNumberConversionsKt":I
    return-object v2
.end method

.method public static final toBigDecimalOrNull(Ljava/lang/String;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 7
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "mathContext"    # Ljava/math/MathContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mathContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    move v1, v0

    .line 498
    .local v1, "$i$f$screenFloatValue$StringsKt__StringNumberConversionsKt":I
    nop

    .line 499
    const/4 v2, 0x0

    :try_start_e
    sget-object v3, Lkotlin/text/ScreenFloatValueRegEx;->value:Lkotlin/text/Regex;

    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 500
    move-object v3, p0

    .line 440
    .local v0, "$i$a$2$screenFloatValue":I
    .local v3, "it":Ljava/lang/String;
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1f} :catch_23

    .line 499
    .end local v0    # "$i$a$2$screenFloatValue":I
    .end local v3    # "it":Ljava/lang/String;
    move-object v2, v4

    goto :goto_22

    .line 502
    :cond_21
    nop

    .line 499
    :goto_22
    goto :goto_25

    .line 503
    :catch_23
    move-exception v0

    .line 504
    .local v0, "e$iv":Ljava/lang/NumberFormatException;
    nop

    .line 498
    .end local v0    # "e$iv":Ljava/lang/NumberFormatException;
    :goto_25
    nop

    .line 440
    .end local v1    # "$i$f$screenFloatValue$StringsKt__StringNumberConversionsKt":I
    return-object v2
.end method

.method private static final toBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 351
    .local v0, "$i$f$toBigInteger":I
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toBigInteger(Ljava/lang/String;I)Ljava/math/BigInteger;
    .registers 5
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 362
    .local v0, "$i$f$toBigInteger":I
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static final toBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toBigIntegerOrNull(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static final toBigIntegerOrNull(Ljava/lang/String;I)Ljava/math/BigInteger;
    .registers 7
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 382
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 383
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_44

    .line 387
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    .line 385
    :pswitch_1b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v2

    if-gez v2, :cond_39

    return-object v1

    .line 384
    :pswitch_26
    return-object v1

    .line 387
    :cond_27
    nop

    .line 388
    .local v2, "start":I
    :goto_28
    move v3, v2

    :goto_29
    if-ge v3, v0, :cond_39

    .line 389
    .local v3, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v4

    if-gez v4, :cond_36

    .line 390
    return-object v1

    .line 388
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 393
    .end local v2    # "start":I
    .end local v3    # "index":I
    :cond_39
    nop

    .line 394
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v1

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1b
    .end packed-switch
.end method

.method private static final toBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 68
    .local v0, "$i$f$toBoolean":I
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static final toByte(Ljava/lang/String;)B
    .registers 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 76
    .local v0, "$i$f$toByte":I
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    return v1
.end method

.method private static final toByte(Ljava/lang/String;I)B
    .registers 4
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 86
    .local v0, "$i$f$toByte":I
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1

    return v1
.end method

.method public static final toByteOrNull(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 2
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static final toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;
    .registers 5
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 177
    .local v0, "int":I
    const/16 v2, -0x80

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x7f

    if-le v0, v2, :cond_19

    goto :goto_1f

    .line 178
    :cond_19
    int-to-byte v1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 177
    :cond_1f
    :goto_1f
    return-object v1

    .line 176
    .end local v0    # "int":I
    :cond_20
    return-object v1
.end method

.method private static final toDouble(Ljava/lang/String;)D
    .registers 4
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 157
    .local v0, "$i$f$toDouble":I
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method public static final toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .registers 6
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x0

    move v1, v0

    .line 484
    .local v1, "$i$f$screenFloatValue$StringsKt__StringNumberConversionsKt":I
    nop

    .line 485
    const/4 v2, 0x0

    :try_start_9
    sget-object v3, Lkotlin/text/ScreenFloatValueRegEx;->value:Lkotlin/text/Regex;

    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 486
    move-object v3, p0

    .line 341
    .local v0, "$i$a$1$unknown":I
    .local v3, "p1":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .end local v0    # "$i$a$1$unknown":I
    .end local v3    # "p1":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1d} :catch_21

    .line 485
    move-object v2, v0

    goto :goto_20

    .line 488
    :cond_1f
    nop

    .line 485
    :goto_20
    goto :goto_23

    .line 489
    :catch_21
    move-exception v0

    .line 490
    .local v0, "e$iv":Ljava/lang/NumberFormatException;
    nop

    .line 484
    .end local v0    # "e$iv":Ljava/lang/NumberFormatException;
    :goto_23
    nop

    .line 341
    .end local v1    # "$i$f$screenFloatValue$StringsKt__StringNumberConversionsKt":I
    return-object v2
.end method

.method private static final toFloat(Ljava/lang/String;)F
    .registers 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 149
    .local v0, "$i$f$toFloat":I
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public static final toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;
    .registers 6
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    move v1, v0

    .line 477
    .local v1, "$i$f$screenFloatValue$StringsKt__StringNumberConversionsKt":I
    nop

    .line 478
    const/4 v2, 0x0

    :try_start_9
    sget-object v3, Lkotlin/text/ScreenFloatValueRegEx;->value:Lkotlin/text/Regex;

    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 479
    move-object v3, p0

    .line 333
    .local v0, "$i$a$1$unknown":I
    .local v3, "p1":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .end local v0    # "$i$a$1$unknown":I
    .end local v3    # "p1":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1d} :catch_21

    .line 478
    move-object v2, v0

    goto :goto_20

    .line 481
    :cond_1f
    nop

    .line 478
    :goto_20
    goto :goto_23

    .line 482
    :catch_21
    move-exception v0

    .line 483
    .local v0, "e$iv":Ljava/lang/NumberFormatException;
    nop

    .line 477
    .end local v0    # "e$iv":Ljava/lang/NumberFormatException;
    :goto_23
    nop

    .line 333
    .end local v1    # "$i$f$screenFloatValue$StringsKt__StringNumberConversionsKt":I
    return-object v2
.end method

.method private static final toInt(Ljava/lang/String;)I
    .registers 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 113
    .local v0, "$i$f$toInt":I
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static final toInt(Ljava/lang/String;I)I
    .registers 4
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 123
    .local v0, "$i$f$toInt":I
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static final toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 14
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 219
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    const/4 v2, 0x0

    move v3, v2

    .local v3, "limit":I
    move v4, v2

    .local v4, "isNegative":Z
    move v5, v2

    .line 221
    .local v5, "start":I
    nop

    .line 222
    nop

    .line 223
    nop

    .line 225
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 226
    .local v2, "firstChar":C
    const/16 v6, 0x30

    if-ge v2, v6, :cond_36

    .line 227
    const/4 v6, 0x1

    if-ne v0, v6, :cond_23

    return-object v1

    .line 229
    :cond_23
    const/4 v5, 0x1

    .line 231
    const/16 v6, 0x2d

    if-ne v2, v6, :cond_2c

    .line 232
    const/4 v4, 0x1

    .line 233
    const/high16 v3, -0x80000000

    goto :goto_3b

    .line 234
    :cond_2c
    const/16 v6, 0x2b

    if-ne v2, v6, :cond_35

    .line 235
    const/4 v4, 0x0

    .line 236
    const v3, -0x7fffffff

    goto :goto_3b

    .line 238
    :cond_35
    return-object v1

    .line 240
    :cond_36
    const/4 v5, 0x0

    .line 241
    const/4 v4, 0x0

    .line 242
    const v3, -0x7fffffff

    .line 243
    :goto_3b
    nop

    .line 246
    div-int v6, v3, p1

    .line 247
    .local v6, "limitBeforeMul":I
    const/4 v7, 0x0

    .line 248
    .local v7, "result":I
    add-int/lit8 v8, v0, -0x1

    if-gt v5, v8, :cond_61

    move v9, v7

    move v7, v5

    .line 249
    .local v7, "i":I
    .local v9, "result":I
    :goto_45
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v10

    .line 251
    .local v10, "digit":I
    if-gez v10, :cond_50

    return-object v1

    .line 252
    :cond_50
    if-ge v9, v6, :cond_53

    return-object v1

    .line 254
    :cond_53
    mul-int v9, v9, p1

    .line 256
    add-int v11, v3, v10

    if-ge v9, v11, :cond_5a

    return-object v1

    .line 258
    :cond_5a
    sub-int/2addr v9, v10

    .line 248
    .end local v10    # "digit":I
    if-eq v7, v8, :cond_60

    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 261
    .end local v7    # "i":I
    :cond_60
    move v7, v9

    .end local v9    # "result":I
    .local v7, "result":I
    :cond_61
    if-eqz v4, :cond_68

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6d

    :cond_68
    neg-int v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6d
    return-object v1
.end method

.method private static final toLong(Ljava/lang/String;)J
    .registers 4
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 131
    .local v0, "$i$f$toLong":I
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final toLong(Ljava/lang/String;I)J
    .registers 5
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 141
    .local v0, "$i$f$toLong":I
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 21
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 281
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 282
    .local v2, "length":I
    const/4 v3, 0x0

    if-nez v2, :cond_14

    return-object v3

    :cond_14
    const-wide/16 v4, 0x0

    .local v4, "limit":J
    const/4 v6, 0x0

    move v7, v6

    .local v7, "isNegative":Z
    move v8, v6

    .line 284
    .local v8, "start":I
    nop

    .line 285
    nop

    .line 286
    nop

    .line 288
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 289
    .local v6, "firstChar":C
    const/16 v9, 0x30

    if-ge v6, v9, :cond_3d

    .line 290
    const/4 v9, 0x1

    if-ne v2, v9, :cond_28

    return-object v3

    .line 292
    :cond_28
    const/4 v8, 0x1

    .line 294
    const/16 v9, 0x2d

    if-ne v6, v9, :cond_31

    .line 295
    const/4 v7, 0x1

    .line 296
    const-wide/high16 v4, -0x8000000000000000L

    goto :goto_44

    .line 297
    :cond_31
    const/16 v9, 0x2b

    if-ne v6, v9, :cond_3c

    .line 298
    const/4 v7, 0x0

    .line 299
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_44

    .line 301
    :cond_3c
    return-object v3

    .line 303
    :cond_3d
    const/4 v8, 0x0

    .line 304
    const/4 v7, 0x0

    .line 305
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 306
    :goto_44
    nop

    .line 309
    int-to-long v9, v1

    div-long v9, v4, v9

    .line 310
    .local v9, "limitBeforeMul":J
    const-wide/16 v11, 0x0

    .line 311
    .local v11, "result":J
    add-int/lit8 v13, v2, -0x1

    if-gt v8, v13, :cond_78

    move-wide v14, v11

    move v11, v8

    .line 312
    .local v11, "i":I
    .local v14, "result":J
    :goto_50
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v12

    .line 314
    .local v12, "digit":I
    if-gez v12, :cond_5b

    return-object v3

    .line 315
    :cond_5b
    cmp-long v16, v14, v9

    if-gez v16, :cond_60

    return-object v3

    .line 317
    :cond_60
    move-wide/from16 v17, v4

    .end local v4    # "limit":J
    .local v17, "limit":J
    int-to-long v3, v1

    mul-long v14, v14, v3

    .line 319
    int-to-long v3, v12

    add-long v3, v17, v3

    cmp-long v5, v14, v3

    if-gez v5, :cond_6e

    const/4 v3, 0x0

    return-object v3

    .line 321
    :cond_6e
    const/4 v3, 0x0

    int-to-long v4, v12

    sub-long/2addr v14, v4

    .line 311
    .end local v12    # "digit":I
    if-eq v11, v13, :cond_7b

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v4, v17

    goto :goto_50

    .line 324
    .end local v14    # "result":J
    .end local v17    # "limit":J
    .restart local v4    # "limit":J
    .local v11, "result":J
    :cond_78
    move-wide/from16 v17, v4

    move-wide v14, v11

    .end local v4    # "limit":J
    .end local v11    # "result":J
    .restart local v14    # "result":J
    .restart local v17    # "limit":J
    :cond_7b
    if-eqz v7, :cond_82

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_87

    :cond_82
    neg-long v3, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_87
    return-object v3
.end method

.method private static final toShort(Ljava/lang/String;)S
    .registers 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 95
    .local v0, "$i$f$toShort":I
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    return v1
.end method

.method private static final toShort(Ljava/lang/String;I)S
    .registers 4
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 105
    .local v0, "$i$f$toShort":I
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v1

    return v1
.end method

.method public static final toShortOrNull(Ljava/lang/String;)Ljava/lang/Short;
    .registers 2
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static final toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;
    .registers 5
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    .local v0, "int":I
    const/16 v2, -0x8000

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_19

    goto :goto_1f

    .line 198
    :cond_19
    int-to-short v1, v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 197
    :cond_1f
    :goto_1f
    return-object v1

    .line 196
    .end local v0    # "int":I
    :cond_20
    return-object v1
.end method

.method private static final toString(BI)Ljava/lang/String;
    .registers 5
    .param p0, "$receiver"    # B
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$toString":I
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toString(II)Ljava/lang/String;
    .registers 5
    .param p0, "$receiver"    # I
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$toString":I
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toString(JI)Ljava/lang/String;
    .registers 6
    .param p0, "$receiver"    # J
    .param p2, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 61
    .local v0, "$i$f$toString":I
    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Long.toString(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toString(SI)Ljava/lang/String;
    .registers 5
    .param p0, "$receiver"    # S
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 41
    .local v0, "$i$f$toString":I
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
