###### Class rx.internal.operators.OperatorSkip (rx.internal.operators.OperatorSkip)
.class public final Lrx/internal/operators/OperatorSkip;
.super Ljava/lang/Object;
.source "OperatorSkip.java"

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
.field final toSkip:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "n"    # I

    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorSkip;, "Lrx/internal/operators/OperatorSkip<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lrx/internal/operators/OperatorSkip;->toSkip:I

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorSkip;, "Lrx/internal/operators/OperatorSkip<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSkip;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSkip;, "Lrx/internal/operators/OperatorSkip<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkip$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorSkip$1;-><init>(Lrx/internal/operators/OperatorSkip;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorSkip.AnonymousClass1 (rx.internal.operators.OperatorSkip$1)
.class Lrx/internal/operators/OperatorSkip$1;
.super Lrx/Subscriber;
.source "OperatorSkip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkip;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field skipped:I

.field final synthetic this$0:Lrx/internal/operators/OperatorSkip;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkip;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkip$1;->this$0:Lrx/internal/operators/OperatorSkip;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 45
    const/4 p1, 0x0

    iput p1, p0, Lrx/internal/operators/OperatorSkip$1;->skipped:I

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 50
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorSkip$1;->skipped:I

    iget-object v1, p0, Lrx/internal/operators/OperatorSkip$1;->this$0:Lrx/internal/operators/OperatorSkip;

    iget v1, v1, Lrx/internal/operators/OperatorSkip;->toSkip:I

    if-lt v0, v1, :cond_e

    .line 60
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_14

    .line 62
    :cond_e
    iget v0, p0, Lrx/internal/operators/OperatorSkip$1;->skipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorSkip$1;->skipped:I

    .line 64
    :goto_14
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorSkip$1;, "Lrx/internal/operators/OperatorSkip.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorSkip$1;->this$0:Lrx/internal/operators/OperatorSkip;

    iget v0, v0, Lrx/internal/operators/OperatorSkip;->toSkip:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 70
    return-void
.end method
