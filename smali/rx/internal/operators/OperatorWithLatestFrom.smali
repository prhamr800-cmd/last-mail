###### Class rx.internal.operators.OperatorWithLatestFrom (rx.internal.operators.OperatorWithLatestFrom)
.class public final Lrx/internal/operators/OperatorWithLatestFrom;
.super Ljava/lang/Object;
.source "OperatorWithLatestFrom.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TU;>;",
            "Lrx/functions/Func2<",
            "-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFrom;->other:Lrx/Observable;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFrom;->resultSelector:Lrx/functions/Func2;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWithLatestFrom;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 45
    .local v0, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TR;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 49
    .local v1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v8, Lrx/internal/operators/OperatorWithLatestFrom$1;

    const/4 v5, 0x1

    move-object v2, v8

    move-object v3, p0

    move-object v4, v0

    move-object v6, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lrx/internal/operators/OperatorWithLatestFrom$1;-><init>(Lrx/internal/operators/OperatorWithLatestFrom;Lrx/Subscriber;ZLjava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V

    .line 78
    .local v2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v3, Lrx/internal/operators/OperatorWithLatestFrom$2;

    invoke-direct {v3, p0, v1, v0}, Lrx/internal/operators/OperatorWithLatestFrom$2;-><init>(Lrx/internal/operators/OperatorWithLatestFrom;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V

    .line 96
    .local v3, "otherSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v0, v2}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 97
    invoke-virtual {v0, v3}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 99
    iget-object v4, p0, Lrx/internal/operators/OperatorWithLatestFrom;->other:Lrx/Observable;

    invoke-virtual {v4, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 101
    return-object v2
.end method

###### Class rx.internal.operators.OperatorWithLatestFrom.AnonymousClass1 (rx.internal.operators.OperatorWithLatestFrom$1)
.class Lrx/internal/operators/OperatorWithLatestFrom$1;
.super Lrx/Subscriber;
.source "OperatorWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWithLatestFrom;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorWithLatestFrom;

.field final synthetic val$current:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWithLatestFrom;Lrx/Subscriber;ZLjava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V
    .registers 6
    .param p3, "x1"    # Z

    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->this$0:Lrx/internal/operators/OperatorWithLatestFrom;

    iput-object p4, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1e

    .line 56
    move-object v1, v0

    .line 57
    .local v1, "u":Ljava/lang/Object;, "TU;"
    :try_start_b
    iget-object v2, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->this$0:Lrx/internal/operators/OperatorWithLatestFrom;

    iget-object v2, v2, Lrx/internal/operators/OperatorWithLatestFrom;->resultSelector:Lrx/functions/Func2;

    invoke-interface {v2, p1, v1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, "result":Ljava/lang/Object;, "TR;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, v2}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_19

    .line 63
    .end local v1    # "u":Ljava/lang/Object;, "TU;"
    .end local v2    # "result":Ljava/lang/Object;, "TR;"
    goto :goto_1e

    .line 60
    :catch_19
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWithLatestFrom$1;->onError(Ljava/lang/Throwable;)V

    .line 62
    return-void

    .line 65
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1e
    :goto_1e
    return-void
.end method

###### Class rx.internal.operators.OperatorWithLatestFrom.AnonymousClass2 (rx.internal.operators.OperatorWithLatestFrom$2)
.class Lrx/internal/operators/OperatorWithLatestFrom$2;
.super Lrx/Subscriber;
.source "OperatorWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWithLatestFrom;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorWithLatestFrom;

.field final synthetic val$current:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWithLatestFrom;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V
    .registers 4

    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->this$0:Lrx/internal/operators/OperatorWithLatestFrom;

    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_14

    .line 91
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 92
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 94
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
