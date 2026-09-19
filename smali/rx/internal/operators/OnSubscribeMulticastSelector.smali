###### Class rx.internal.operators.OnSubscribeMulticastSelector (rx.internal.operators.OnSubscribeMulticastSelector)
.class public final Lrx/internal/operators/OnSubscribeMulticastSelector;
.super Ljava/lang/Object;
.source "OnSubscribeMulticastSelector.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TIntermediate:",
        "Ljava/lang/Object;",
        "TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field final resultSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "TTIntermediate;>;+",
            "Lrx/Observable<",
            "TTResult;>;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TTInput;>;"
        }
    .end annotation
.end field

.field final subjectFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "+",
            "Lrx/subjects/Subject<",
            "-TTInput;+TTIntermediate;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func0;Lrx/functions/Func1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TTInput;>;",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/subjects/Subject<",
            "-TTInput;+TTIntermediate;>;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "TTIntermediate;>;+",
            "Lrx/Observable<",
            "TTResult;>;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector;, "Lrx/internal/operators/OnSubscribeMulticastSelector<TTInput;TTIntermediate;TTResult;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TTInput;>;"
    .local p2, "subjectFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TTInput;+TTIntermediate;>;>;"
    .local p3, "resultSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TTIntermediate;>;+Lrx/Observable<TTResult;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->source:Lrx/Observable;

    .line 48
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->subjectFactory:Lrx/functions/Func0;

    .line 49
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->resultSelector:Lrx/functions/Func1;

    .line 50
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 39
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector;, "Lrx/internal/operators/OnSubscribeMulticastSelector<TTInput;TTIntermediate;TTResult;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeMulticastSelector;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TTResult;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector;, "Lrx/internal/operators/OnSubscribeMulticastSelector<TTInput;TTIntermediate;TTResult;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TTResult;>;"
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lrx/internal/operators/OperatorMulticast;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->source:Lrx/Observable;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->subjectFactory:Lrx/functions/Func0;

    invoke-direct {v1, v2, v3}, Lrx/internal/operators/OperatorMulticast;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    move-object v0, v1

    .line 59
    .local v0, "connectable":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TTIntermediate;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeMulticastSelector;->resultSelector:Lrx/functions/Func1;

    invoke-interface {v1, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_25

    .line 63
    .local v1, "observable":Lrx/Observable;, "Lrx/Observable<TTResult;>;"
    nop

    .line 65
    new-instance v2, Lrx/observers/SafeSubscriber;

    invoke-direct {v2, p1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    .line 67
    .local v2, "s":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TTResult;>;"
    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 69
    new-instance v3, Lrx/internal/operators/OnSubscribeMulticastSelector$1;

    invoke-direct {v3, p0, v2}, Lrx/internal/operators/OnSubscribeMulticastSelector$1;-><init>(Lrx/internal/operators/OnSubscribeMulticastSelector;Lrx/observers/SafeSubscriber;)V

    invoke-virtual {v0, v3}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 75
    return-void

    .line 60
    .end local v0    # "connectable":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TTIntermediate;>;"
    .end local v1    # "observable":Lrx/Observable;, "Lrx/Observable<TTResult;>;"
    .end local v2    # "s":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TTResult;>;"
    :catch_25
    move-exception v1

    .line 61
    .restart local v0    # "connectable":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TTIntermediate;>;"
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeMulticastSelector.AnonymousClass1 (rx.internal.operators.OnSubscribeMulticastSelector$1)
.class Lrx/internal/operators/OnSubscribeMulticastSelector$1;
.super Ljava/lang/Object;
.source "OnSubscribeMulticastSelector.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeMulticastSelector;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeMulticastSelector;

.field final synthetic val$s:Lrx/observers/SafeSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeMulticastSelector;Lrx/observers/SafeSubscriber;)V
    .registers 3

    .line 69
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector$1;, "Lrx/internal/operators/OnSubscribeMulticastSelector.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeMulticastSelector$1;->this$0:Lrx/internal/operators/OnSubscribeMulticastSelector;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeMulticastSelector$1;->val$s:Lrx/observers/SafeSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 69
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector$1;, "Lrx/internal/operators/OnSubscribeMulticastSelector.1;"
    move-object v0, p1

    check-cast v0, Lrx/Subscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeMulticastSelector$1;->call(Lrx/Subscription;)V

    return-void
.end method

.method public call(Lrx/Subscription;)V
    .registers 3
    .param p1, "t1"    # Lrx/Subscription;

    .line 72
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector$1;, "Lrx/internal/operators/OnSubscribeMulticastSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeMulticastSelector$1;->val$s:Lrx/observers/SafeSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SafeSubscriber;->add(Lrx/Subscription;)V

    .line 73
    return-void
.end method
