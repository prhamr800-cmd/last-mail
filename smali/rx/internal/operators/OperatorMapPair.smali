###### Class rx.internal.operators.OperatorMapPair (rx.internal.operators.OperatorMapPair)
.class public final Lrx/internal/operators/OperatorMapPair;
.super Ljava/lang/Object;
.source "OperatorMapPair.java"

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
        "Lrx/Observable<",
        "+TR;>;TT;>;"
    }
.end annotation


# instance fields
.field final collectionSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TU;>;>;"
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
.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TU;>;>;",
            "Lrx/functions/Func2<",
            "-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorMapPair;, "Lrx/internal/operators/OperatorMapPair<TT;TU;TR;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/OperatorMapPair;->collectionSelector:Lrx/functions/Func1;

    .line 60
    iput-object p2, p0, Lrx/internal/operators/OperatorMapPair;->resultSelector:Lrx/functions/Func2;

    .line 61
    return-void
.end method

.method public static convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lrx/functions/Func1<",
            "TT;",
            "Lrx/Observable<",
            "TU;>;>;"
        }
    .end annotation

    .line 47
    .local p0, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapPair$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorMapPair$1;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorMapPair;, "Lrx/internal/operators/OperatorMapPair<TT;TU;TR;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMapPair;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "+TR;>;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorMapPair;, "Lrx/internal/operators/OperatorMapPair<TT;TU;TR;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<+TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapPair$2;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorMapPair$2;-><init>(Lrx/internal/operators/OperatorMapPair;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorMapPair.AnonymousClass1 (rx.internal.operators.OperatorMapPair$1)
.class final Lrx/internal/operators/OperatorMapPair$1;
.super Ljava/lang/Object;
.source "OperatorMapPair.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMapPair;->convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;",
        "Lrx/Observable<",
        "TU;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$selector:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func1;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lrx/internal/operators/OperatorMapPair$1;->val$selector:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 47
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMapPair$1;->call(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable<",
            "TU;>;"
        }
    .end annotation

    .line 50
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$1;->val$selector:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OperatorMapPair.AnonymousClass2 (rx.internal.operators.OperatorMapPair$2)
.class Lrx/internal/operators/OperatorMapPair$2;
.super Lrx/Subscriber;
.source "OperatorMapPair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMapPair;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorMapPair;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMapPair;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2;, "Lrx/internal/operators/OperatorMapPair.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMapPair$2;->this$0:Lrx/internal/operators/OperatorMapPair;

    iput-object p3, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2;, "Lrx/internal/operators/OperatorMapPair.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2;, "Lrx/internal/operators/OperatorMapPair.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2;, "Lrx/internal/operators/OperatorMapPair.2;"
    .local p1, "outer":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapPair$2;->this$0:Lrx/internal/operators/OperatorMapPair;

    iget-object v1, v1, Lrx/internal/operators/OperatorMapPair;->collectionSelector:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    new-instance v2, Lrx/internal/operators/OperatorMapPair$2$1;

    invoke-direct {v2, p0, p1}, Lrx/internal/operators/OperatorMapPair$2$1;-><init>(Lrx/internal/operators/OperatorMapPair$2;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 89
    goto :goto_23

    .line 87
    :catch_19
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapPair$2;->val$o:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 90
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_23
    return-void
.end method

###### Class rx.internal.operators.OperatorMapPair.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorMapPair$2$1)
.class Lrx/internal/operators/OperatorMapPair$2$1;
.super Ljava/lang/Object;
.source "OperatorMapPair.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMapPair$2;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TU;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorMapPair$2;

.field final synthetic val$outer:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMapPair$2;Ljava/lang/Object;)V
    .registers 3

    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2$1;, "Lrx/internal/operators/OperatorMapPair$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMapPair$2$1;->this$1:Lrx/internal/operators/OperatorMapPair$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorMapPair$2$1;->val$outer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TR;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2$1;, "Lrx/internal/operators/OperatorMapPair$2.1;"
    .local p1, "inner":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$2$1;->this$1:Lrx/internal/operators/OperatorMapPair$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorMapPair$2;->this$0:Lrx/internal/operators/OperatorMapPair;

    iget-object v0, v0, Lrx/internal/operators/OperatorMapPair;->resultSelector:Lrx/functions/Func2;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapPair$2$1;->val$outer:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
