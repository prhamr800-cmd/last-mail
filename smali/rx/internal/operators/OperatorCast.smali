###### Class rx.internal.operators.OperatorCast (rx.internal.operators.OperatorCast)
.class public Lrx/internal/operators/OperatorCast;
.super Ljava/lang/Object;
.source "OperatorCast.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;TT;>;"
    }
.end annotation


# instance fields
.field private final castClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TR;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorCast;, "Lrx/internal/operators/OperatorCast<TT;TR;>;"
    .local p1, "castClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lrx/internal/operators/OperatorCast;->castClass:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorCast;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorCast;

    .line 25
    iget-object v0, p0, Lrx/internal/operators/OperatorCast;->castClass:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 25
    .local p0, "this":Lrx/internal/operators/OperatorCast;, "Lrx/internal/operators/OperatorCast<TT;TR;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorCast;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorCast;, "Lrx/internal/operators/OperatorCast<TT;TR;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorCast$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorCast$1;-><init>(Lrx/internal/operators/OperatorCast;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorCast.AnonymousClass1 (rx.internal.operators.OperatorCast$1)
.class Lrx/internal/operators/OperatorCast$1;
.super Lrx/Subscriber;
.source "OperatorCast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorCast;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorCast;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorCast;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorCast$1;, "Lrx/internal/operators/OperatorCast.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorCast$1;->this$0:Lrx/internal/operators/OperatorCast;

    iput-object p3, p0, Lrx/internal/operators/OperatorCast$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorCast$1;, "Lrx/internal/operators/OperatorCast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorCast$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 40
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorCast$1;, "Lrx/internal/operators/OperatorCast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorCast$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorCast$1;, "Lrx/internal/operators/OperatorCast.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorCast$1;->val$o:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorCast$1;->this$0:Lrx/internal/operators/OperatorCast;

    invoke-static {v1}, Lrx/internal/operators/OperatorCast;->access$000(Lrx/internal/operators/OperatorCast;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 53
    goto :goto_18

    .line 51
    :catch_10
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorCast$1;->onError(Ljava/lang/Throwable;)V

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_18
    return-void
.end method
