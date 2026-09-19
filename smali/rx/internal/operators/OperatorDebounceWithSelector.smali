###### Class rx.internal.operators.OperatorDebounceWithSelector (rx.internal.operators.OperatorDebounceWithSelector)
.class public final Lrx/internal/operators/OperatorDebounceWithSelector;
.super Ljava/lang/Object;
.source "OperatorDebounceWithSelector.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final selector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "TU;>;>;"
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
            "-TT;+",
            "Lrx/Observable<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector;, "Lrx/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithSelector;->selector:Lrx/functions/Func1;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector;, "Lrx/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDebounceWithSelector;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector;, "Lrx/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 42
    .local v0, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v1, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 43
    .local v1, "ssub":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 45
    new-instance v2, Lrx/internal/operators/OperatorDebounceWithSelector$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/OperatorDebounceWithSelector$1;-><init>(Lrx/internal/operators/OperatorDebounceWithSelector;Lrx/Subscriber;Lrx/observers/SerializedSubscriber;Lrx/subscriptions/SerialSubscription;)V

    return-object v2
.end method

###### Class rx.internal.operators.OperatorDebounceWithSelector.AnonymousClass1 (rx.internal.operators.OperatorDebounceWithSelector$1)
.class Lrx/internal/operators/OperatorDebounceWithSelector$1;
.super Lrx/Subscriber;
.source "OperatorDebounceWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDebounceWithSelector;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final self:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "*>;"
        }
    .end annotation
.end field

.field final state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorDebounceWithSelector;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;

.field final synthetic val$ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDebounceWithSelector;Lrx/Subscriber;Lrx/observers/SerializedSubscriber;Lrx/subscriptions/SerialSubscription;)V
    .registers 5

    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->this$0:Lrx/internal/operators/OperatorDebounceWithSelector;

    iput-object p3, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lrx/observers/SerializedSubscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 46
    new-instance p1, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-direct {p1}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    .line 47
    iput-object p0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->self:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 102
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitAndComplete(Lrx/Subscriber;Lrx/Subscriber;)V

    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 95
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 96
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDebounceWithSelector$1;->unsubscribe()V

    .line 97
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->clear()V

    .line 98
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->this$0:Lrx/internal/operators/OperatorDebounceWithSelector;

    iget-object v0, v0, Lrx/internal/operators/OperatorDebounceWithSelector;->selector:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_1f

    .line 64
    .local v0, "debouncer":Lrx/Observable;, "Lrx/Observable<TU;>;"
    nop

    .line 67
    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v1, p1}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->next(Ljava/lang/Object;)I

    move-result v1

    .line 69
    .local v1, "index":I
    new-instance v2, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;

    invoke-direct {v2, p0, v1}, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;-><init>(Lrx/internal/operators/OperatorDebounceWithSelector$1;I)V

    .line 87
    .local v2, "debounceSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v3, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 89
    invoke-virtual {v0, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 91
    return-void

    .line 61
    .end local v0    # "debouncer":Lrx/Observable;, "Lrx/Observable<TU;>;"
    .end local v1    # "index":I
    .end local v2    # "debounceSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    :catch_1f
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDebounceWithSelector$1;->onError(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorDebounceWithSelector$1;->request(J)V

    .line 53
    return-void
.end method

###### Class rx.internal.operators.OperatorDebounceWithSelector.AnonymousClass1.C00351 (rx.internal.operators.OperatorDebounceWithSelector$1$1)
.class Lrx/internal/operators/OperatorDebounceWithSelector$1$1;
.super Lrx/Subscriber;
.source "OperatorDebounceWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDebounceWithSelector$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDebounceWithSelector$1;I)V
    .registers 3

    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1$1;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iput p2, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->val$index:I

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1$1;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget v1, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->val$index:I

    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v2, v2, Lrx/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lrx/observers/SerializedSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v3, v3, Lrx/internal/operators/OperatorDebounceWithSelector$1;->self:Lrx/Subscriber;

    invoke-virtual {v0, v1, v2, v3}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emit(ILrx/Subscriber;Lrx/Subscriber;)V

    .line 84
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->unsubscribe()V

    .line 85
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1$1;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDebounceWithSelector$1;->self:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithSelector$1$1;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDebounceWithSelector$1$1;->onCompleted()V

    .line 74
    return-void
.end method
