###### Class rx.internal.operators.OperatorFilter (rx.internal.operators.OperatorFilter)
.class public final Lrx/internal/operators/OperatorFilter;
.super Ljava/lang/Object;
.source "OperatorFilter.java"

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
.field private final predicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
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
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorFilter;, "Lrx/internal/operators/OperatorFilter<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OperatorFilter;->predicate:Lrx/functions/Func1;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorFilter;)Lrx/functions/Func1;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorFilter;

    .line 28
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter;->predicate:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorFilter;, "Lrx/internal/operators/OperatorFilter<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorFilter;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorFilter;, "Lrx/internal/operators/OperatorFilter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorFilter$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorFilter$1;-><init>(Lrx/internal/operators/OperatorFilter;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorFilter.AnonymousClass1 (rx.internal.operators.OperatorFilter$1)
.class Lrx/internal/operators/OperatorFilter$1;
.super Lrx/Subscriber;
.source "OperatorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorFilter;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorFilter;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorFilter;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorFilter$1;, "Lrx/internal/operators/OperatorFilter.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorFilter$1;->this$0:Lrx/internal/operators/OperatorFilter;

    iput-object p3, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorFilter$1;, "Lrx/internal/operators/OperatorFilter.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorFilter$1;, "Lrx/internal/operators/OperatorFilter.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorFilter$1;, "Lrx/internal/operators/OperatorFilter.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter$1;->this$0:Lrx/internal/operators/OperatorFilter;

    invoke-static {v0}, Lrx/internal/operators/OperatorFilter;->access$000(Lrx/internal/operators/OperatorFilter;)Lrx/functions/Func1;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 54
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_1d

    .line 57
    :cond_18
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorFilter$1;->request(J)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 61
    :goto_1d
    goto :goto_28

    .line 59
    :catch_1e
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorFilter$1;->val$child:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_28
    return-void
.end method
