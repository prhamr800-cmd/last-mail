###### Class rx.internal.operators.OperatorOnExceptionResumeNextViaObservable (rx.internal.operators.OperatorOnExceptionResumeNextViaObservable)
.class public final Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;
.super Ljava/lang/Object;
.source "OperatorOnExceptionResumeNextViaObservable.java"

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
.field final resumeSequence:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable<TT;>;"
    .local p1, "resumeSequence":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;->resumeSequence:Lrx/Observable;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;-><init>(Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;Lrx/Subscriber;)V

    .line 107
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 109
    return-object v0
.end method

###### Class rx.internal.operators.OperatorOnExceptionResumeNextViaObservable.AnonymousClass1 (rx.internal.operators.OperatorOnExceptionResumeNextViaObservable$1)
.class Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;
.super Lrx/Subscriber;
.source "OperatorOnExceptionResumeNextViaObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;Lrx/Subscriber;)V
    .registers 3

    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->this$0:Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 61
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->done:Z

    if-eqz v0, :cond_5

    .line 90
    return-void

    .line 92
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->done:Z

    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->done:Z

    if-eqz v0, :cond_8

    .line 74
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 75
    return-void

    .line 77
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->done:Z

    .line 78
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_27

    .line 79
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 80
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->unsubscribe()V

    .line 81
    iget-object v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->this$0:Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;->resumeSequence:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_2c

    .line 83
    :cond_27
    iget-object v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 85
    :goto_2c
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->done:Z

    if-eqz v0, :cond_5

    .line 66
    return-void

    .line 68
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1$1;-><init>(Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 104
    return-void
.end method

###### Class rx.internal.operators.OperatorOnExceptionResumeNextViaObservable.AnonymousClass1.C00441 (rx.internal.operators.OperatorOnExceptionResumeNextViaObservable$1$1)
.class Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1$1;
.super Ljava/lang/Object;
.source "OperatorOnExceptionResumeNextViaObservable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;Lrx/Producer;)V
    .registers 3

    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1$1;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1$1;->this$1:Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1$1;, "Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 102
    return-void
.end method
