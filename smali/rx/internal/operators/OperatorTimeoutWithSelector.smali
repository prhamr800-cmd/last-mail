###### Class rx.internal.operators.OperatorTimeoutWithSelector (rx.internal.operators.OperatorTimeoutWithSelector)
.class public Lrx/internal/operators/OperatorTimeoutWithSelector;
.super Lrx/internal/operators/OperatorTimeoutBase;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorTimeoutBase<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/Observable<",
            "TU;>;>;",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "TV;>;>;",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector;, "Lrx/internal/operators/OperatorTimeoutWithSelector<TT;TU;TV;>;"
    .local p1, "firstTimeoutSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p3, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTimeoutWithSelector$1;-><init>(Lrx/functions/Func0;)V

    new-instance v1, Lrx/internal/operators/OperatorTimeoutWithSelector$2;

    invoke-direct {v1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$2;-><init>(Lrx/functions/Func1;)V

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v2

    invoke-direct {p0, v0, v1, p3, v2}, Lrx/internal/operators/OperatorTimeoutBase;-><init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/Scheduler;)V

    .line 112
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .param p1, "x0"    # Lrx/Subscriber;

    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector;, "Lrx/internal/operators/OperatorTimeoutWithSelector<TT;TU;TV;>;"
    invoke-super {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OperatorTimeoutWithSelector.AnonymousClass1 (rx.internal.operators.OperatorTimeoutWithSelector$1)
.class Lrx/internal/operators/OperatorTimeoutWithSelector$1;
.super Ljava/lang/Object;
.source "OperatorTimeoutWithSelector.java"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$firstTimeoutSelector:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;)V
    .registers 2

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->val$firstTimeoutSelector:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    move-object v0, p1

    check-cast v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    move-object v2, p3

    check-cast v2, Lrx/Scheduler$Worker;

    invoke-virtual {p0, v0, v1, v2}, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 7
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<",
            "TT;>;",
            "Ljava/lang/Long;",
            "Lrx/Scheduler$Worker;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->val$firstTimeoutSelector:Lrx/functions/Func0;

    if-eqz v0, :cond_25

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<TU;>;"
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->val$firstTimeoutSelector:Lrx/functions/Func0;

    invoke-interface {v1}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_d} :catch_19

    move-object v0, v1

    .line 55
    nop

    .line 56
    new-instance v1, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;-><init>(Lrx/internal/operators/OperatorTimeoutWithSelector$1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    return-object v1

    .line 51
    :catch_19
    move-exception v1

    .line 52
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 53
    invoke-virtual {p1, v1}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 54
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    return-object v2

    .line 75
    .end local v0    # "o":Lrx/Observable;, "Lrx/Observable<TU;>;"
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_25
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OperatorTimeoutWithSelector.AnonymousClass1.C00521 (rx.internal.operators.OperatorTimeoutWithSelector$1$1)
.class Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;
.super Lrx/Subscriber;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector$1;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;
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
.field final synthetic this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$1;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeoutWithSelector$1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V
    .registers 4

    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 61
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 71
    return-void
.end method

###### Class rx.internal.operators.OperatorTimeoutWithSelector.AnonymousClass2 (rx.internal.operators.OperatorTimeoutWithSelector$2)
.class Lrx/internal/operators/OperatorTimeoutWithSelector$2;
.super Ljava/lang/Object;
.source "OperatorTimeoutWithSelector.java"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$timeoutSelector:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func1;)V
    .registers 2

    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2;->val$timeoutSelector:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    move-object v0, p1

    check-cast v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    move-object v2, p4

    check-cast v2, Lrx/Scheduler$Worker;

    invoke-virtual {p0, v0, v1, p3, v2}, Lrx/internal/operators/OperatorTimeoutWithSelector$2;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 8
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p4, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<",
            "TT;>;",
            "Ljava/lang/Long;",
            "TT;",
            "Lrx/Scheduler$Worker;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 86
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<TV;>;"
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2;->val$timeoutSelector:Lrx/functions/Func1;

    invoke-interface {v1, p3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_15

    move-object v0, v1

    .line 91
    nop

    .line 92
    new-instance v1, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;-><init>(Lrx/internal/operators/OperatorTimeoutWithSelector$2;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    return-object v1

    .line 87
    :catch_15
    move-exception v1

    .line 88
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 89
    invoke-virtual {p1, v1}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 90
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    return-object v2
.end method

###### Class rx.internal.operators.OperatorTimeoutWithSelector.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorTimeoutWithSelector$2$1)
.class Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;
.super Lrx/Subscriber;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector$2;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$2;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeoutWithSelector$2;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V
    .registers 4

    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 97
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    .local p1, "t":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 107
    return-void
.end method
