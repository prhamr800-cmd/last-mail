###### Class rx.internal.operators.OperatorUnsubscribeOn (rx.internal.operators.OperatorUnsubscribeOn)
.class public Lrx/internal/operators/OperatorUnsubscribeOn;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

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
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;)V
    .registers 2
    .param p1, "scheduler"    # Lrx/Scheduler;

    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn;, "Lrx/internal/operators/OperatorUnsubscribeOn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OperatorUnsubscribeOn;->scheduler:Lrx/Scheduler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorUnsubscribeOn;)Lrx/Scheduler;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorUnsubscribeOn;

    .line 28
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn;->scheduler:Lrx/Scheduler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn;, "Lrx/internal/operators/OperatorUnsubscribeOn<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorUnsubscribeOn;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "-TT;>;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn;, "Lrx/internal/operators/OperatorUnsubscribeOn<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorUnsubscribeOn$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorUnsubscribeOn$1;-><init>(Lrx/internal/operators/OperatorUnsubscribeOn;Lrx/Subscriber;)V

    .line 57
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorUnsubscribeOn$2;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorUnsubscribeOn$2;-><init>(Lrx/internal/operators/OperatorUnsubscribeOn;Lrx/Subscriber;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 74
    return-object v0
.end method

###### Class rx.internal.operators.OperatorUnsubscribeOn.AnonymousClass1 (rx.internal.operators.OperatorUnsubscribeOn$1)
.class Lrx/internal/operators/OperatorUnsubscribeOn$1;
.super Lrx/Subscriber;
.source "OperatorUnsubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorUnsubscribeOn;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorUnsubscribeOn;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorUnsubscribeOn;Lrx/Subscriber;)V
    .registers 3

    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$1;, "Lrx/internal/operators/OperatorUnsubscribeOn.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorUnsubscribeOn$1;->this$0:Lrx/internal/operators/OperatorUnsubscribeOn;

    iput-object p2, p0, Lrx/internal/operators/OperatorUnsubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$1;, "Lrx/internal/operators/OperatorUnsubscribeOn.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$1;, "Lrx/internal/operators/OperatorUnsubscribeOn.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$1;, "Lrx/internal/operators/OperatorUnsubscribeOn.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

###### Class rx.internal.operators.OperatorUnsubscribeOn.AnonymousClass2 (rx.internal.operators.OperatorUnsubscribeOn$2)
.class Lrx/internal/operators/OperatorUnsubscribeOn$2;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorUnsubscribeOn;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorUnsubscribeOn;

.field final synthetic val$parent:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorUnsubscribeOn;Lrx/Subscriber;)V
    .registers 3

    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$2;, "Lrx/internal/operators/OperatorUnsubscribeOn.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2;->this$0:Lrx/internal/operators/OperatorUnsubscribeOn;

    iput-object p2, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2;->val$parent:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$2;, "Lrx/internal/operators/OperatorUnsubscribeOn.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2;->this$0:Lrx/internal/operators/OperatorUnsubscribeOn;

    invoke-static {v0}, Lrx/internal/operators/OperatorUnsubscribeOn;->access$000(Lrx/internal/operators/OperatorUnsubscribeOn;)Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 62
    .local v0, "inner":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;-><init>(Lrx/internal/operators/OperatorUnsubscribeOn$2;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 70
    return-void
.end method

###### Class rx.internal.operators.OperatorUnsubscribeOn.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorUnsubscribeOn$2$1)
.class Lrx/internal/operators/OperatorUnsubscribeOn$2$1;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorUnsubscribeOn$2;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorUnsubscribeOn$2;

.field final synthetic val$inner:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorUnsubscribeOn$2;Lrx/Scheduler$Worker;)V
    .registers 3

    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$2$1;, "Lrx/internal/operators/OperatorUnsubscribeOn$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;->this$1:Lrx/internal/operators/OperatorUnsubscribeOn$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$2$1;, "Lrx/internal/operators/OperatorUnsubscribeOn$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;->this$1:Lrx/internal/operators/OperatorUnsubscribeOn$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorUnsubscribeOn$2;->val$parent:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 67
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 68
    return-void
.end method
