###### Class rx.internal.operators.OperatorOnErrorFlatMap (rx.internal.operators.OperatorOnErrorFlatMap)
.class public final Lrx/internal/operators/OperatorOnErrorFlatMap;
.super Ljava/lang/Object;
.source "OperatorOnErrorFlatMap.java"

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
            "Lrx/exceptions/OnErrorThrowable;",
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
            "Lrx/exceptions/OnErrorThrowable;",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap;, "Lrx/internal/operators/OperatorOnErrorFlatMap<TT;>;"
    .local p1, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/exceptions/OnErrorThrowable;+Lrx/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorFlatMap;->resumeFunction:Lrx/functions/Func1;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorOnErrorFlatMap;)Lrx/functions/Func1;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorOnErrorFlatMap;

    .line 30
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap;->resumeFunction:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap;, "Lrx/internal/operators/OperatorOnErrorFlatMap<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorOnErrorFlatMap;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap;, "Lrx/internal/operators/OperatorOnErrorFlatMap<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorOnErrorFlatMap$1;-><init>(Lrx/internal/operators/OperatorOnErrorFlatMap;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorOnErrorFlatMap.AnonymousClass1 (rx.internal.operators.OperatorOnErrorFlatMap$1)
.class Lrx/internal/operators/OperatorOnErrorFlatMap$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorFlatMap;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorFlatMap;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorFlatMap;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->this$0:Lrx/internal/operators/OperatorOnErrorFlatMap;

    iput-object p3, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 45
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap.1;"
    :try_start_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 51
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->this$0:Lrx/internal/operators/OperatorOnErrorFlatMap;

    invoke-static {v0}, Lrx/internal/operators/OperatorOnErrorFlatMap;->access$000(Lrx/internal/operators/OperatorOnErrorFlatMap;)Lrx/functions/Func1;

    move-result-object v0

    invoke-static {p1}, Lrx/exceptions/OnErrorThrowable;->from(Ljava/lang/Throwable;)Lrx/exceptions/OnErrorThrowable;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 52
    .local v0, "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;-><init>(Lrx/internal/operators/OperatorOnErrorFlatMap$1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    .line 73
    .end local v0    # "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    goto :goto_2a

    .line 71
    :catch_24
    move-exception v0

    .line 72
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "e2":Ljava/lang/Throwable;
    :goto_2a
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

###### Class rx.internal.operators.OperatorOnErrorFlatMap.AnonymousClass1.C00401 (rx.internal.operators.OperatorOnErrorFlatMap$1$1)
.class Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorFlatMap$1;->onError(Ljava/lang/Throwable;)V
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
.field final synthetic this$1:Lrx/internal/operators/OperatorOnErrorFlatMap$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorFlatMap$1;)V
    .registers 2

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorFlatMap$1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap$1.1;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorFlatMap$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;, "Lrx/internal/operators/OperatorOnErrorFlatMap$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorFlatMap$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorFlatMap$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorFlatMap$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
