###### Class kotlin.coroutines.experimental.SafeContinuation (kotlin.coroutines.experimental.SafeContinuation)
.class public final Lkotlin/coroutines/experimental/SafeContinuation;
.super Ljava/lang/Object;
.source "SafeContinuationJvm.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/experimental/SafeContinuation$Fail;,
        Lkotlin/coroutines/experimental/SafeContinuation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u0015*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u0015\u0016B\u0015\u0008\u0011\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0002\u0010\u0004B\u001f\u0008\u0000\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\n\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0001J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/SafeContinuation;",
        "T",
        "Lkotlin/coroutines/experimental/Continuation;",
        "delegate",
        "(Lkotlin/coroutines/experimental/Continuation;)V",
        "initialResult",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "result",
        "getResult",
        "resume",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "resumeWithException",
        "exception",
        "",
        "Companion",
        "Fail",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# static fields
.field public static final Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

.field private static final RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlin/coroutines/experimental/SafeContinuation<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESUMED:Ljava/lang/Object;

.field private static final UNDECIDED:Ljava/lang/Object;


# instance fields
.field private final delegate:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    .line 44
    nop

    .line 45
    const-class v0, Lkotlin/coroutines/experimental/SafeContinuation;

    const-class v1, Ljava/lang/Object;

    const-string v2, "result"

    .line 44
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;)V
    .registers 3
    .param p1, "delegate"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v0}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getUNDECIDED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/experimental/SafeContinuation;-><init>(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V
    .registers 4
    .param p1, "delegate"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "initialResult"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    .line 36
    iput-object p2, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getRESULT$cp()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    .line 23
    sget-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic access$getRESUMED$cp()Ljava/lang/Object;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 23
    sget-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getUNDECIDED$cp()Ljava/lang/Object;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 23
    sget-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    return-object v0
.end method

.method private static final getRESULT()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlin/coroutines/experimental/SafeContinuation<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v0}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getRESULT$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .registers 5
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 80
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    .line 81
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getUNDECIDED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 82
    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getRESULT$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sget-object v2, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v2}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getUNDECIDED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 83
    :cond_25
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    .line 85
    :cond_27
    nop

    .line 86
    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getRESUMED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_35

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 87
    :cond_35
    instance-of v1, v0, Lkotlin/coroutines/experimental/SafeContinuation$Fail;

    if-nez v1, :cond_3a

    .line 88
    return-object v0

    .line 87
    :cond_3a
    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/experimental/SafeContinuation$Fail;

    invoke-virtual {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Fail;->getException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public resume(Ljava/lang/Object;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 51
    :goto_0
    nop

    .line 52
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    .line 53
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 54
    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getUNDECIDED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getRESULT$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sget-object v2, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v2}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getUNDECIDED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    return-void

    .line 55
    :cond_1f
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_43

    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getRESULT$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v3}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getRESUMED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 56
    iget-object v1, p0, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 57
    return-void

    .line 60
    .end local v0    # "result":Ljava/lang/Object;
    :cond_41
    nop

    .line 51
    goto :goto_0

    .line 59
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :goto_5
    nop

    .line 66
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    .line 67
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 68
    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getUNDECIDED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_29

    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getRESULT$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sget-object v2, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v2}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getUNDECIDED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lkotlin/coroutines/experimental/SafeContinuation$Fail;

    invoke-direct {v3, p1}, Lkotlin/coroutines/experimental/SafeContinuation$Fail;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    return-void

    .line 69
    :cond_29
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4d

    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getRESULT$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    invoke-static {v3}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->access$getRESUMED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 70
    iget-object v1, p0, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 71
    return-void

    .line 74
    .end local v0    # "result":Ljava/lang/Object;
    :cond_4b
    nop

    .line 65
    goto :goto_5

    .line 73
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

###### Class kotlin.coroutines.experimental.SafeContinuation.Companion (kotlin.coroutines.experimental.SafeContinuation$Companion)
.class public final Lkotlin/coroutines/experimental/SafeContinuation$Companion;
.super Ljava/lang/Object;
.source "SafeContinuationJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/experimental/SafeContinuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R`\u0010\u0003\u001aF\u0012\u0014\u0012\u0012\u0012\u0002\u0008\u0003 \u0006*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00050\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001 \u0006*\"\u0012\u0014\u0012\u0012\u0012\u0002\u0008\u0003 \u0006*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00050\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00040\u00048\u0002X\u0083\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/SafeContinuation$Companion;",
        "",
        "()V",
        "RESULT",
        "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
        "Lkotlin/coroutines/experimental/SafeContinuation;",
        "kotlin.jvm.PlatformType",
        "RESULT$annotations",
        "getRESULT",
        "()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
        "RESUMED",
        "getRESUMED",
        "()Ljava/lang/Object;",
        "UNDECIDED",
        "getUNDECIDED",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 38
    invoke-direct {p0}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;-><init>()V

    return-void
.end method

.method private static synthetic RESULT$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final synthetic access$getRESULT$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 2
    .param p0, "$this"    # Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    .line 38
    invoke-direct {p0}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->getRESULT()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getRESUMED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;
    .registers 2
    .param p0, "$this"    # Lkotlin/coroutines/experimental/SafeContinuation$Companion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 38
    invoke-direct {p0}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->getRESUMED()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getUNDECIDED$p(Lkotlin/coroutines/experimental/SafeContinuation$Companion;)Ljava/lang/Object;
    .registers 2
    .param p0, "$this"    # Lkotlin/coroutines/experimental/SafeContinuation$Companion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 38
    invoke-direct {p0}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;->getUNDECIDED()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getRESULT()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlin/coroutines/experimental/SafeContinuation<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lkotlin/coroutines/experimental/SafeContinuation;->access$getRESULT$cp()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private final getRESUMED()Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-static {}, Lkotlin/coroutines/experimental/SafeContinuation;->access$getRESUMED$cp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getUNDECIDED()Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-static {}, Lkotlin/coroutines/experimental/SafeContinuation;->access$getUNDECIDED$cp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.coroutines.experimental.SafeContinuation.Fail (kotlin.coroutines.experimental.SafeContinuation$Fail)
.class final Lkotlin/coroutines/experimental/SafeContinuation$Fail;
.super Ljava/lang/Object;
.source "SafeContinuationJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/experimental/SafeContinuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Fail"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/SafeContinuation$Fail;",
        "",
        "exception",
        "",
        "(Ljava/lang/Throwable;)V",
        "getException",
        "()Ljava/lang/Throwable;",
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
.field private final exception:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/SafeContinuation$Fail;->exception:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getException()Ljava/lang/Throwable;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation$Fail;->exception:Ljava/lang/Throwable;

    return-object v0
.end method
