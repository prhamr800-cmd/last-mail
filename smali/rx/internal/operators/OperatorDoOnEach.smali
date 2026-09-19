###### Class rx.internal.operators.OperatorDoOnEach (rx.internal.operators.OperatorDoOnEach)
.class public Lrx/internal/operators/OperatorDoOnEach;
.super Ljava/lang/Object;
.source "OperatorDoOnEach.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final doOnEachObserver:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach;, "Lrx/internal/operators/OperatorDoOnEach<TT;>;"
    .local p1, "doOnEachObserver":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorDoOnEach;

    .line 27
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach;, "Lrx/internal/operators/OperatorDoOnEach<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDoOnEach;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach;, "Lrx/internal/operators/OperatorDoOnEach<TT;>;"
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnEach$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDoOnEach$1;-><init>(Lrx/internal/operators/OperatorDoOnEach;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorDoOnEach.AnonymousClass1 (rx.internal.operators.OperatorDoOnEach$1)
.class Lrx/internal/operators/OperatorDoOnEach$1;
.super Lrx/Subscriber;
.source "OperatorDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDoOnEach;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDoOnEach;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDoOnEach;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iput-object p3, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 38
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v0, :cond_5

    .line 43
    return-void

    .line 46
    :cond_5
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    invoke-static {v0}, Lrx/internal/operators/OperatorDoOnEach;->access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;

    move-result-object v0

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_18

    .line 50
    nop

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 53
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 54
    return-void

    .line 47
    :catch_18
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDoOnEach$1;->onError(Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v0, :cond_8

    .line 61
    return-void

    .line 63
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 65
    :try_start_b
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    invoke-static {v0}, Lrx/internal/operators/OperatorDoOnEach;->access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_1b

    .line 69
    nop

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 71
    return-void

    .line 66
    :catch_1b
    move-exception v0

    .line 67
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach$1;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v0, :cond_5

    .line 76
    return-void

    .line 79
    :cond_5
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    invoke-static {v0}, Lrx/internal/operators/OperatorDoOnEach;->access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_15

    .line 83
    nop

    .line 84
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 85
    return-void

    .line 80
    :catch_15
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorDoOnEach$1;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method
