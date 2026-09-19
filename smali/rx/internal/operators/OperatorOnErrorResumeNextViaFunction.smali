###### Class rx.internal.operators.OperatorOnErrorResumeNextViaFunction (rx.internal.operators.OperatorOnErrorResumeNextViaFunction)
.class public final Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

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
.field private final resumeFunction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lrx/functions/Func1;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;)Lrx/functions/Func1;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    .line 44
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;Lrx/Subscriber;)V

    .line 103
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 104
    return-object v0
.end method

###### Class rx.internal.operators.OperatorOnErrorResumeNextViaFunction.AnonymousClass1 (rx.internal.operators.OperatorOnErrorResumeNextViaFunction$1)
.class Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;Lrx/Subscriber;)V
    .registers 3

    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 56
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    if-eqz v0, :cond_5

    .line 61
    return-void

    .line 63
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    .line 64
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 65
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    if-eqz v0, :cond_8

    .line 70
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 71
    return-void

    .line 73
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    .line 75
    :try_start_b
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 76
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->unsubscribe()V

    .line 77
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    invoke-static {v0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->access$000(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;)Lrx/functions/Func1;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 78
    .local v0, "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2a} :catch_2b

    .line 81
    .end local v0    # "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    goto :goto_31

    .line 79
    :catch_2b
    move-exception v0

    .line 80
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 82
    .end local v0    # "e2":Ljava/lang/Throwable;
    :goto_31
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->done:Z

    if-eqz v0, :cond_5

    .line 87
    return-void

    .line 89
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 100
    return-void
.end method

###### Class rx.internal.operators.OperatorOnErrorResumeNextViaFunction.AnonymousClass1.C00411 (rx.internal.operators.OperatorOnErrorResumeNextViaFunction$1$1)
.class Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;Lrx/Producer;)V
    .registers 3

    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 98
    return-void
.end method
