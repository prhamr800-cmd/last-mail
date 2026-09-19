###### Class kotlin.io.CloseableKt (kotlin.io.CloseableKt)
.class public final Lkotlin/io/CloseableKt;
.super Ljava/lang/Object;
.source "Closeable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0001\u001a;\u0010\u0005\u001a\u0002H\u0006\"\n\u0008\u0000\u0010\u0007*\u0004\u0018\u00010\u0002\"\u0004\u0008\u0001\u0010\u0006*\u0002H\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00060\tH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0008\n\u0006\u0008\u0011(\n0\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "closeFinally",
        "",
        "Ljava/io/Closeable;",
        "cause",
        "",
        "use",
        "R",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Requires newer compiler version to be inlined correctly.",
        "(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "CloseableKt"
.end annotation


# direct methods
.method public static final closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "$receiver"    # Ljava/io/Closeable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 63
    nop

    .line 64
    if-nez p0, :cond_4

    goto :goto_13

    .line 65
    :cond_4
    if-nez p1, :cond_a

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_13

    .line 67
    :cond_a
    nop

    .line 68
    :try_start_b
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    .line 69
    :catch_f
    move-exception v0

    .line 70
    .local v0, "closeException":Ljava/lang/Throwable;
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 71
    .end local v0    # "closeException":Ljava/lang/Throwable;
    :goto_13
    nop

    .line 72
    return-void
.end method

.method private static final use(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 7
    .param p0, "$receiver"    # Ljava/io/Closeable;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 34
    .local v0, "$i$f$use":I
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    .line 35
    .local v1, "exception":Ljava/lang/Throwable;
    nop

    .line 36
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_7
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_b} :catch_26
    .catchall {:try_start_7 .. :try_end_b} :catchall_24

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 41
    nop

    .line 42
    invoke-static {v3, v3, v2}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 43
    :cond_19
    if-nez p0, :cond_1c

    goto :goto_1f

    .line 44
    :cond_1c
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 50
    :goto_1f
    nop

    .line 51
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object v4

    .line 41
    :catchall_24
    move-exception v4

    goto :goto_2b

    :catch_26
    move-exception v4

    .line 50
    nop

    .line 37
    nop

    .line 38
    .local v4, "e":Ljava/lang/Throwable;
    move-object v1, v4

    .line 39
    :try_start_2a
    throw v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_24

    .line 41
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_2b
    nop

    .line 50
    nop

    .line 51
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 41
    nop

    .line 42
    invoke-static {v3, v3, v2}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v2

    if-nez v2, :cond_46

    .line 43
    if-eqz p0, :cond_49

    .line 44
    if-nez v1, :cond_3f

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_49

    .line 46
    :cond_3f
    nop

    .line 47
    :try_start_40
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_49

    .line 48
    :catch_44
    move-exception v2

    goto :goto_49

    .line 42
    :cond_46
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 50
    :cond_49
    :goto_49
    nop

    .line 51
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v4
.end method
