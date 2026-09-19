###### Class rx.internal.operators.OperatorOnErrorReturn (rx.internal.operators.OperatorOnErrorReturn)
.class public final Lrx/internal/operators/OperatorOnErrorReturn;
.super Ljava/lang/Object;
.source "OperatorOnErrorReturn.java"

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
.field final resultFunction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+TT;>;"
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
            "+TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn;, "Lrx/internal/operators/OperatorOnErrorReturn<TT;>;"
    .local p1, "resultFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorReturn;->resultFunction:Lrx/functions/Func1;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn;, "Lrx/internal/operators/OperatorOnErrorReturn<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorOnErrorReturn;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn;, "Lrx/internal/operators/OperatorOnErrorReturn<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorReturn$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorOnErrorReturn$1;-><init>(Lrx/internal/operators/OperatorOnErrorReturn;Lrx/Subscriber;)V

    .line 107
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 108
    return-object v0
.end method

###### Class rx.internal.operators.OperatorOnErrorReturn.AnonymousClass1 (rx.internal.operators.OperatorOnErrorReturn$1)
.class Lrx/internal/operators/OperatorOnErrorReturn$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorReturn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorReturn;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorReturn;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorReturn;Lrx/Subscriber;)V
    .registers 3

    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->this$0:Lrx/internal/operators/OperatorOnErrorReturn;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 58
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    if-eqz v0, :cond_5

    .line 90
    return-void

    .line 92
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    if-eqz v0, :cond_8

    .line 71
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    return-void

    .line 74
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    .line 76
    :try_start_b
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 77
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnErrorReturn$1;->unsubscribe()V

    .line 78
    iget-object v1, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->this$0:Lrx/internal/operators/OperatorOnErrorReturn;

    iget-object v1, v1, Lrx/internal/operators/OperatorOnErrorReturn;->resultFunction:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_26} :catch_2d

    .line 83
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    nop

    .line 84
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 85
    return-void

    .line 80
    :catch_2d
    move-exception v1

    .line 81
    .local v1, "x":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    new-instance v3, Lrx/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->done:Z

    if-eqz v0, :cond_5

    .line 63
    return-void

    .line 65
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1;, "Lrx/internal/operators/OperatorOnErrorReturn.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorOnErrorReturn$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorOnErrorReturn$1$1;-><init>(Lrx/internal/operators/OperatorOnErrorReturn$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 104
    return-void
.end method

###### Class rx.internal.operators.OperatorOnErrorReturn.AnonymousClass1.C00431 (rx.internal.operators.OperatorOnErrorReturn$1$1)
.class Lrx/internal/operators/OperatorOnErrorReturn$1$1;
.super Ljava/lang/Object;
.source "OperatorOnErrorReturn.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorReturn$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorOnErrorReturn$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorReturn$1;Lrx/Producer;)V
    .registers 3

    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1$1;, "Lrx/internal/operators/OperatorOnErrorReturn$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorReturn$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorReturn$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorReturn$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn$1$1;, "Lrx/internal/operators/OperatorOnErrorReturn$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorReturn$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 102
    return-void
.end method
