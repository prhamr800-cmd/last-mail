###### Class rx.internal.operators.OperatorSubscribeOn (rx.internal.operators.OperatorSubscribeOn)
.class public Lrx/internal/operators/OperatorSubscribeOn;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

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
        "TT;",
        "Lrx/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;)V
    .registers 2
    .param p1, "scheduler"    # Lrx/Scheduler;

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn;->scheduler:Lrx/Scheduler;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSubscribeOn;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 42
    .local v0, "inner":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 43
    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1;

    invoke-direct {v1, p0, p1, p1, v0}, Lrx/internal/operators/OperatorSubscribeOn$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn;Lrx/Subscriber;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    return-object v1
.end method

###### Class rx.internal.operators.OperatorSubscribeOn.AnonymousClass1 (rx.internal.operators.OperatorSubscribeOn$1)
.class Lrx/internal/operators/OperatorSubscribeOn$1;
.super Lrx/Subscriber;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lrx/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSubscribeOn;

.field final synthetic val$inner:Lrx/Scheduler$Worker;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn;Lrx/Subscriber;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 5

    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->this$0:Lrx/internal/operators/OperatorSubscribeOn;

    iput-object p3, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    move-object v0, p1

    check-cast v0, Lrx/Observable;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSubscribeOn$1;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorSubscribeOn$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1;Lrx/Observable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 106
    return-void
.end method

###### Class rx.internal.operators.OperatorSubscribeOn.AnonymousClass1.C00461 (rx.internal.operators.OperatorSubscribeOn$1$1)
.class Lrx/internal/operators/OperatorSubscribeOn$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1;->onNext(Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

.field final synthetic val$o:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1;Lrx/Observable;)V
    .registers 3

    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->val$o:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 62
    .local v0, "t":Ljava/lang/Thread;
    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->val$o:Lrx/Observable;

    new-instance v2, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iget-object v3, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v3, v3, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {v2, p0, v3, v0}, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1$1;Lrx/Subscriber;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 104
    return-void
.end method

###### Class rx.internal.operators.OperatorSubscribeOn.AnonymousClass1.C00461.C00471 (rx.internal.operators.OperatorSubscribeOn$1$1$1)
.class Lrx/internal/operators/OperatorSubscribeOn$1$1$1;
.super Lrx/Subscriber;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1$1;->call()V
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
.field final synthetic this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

.field final synthetic val$t:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1$1;Lrx/Subscriber;Ljava/lang/Thread;)V
    .registers 4

    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iput-object p3, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->val$t:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 67
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1$1$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 101
    return-void
.end method

###### Class rx.internal.operators.OperatorSubscribeOn.AnonymousClass1.C00461.C00471.C00481 (rx.internal.operators.OperatorSubscribeOn$1$1$1$1)
.class Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1$1$1;Lrx/Producer;)V
    .registers 3

    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 5
    .param p1, "n"    # J

    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1.1;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iget-object v1, v1, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->val$t:Ljava/lang/Thread;

    if-ne v0, v1, :cond_10

    .line 88
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    goto :goto_20

    .line 90
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;J)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 98
    :goto_20
    return-void
.end method

###### Class rx.internal.operators.OperatorSubscribeOn.AnonymousClass1.C00461.C00471.C00481.C00491 (rx.internal.operators.OperatorSubscribeOn$1$1$1$1$1)
.class Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->request(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;

.field final synthetic val$n:J


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;J)V
    .registers 4

    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;->this$4:Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;

    iput-wide p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;->val$n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;->this$4:Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->val$producer:Lrx/Producer;

    iget-wide v1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;->val$n:J

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    .line 95
    return-void
.end method
