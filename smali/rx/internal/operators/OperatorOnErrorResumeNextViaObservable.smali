###### Class rx.internal.operators.OperatorOnErrorResumeNextViaObservable (rx.internal.operators.OperatorOnErrorResumeNextViaObservable)
.class public final Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaObservable.java"

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

    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable<TT;>;"
    .local p1, "resumeSequence":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;->resumeSequence:Lrx/Observable;

    .line 50
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;Lrx/Subscriber;)V

    .line 99
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 101
    return-object v0
.end method

###### Class rx.internal.operators.OperatorOnErrorResumeNextViaObservable.AnonymousClass1 (rx.internal.operators.OperatorOnErrorResumeNextViaObservable$1)
.class Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;Lrx/Subscriber;)V
    .registers 3

    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 57
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    if-eqz v0, :cond_5

    .line 82
    return-void

    .line 84
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    .line 85
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 86
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    if-eqz v0, :cond_8

    .line 70
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 71
    return-void

    .line 73
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    .line 74
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->unsubscribe()V

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;->resumeSequence:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 77
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->done:Z

    if-eqz v0, :cond_5

    .line 62
    return-void

    .line 64
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 96
    return-void
.end method

###### Class rx.internal.operators.OperatorOnErrorResumeNextViaObservable.AnonymousClass1.C00421 (rx.internal.operators.OperatorOnErrorResumeNextViaObservable$1$1)
.class Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaObservable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;Lrx/Producer;)V
    .registers 3

    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 94
    return-void
.end method
