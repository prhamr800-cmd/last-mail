###### Class kotlin.coroutines.experimental.intrinsics.IntrinsicsKt (kotlin.coroutines.experimental.intrinsics.IntrinsicsKt)
.class public final Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;
.super Ljava/lang/Object;
.source "Intrinsics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Intrinsics.kt\nkotlin/coroutines/experimental/intrinsics/IntrinsicsKt\n*L\n1#1,125:1\n109#1,2:126\n123#1:128\n109#1,2:129\n123#1:131\n*E\n*S KotlinDebug\n*F\n+ 1 Intrinsics.kt\nkotlin/coroutines/experimental/intrinsics/IntrinsicsKt\n*L\n71#1,2:126\n71#1:128\n95#1,2:129\n95#1:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a5\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\"\u0004\u0008\u0000\u0010\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u00072\u0010\u0008\u0004\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000cH\u0083\u0008\u001a5\u0010\r\u001a\u0002H\t\"\u0004\u0008\u0000\u0010\t2\u001c\u0008\u0004\u0010\u000b\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\t0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000eH\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001aD\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\"\u0004\u0008\u0000\u0010\t*\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\t0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u001a]\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\"\u0004\u0008\u0000\u0010\u0012\"\u0004\u0008\u0001\u0010\t*#\u0008\u0001\u0012\u0004\u0012\u0002H\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\t0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u00142\u0006\u0010\u0015\u001a\u0002H\u00122\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\"\u001c\u0010\u0000\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0017"
    }
    d2 = {
        "COROUTINE_SUSPENDED",
        "",
        "COROUTINE_SUSPENDED$annotations",
        "()V",
        "getCOROUTINE_SUSPENDED",
        "()Ljava/lang/Object;",
        "buildContinuationByInvokeCall",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "T",
        "completion",
        "block",
        "Lkotlin/Function0;",
        "suspendCoroutineOrReturn",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "createCoroutineUnchecked",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;",
        "R",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "receiver",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;",
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
    name = "IntrinsicsKt"
.end annotation


# static fields
.field private static final COROUTINE_SUSPENDED:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->COROUTINE_SUSPENDED:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic COROUTINE_SUSPENDED$annotations()V
    .registers 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method private static final buildContinuationByInvokeCall(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)Lkotlin/coroutines/experimental/Continuation;
    .registers 6
    .param p0, "completion"    # Lkotlin/coroutines/experimental/Continuation;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    .local v0, "$i$f$buildContinuationByInvokeCall":I
    nop

    .line 110
    new-instance v1, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;

    invoke-direct {v1, p0, p1}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;-><init>(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)V

    .line 109
    nop

    .line 123
    .local v1, "continuation":Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;
    invoke-interface {p0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v2, v3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->interceptContinuationIfNeeded(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    return-object v2
.end method

.method public static final createCoroutineUnchecked(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .registers 6
    .param p0, "$receiver"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "completion"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    if-nez v0, :cond_22

    .line 71
    const/4 v0, 0x0

    .line 126
    .local v0, "$i$f$buildContinuationByInvokeCall":I
    nop

    .line 127
    new-instance v1, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;

    invoke-direct {v1, p1, p0, p1}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;-><init>(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V

    .line 126
    nop

    .line 128
    .local v1, "continuation$iv":Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;
    invoke-interface {p1}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v2, v3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->interceptContinuationIfNeeded(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    goto :goto_31

    .line 76
    .end local v0    # "$i$f$buildContinuationByInvokeCall":I
    .end local v1    # "continuation$iv":Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;
    :cond_22
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    invoke-virtual {v0, p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->create(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    if-eqz v0, :cond_33

    check-cast v0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->getFacade()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    .line 70
    :goto_31
    nop

    .line 76
    return-object v0

    :cond_33
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.experimental.jvm.internal.CoroutineImpl"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final createCoroutineUnchecked(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .registers 7
    .param p0, "$receiver"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "completion"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    instance-of v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    if-nez v0, :cond_22

    .line 95
    const/4 v0, 0x0

    .line 129
    .local v0, "$i$f$buildContinuationByInvokeCall":I
    nop

    .line 130
    new-instance v1, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;

    invoke-direct {v1, p2, p0, p1, p2}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;-><init>(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 129
    nop

    .line 131
    .local v1, "continuation$iv":Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;
    invoke-interface {p2}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v2, v3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->interceptContinuationIfNeeded(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    goto :goto_31

    .line 100
    .end local v0    # "$i$f$buildContinuationByInvokeCall":I
    .end local v1    # "continuation$iv":Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;
    :cond_22
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    invoke-virtual {v0, p1, p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    if-eqz v0, :cond_33

    check-cast v0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->getFacade()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    .line 94
    :goto_31
    nop

    .line 100
    return-object v0

    :cond_33
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.experimental.jvm.internal.CoroutineImpl"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getCOROUTINE_SUSPENDED()Ljava/lang/Object;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    sget-object v0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->COROUTINE_SUSPENDED:Ljava/lang/Object;

    return-object v0
.end method

.method private static final suspendCoroutineOrReturn(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 p1, 0x0

    .line 44
    .local p1, "$i$f$suspendCoroutineOrReturn":I
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "Implementation is intrinsic"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

###### Class kotlin.coroutines.experimental.intrinsics.IntrinsicsKt$buildContinuationByInvokeCall$continuation$1 (kotlin.coroutines.experimental.intrinsics.IntrinsicsKt$buildContinuationByInvokeCall$continuation$1)
.class public final Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;
.super Ljava/lang/Object;
.source "Intrinsics.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->buildContinuationByInvokeCall(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)Lkotlin/coroutines/experimental/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Intrinsics.kt\nkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1\n*L\n1#1,125:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "kotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "resume",
        "value",
        "(Lkotlin/Unit;)V",
        "resumeWithException",
        "exception",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function0;

.field final synthetic $completion:Lkotlin/coroutines/experimental/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .param p1, "$captured_local_variable$0"    # Lkotlin/coroutines/experimental/Continuation;
    .param p2, "$captured_local_variable$1"    # Lkotlin/jvm/functions/Function0;

    .line 110
    iput-object p1, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    iput-object p2, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resume(Ljava/lang/Object;)V
    .registers 2

    .line 110
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;->resume(Lkotlin/Unit;)V

    return-void
.end method

.method public resume(Lkotlin/Unit;)V
    .registers 5
    .param p1, "value"    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    :try_start_8
    iget-object v1, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_26

    if-eqz v0, :cond_1a

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    goto :goto_26

    :cond_1a
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_22} :catch_22

    :catch_22
    move-exception v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 116
    :cond_26
    :goto_26
    return-void
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

###### Class kotlin.coroutines.experimental.intrinsics.IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1 (kotlin.coroutines.experimental.intrinsics.IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1)
.class public final Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;
.super Ljava/lang/Object;
.source "Intrinsics.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->createCoroutineUnchecked(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Intrinsics.kt\nkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1\n+ 2 Intrinsics.kt\nkotlin/coroutines/experimental/intrinsics/IntrinsicsKt\n*L\n1#1,125:1\n72#2,2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "kotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "resume",
        "value",
        "(Lkotlin/Unit;)V",
        "resumeWithException",
        "exception",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $completion:Lkotlin/coroutines/experimental/Continuation;

.field final synthetic $completion$inlined:Lkotlin/coroutines/experimental/Continuation;

.field final synthetic receiver$0$inlined:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V
    .registers 4
    .param p1, "$captured_local_variable$0"    # Lkotlin/coroutines/experimental/Continuation;

    iput-object p1, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    iput-object p2, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;->receiver$0$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;->$completion$inlined:Lkotlin/coroutines/experimental/Continuation;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resume(Ljava/lang/Object;)V
    .registers 2

    .line 110
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;->resume(Lkotlin/Unit;)V

    return-void
.end method

.method public resume(Lkotlin/Unit;)V
    .registers 6
    .param p1, "value"    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    const/4 v1, 0x0

    .line 126
    .local v1, "$i$a$1$buildContinuationByInvokeCall":I
    nop

    .line 127
    :try_start_a
    iget-object v2, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;->receiver$0$inlined:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2f

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;->$completion$inlined:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$i$a$1$buildContinuationByInvokeCall":I
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_3b

    if-eqz v0, :cond_27

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_27
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$i$a$1$buildContinuationByInvokeCall":I
    :cond_2f
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type (kotlin.coroutines.experimental.Continuation<T>) -> kotlin.Any?"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_37} :catch_37

    .end local v1    # "$i$a$1$buildContinuationByInvokeCall":I
    :catch_37
    move-exception v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 116
    :cond_3b
    :goto_3b
    return-void
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

###### Class kotlin.coroutines.experimental.intrinsics.IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2 (kotlin.coroutines.experimental.intrinsics.IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2)
.class public final Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;
.super Ljava/lang/Object;
.source "Intrinsics.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->createCoroutineUnchecked(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Intrinsics.kt\nkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1\n+ 2 Intrinsics.kt\nkotlin/coroutines/experimental/intrinsics/IntrinsicsKt\n*L\n1#1,125:1\n96#2,2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "kotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "resume",
        "value",
        "(Lkotlin/Unit;)V",
        "resumeWithException",
        "exception",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $completion:Lkotlin/coroutines/experimental/Continuation;

.field final synthetic $completion$inlined:Lkotlin/coroutines/experimental/Continuation;

.field final synthetic $receiver$inlined:Ljava/lang/Object;

.field final synthetic receiver$0$inlined:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V
    .registers 5
    .param p1, "$captured_local_variable$0"    # Lkotlin/coroutines/experimental/Continuation;

    iput-object p1, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion:Lkotlin/coroutines/experimental/Continuation;

    iput-object p2, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->receiver$0$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$receiver$inlined:Ljava/lang/Object;

    iput-object p4, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion$inlined:Lkotlin/coroutines/experimental/Continuation;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resume(Ljava/lang/Object;)V
    .registers 2

    .line 110
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->resume(Lkotlin/Unit;)V

    return-void
.end method

.method public resume(Lkotlin/Unit;)V
    .registers 7
    .param p1, "value"    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion:Lkotlin/coroutines/experimental/Continuation;

    const/4 v1, 0x0

    .line 126
    .local v1, "$i$a$2$buildContinuationByInvokeCall":I
    nop

    .line 127
    :try_start_a
    iget-object v2, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->receiver$0$inlined:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_31

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$receiver$inlined:Ljava/lang/Object;

    iget-object v4, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion$inlined:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$i$a$2$buildContinuationByInvokeCall":I
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_3d

    if-eqz v0, :cond_29

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_29
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$i$a$2$buildContinuationByInvokeCall":I
    :cond_31
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type (R, kotlin.coroutines.experimental.Continuation<T>) -> kotlin.Any?"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_39} :catch_39

    .end local v1    # "$i$a$2$buildContinuationByInvokeCall":I
    :catch_39
    move-exception v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 116
    :cond_3d
    :goto_3d
    return-void
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method
