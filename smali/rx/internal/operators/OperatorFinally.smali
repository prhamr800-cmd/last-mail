###### Class rx.internal.operators.OperatorFinally (rx.internal.operators.OperatorFinally)
.class public final Lrx/internal/operators/OperatorFinally;
.super Ljava/lang/Object;
.source "OperatorFinally.java"

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
.field final action:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .registers 2
    .param p1, "action"    # Lrx/functions/Action0;

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorFinally;, "Lrx/internal/operators/OperatorFinally<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorFinally;, "Lrx/internal/operators/OperatorFinally<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorFinally;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorFinally;, "Lrx/internal/operators/OperatorFinally<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorFinally$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorFinally$1;-><init>(Lrx/internal/operators/OperatorFinally;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorFinally.AnonymousClass1 (rx.internal.operators.OperatorFinally$1)
.class Lrx/internal/operators/OperatorFinally$1;
.super Lrx/Subscriber;
.source "OperatorFinally.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorFinally;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorFinally;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorFinally;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorFinally$1;, "Lrx/internal/operators/OperatorFinally.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iput-object p3, p0, Lrx/internal/operators/OperatorFinally$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorFinally$1;, "Lrx/internal/operators/OperatorFinally.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_e

    .line 62
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iget-object v0, v0, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 63
    nop

    .line 64
    return-void

    .line 62
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iget-object v1, v1, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorFinally$1;, "Lrx/internal/operators/OperatorFinally.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_e

    .line 53
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iget-object v0, v0, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 54
    nop

    .line 55
    return-void

    .line 53
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorFinally$1;->this$0:Lrx/internal/operators/OperatorFinally;

    iget-object v1, v1, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorFinally$1;, "Lrx/internal/operators/OperatorFinally.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorFinally$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
