###### Class rx.internal.operators.OperatorTimestamp (rx.internal.operators.OperatorTimestamp)
.class public final Lrx/internal/operators/OperatorTimestamp;
.super Ljava/lang/Object;
.source "OperatorTimestamp.java"

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
        "Lrx/schedulers/Timestamped<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;)V
    .registers 2
    .param p1, "scheduler"    # Lrx/Scheduler;

    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp;, "Lrx/internal/operators/OperatorTimestamp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OperatorTimestamp;->scheduler:Lrx/Scheduler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorTimestamp;)Lrx/Scheduler;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorTimestamp;

    .line 28
    iget-object v0, p0, Lrx/internal/operators/OperatorTimestamp;->scheduler:Lrx/Scheduler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp;, "Lrx/internal/operators/OperatorTimestamp<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorTimestamp;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "Lrx/schedulers/Timestamped<",
            "TT;>;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp;, "Lrx/internal/operators/OperatorTimestamp<TT;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/schedulers/Timestamped<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimestamp$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorTimestamp$1;-><init>(Lrx/internal/operators/OperatorTimestamp;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorTimestamp.AnonymousClass1 (rx.internal.operators.OperatorTimestamp$1)
.class Lrx/internal/operators/OperatorTimestamp$1;
.super Lrx/Subscriber;
.source "OperatorTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimestamp;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorTimestamp;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimestamp;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp$1;, "Lrx/internal/operators/OperatorTimestamp.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimestamp$1;->this$0:Lrx/internal/operators/OperatorTimestamp;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimestamp$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp$1;, "Lrx/internal/operators/OperatorTimestamp.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimestamp$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 46
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp$1;, "Lrx/internal/operators/OperatorTimestamp.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimestamp$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorTimestamp$1;, "Lrx/internal/operators/OperatorTimestamp.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimestamp$1;->val$o:Lrx/Subscriber;

    new-instance v1, Lrx/schedulers/Timestamped;

    iget-object v2, p0, Lrx/internal/operators/OperatorTimestamp$1;->this$0:Lrx/internal/operators/OperatorTimestamp;

    invoke-static {v2}, Lrx/internal/operators/OperatorTimestamp;->access$000(Lrx/internal/operators/OperatorTimestamp;)Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Scheduler;->now()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lrx/schedulers/Timestamped;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
