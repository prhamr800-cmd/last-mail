###### Class rx.internal.operators.OperatorDefaultIfEmpty (rx.internal.operators.OperatorDefaultIfEmpty)
.class public Lrx/internal/operators/OperatorDefaultIfEmpty;
.super Ljava/lang/Object;
.source "OperatorDefaultIfEmpty.java"

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
.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorDefaultIfEmpty;, "Lrx/internal/operators/OperatorDefaultIfEmpty<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lrx/internal/operators/OperatorDefaultIfEmpty;->defaultValue:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 26
    .local p0, "this":Lrx/internal/operators/OperatorDefaultIfEmpty;, "Lrx/internal/operators/OperatorDefaultIfEmpty<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDefaultIfEmpty;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorDefaultIfEmpty;, "Lrx/internal/operators/OperatorDefaultIfEmpty<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDefaultIfEmpty$1;-><init>(Lrx/internal/operators/OperatorDefaultIfEmpty;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorDefaultIfEmpty.AnonymousClass1 (rx.internal.operators.OperatorDefaultIfEmpty$1)
.class Lrx/internal/operators/OperatorDefaultIfEmpty$1;
.super Lrx/Subscriber;
.source "OperatorDefaultIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDefaultIfEmpty;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field hasValue:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDefaultIfEmpty;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDefaultIfEmpty;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorDefaultIfEmpty$1;, "Lrx/internal/operators/OperatorDefaultIfEmpty.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->this$0:Lrx/internal/operators/OperatorDefaultIfEmpty;

    iput-object p3, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorDefaultIfEmpty$1;, "Lrx/internal/operators/OperatorDefaultIfEmpty.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->hasValue:Z

    if-nez v0, :cond_15

    .line 52
    :try_start_4
    iget-object v0, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->val$child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->this$0:Lrx/internal/operators/OperatorDefaultIfEmpty;

    iget-object v1, v1, Lrx/internal/operators/OperatorDefaultIfEmpty;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 56
    goto :goto_15

    .line 53
    :catch_e
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 55
    return-void

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    :goto_15
    iget-object v0, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 59
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorDefaultIfEmpty$1;, "Lrx/internal/operators/OperatorDefaultIfEmpty.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorDefaultIfEmpty$1;, "Lrx/internal/operators/OperatorDefaultIfEmpty.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->hasValue:Z

    .line 40
    iget-object v0, p0, Lrx/internal/operators/OperatorDefaultIfEmpty$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 41
    return-void
.end method
