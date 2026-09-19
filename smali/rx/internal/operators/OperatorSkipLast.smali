###### Class rx.internal.operators.OperatorSkipLast (rx.internal.operators.OperatorSkipLast)
.class public Lrx/internal/operators/OperatorSkipLast;
.super Ljava/lang/Object;
.source "OperatorSkipLast.java"

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
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "count"    # I

    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast;, "Lrx/internal/operators/OperatorSkipLast<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-ltz p1, :cond_8

    .line 35
    iput p1, p0, Lrx/internal/operators/OperatorSkipLast;->count:I

    .line 36
    return-void

    .line 33
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorSkipLast;)I
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorSkipLast;

    .line 27
    iget v0, p0, Lrx/internal/operators/OperatorSkipLast;->count:I

    return v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast;, "Lrx/internal/operators/OperatorSkipLast<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSkipLast;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast;, "Lrx/internal/operators/OperatorSkipLast<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipLast$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorSkipLast$1;-><init>(Lrx/internal/operators/OperatorSkipLast;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorSkipLast.AnonymousClass1 (rx.internal.operators.OperatorSkipLast$1)
.class Lrx/internal/operators/OperatorSkipLast$1;
.super Lrx/Subscriber;
.source "OperatorSkipLast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipLast;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorSkipLast;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipLast;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast$1;, "Lrx/internal/operators/OperatorSkipLast.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipLast$1;->this$0:Lrx/internal/operators/OperatorSkipLast;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 42
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorSkipLast$1;->on:Lrx/internal/operators/NotificationLite;

    .line 47
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorSkipLast$1;->deque:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast$1;, "Lrx/internal/operators/OperatorSkipLast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 52
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast$1;, "Lrx/internal/operators/OperatorSkipLast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast$1;, "Lrx/internal/operators/OperatorSkipLast.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->this$0:Lrx/internal/operators/OperatorSkipLast;

    invoke-static {v0}, Lrx/internal/operators/OperatorSkipLast;->access$000(Lrx/internal/operators/OperatorSkipLast;)I

    move-result v0

    if-nez v0, :cond_e

    .line 65
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 66
    return-void

    .line 68
    :cond_e
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSkipLast$1;->this$0:Lrx/internal/operators/OperatorSkipLast;

    invoke-static {v1}, Lrx/internal/operators/OperatorSkipLast;->access$000(Lrx/internal/operators/OperatorSkipLast;)I

    move-result v1

    if-ne v0, v1, :cond_2e

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorSkipLast$1;->on:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/internal/operators/OperatorSkipLast$1;->deque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_33

    .line 71
    :cond_2e
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSkipLast$1;->request(J)V

    .line 73
    :goto_33
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->deque:Ljava/util/Deque;

    iget-object v1, p0, Lrx/internal/operators/OperatorSkipLast$1;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method
