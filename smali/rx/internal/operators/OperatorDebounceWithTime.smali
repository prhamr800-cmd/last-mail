###### Class rx.internal.operators.OperatorDebounceWithTime (rx.internal.operators.OperatorDebounceWithTime)
.class public final Lrx/internal/operators/OperatorDebounceWithTime;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
    }
.end annotation

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
.field final scheduler:Lrx/Scheduler;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lrx/internal/operators/OperatorDebounceWithTime;->timeout:J

    .line 49
    iput-object p3, p0, Lrx/internal/operators/OperatorDebounceWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 50
    iput-object p4, p0, Lrx/internal/operators/OperatorDebounceWithTime;->scheduler:Lrx/Scheduler;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDebounceWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 56
    .local v0, "worker":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    move-object v7, v1

    .line 57
    .local v7, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v1, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lrx/subscriptions/SerialSubscription;-><init>()V

    move-object v8, v1

    .line 59
    .local v8, "ssub":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {v7, v0}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 60
    invoke-virtual {v7, v8}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 62
    new-instance v9, Lrx/internal/operators/OperatorDebounceWithTime$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/OperatorDebounceWithTime$1;-><init>(Lrx/internal/operators/OperatorDebounceWithTime;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/Scheduler$Worker;Lrx/observers/SerializedSubscriber;)V

    return-object v9
.end method

###### Class rx.internal.operators.OperatorDebounceWithTime.AnonymousClass1 (rx.internal.operators.OperatorDebounceWithTime$1)
.class Lrx/internal/operators/OperatorDebounceWithTime$1;
.super Lrx/Subscriber;
.source "OperatorDebounceWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDebounceWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final self:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "*>;"
        }
    .end annotation
.end field

.field final state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorDebounceWithTime;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;

.field final synthetic val$ssub:Lrx/subscriptions/SerialSubscription;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDebounceWithTime;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/Scheduler$Worker;Lrx/observers/SerializedSubscriber;)V
    .registers 6

    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->this$0:Lrx/internal/operators/OperatorDebounceWithTime;

    iput-object p3, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    iput-object p4, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$worker:Lrx/Scheduler$Worker;

    iput-object p5, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 63
    new-instance p1, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-direct {p1}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    .line 64
    iput-object p0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->self:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitAndComplete(Lrx/Subscriber;Lrx/Subscriber;)V

    .line 93
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDebounceWithTime$1;->unsubscribe()V

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->clear()V

    .line 88
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->next(Ljava/lang/Object;)I

    move-result v0

    .line 75
    .local v0, "index":I
    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$ssub:Lrx/subscriptions/SerialSubscription;

    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v3, Lrx/internal/operators/OperatorDebounceWithTime$1$1;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/OperatorDebounceWithTime$1$1;-><init>(Lrx/internal/operators/OperatorDebounceWithTime$1;I)V

    iget-object v4, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->this$0:Lrx/internal/operators/OperatorDebounceWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorDebounceWithTime;->timeout:J

    iget-object v6, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->this$0:Lrx/internal/operators/OperatorDebounceWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorDebounceWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 81
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorDebounceWithTime$1;->request(J)V

    .line 69
    return-void
.end method

###### Class rx.internal.operators.OperatorDebounceWithTime.AnonymousClass1.C00361 (rx.internal.operators.OperatorDebounceWithTime$1$1)
.class Lrx/internal/operators/OperatorDebounceWithTime$1$1;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDebounceWithTime$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDebounceWithTime$1;I)V
    .registers 3

    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1$1;, "Lrx/internal/operators/OperatorDebounceWithTime$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

    iput p2, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1$1;, "Lrx/internal/operators/OperatorDebounceWithTime$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->val$index:I

    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

    iget-object v2, v2, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

    iget-object v3, v3, Lrx/internal/operators/OperatorDebounceWithTime$1;->self:Lrx/Subscriber;

    invoke-virtual {v0, v1, v2, v3}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emit(ILrx/Subscriber;Lrx/Subscriber;)V

    .line 79
    return-void
.end method

###### Class rx.internal.operators.OperatorDebounceWithTime.DebounceState (rx.internal.operators.OperatorDebounceWithTime$DebounceState)
.class final Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDebounceWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field emitting:Z

.field hasValue:Z

.field index:I

.field terminate:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    monitor-enter p0

    .line 176
    :try_start_1
    iget v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 179
    monitor-exit p0

    return-void

    .line 175
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public emit(ILrx/Subscriber;Lrx/Subscriber;)V
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Subscriber<",
            "TT;>;",
            "Lrx/Subscriber<",
            "*>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p2, "onNextAndComplete":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p3, "onError":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    monitor-enter p0

    .line 120
    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    if-nez v1, :cond_39

    iget-boolean v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    if-eqz v1, :cond_39

    iget v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    if-eq p1, v1, :cond_f

    goto :goto_39

    .line 123
    :cond_f
    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_3b

    .line 125
    .local v1, "localValue":Ljava/lang/Object;, "TT;"
    :try_start_11
    iput-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 127
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 128
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_34

    .line 131
    :try_start_1a
    invoke-virtual {p2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_2f

    .line 135
    nop

    .line 138
    monitor-enter p0

    .line 139
    :try_start_1f
    iget-boolean v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->terminate:Z

    if-nez v2, :cond_27

    .line 140
    iput-boolean v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 141
    monitor-exit p0

    return-void

    .line 143
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2c

    .line 145
    invoke-virtual {p2}, Lrx/Subscriber;->onCompleted()V

    .line 146
    return-void

    .line 143
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    .line 132
    :catch_2f
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 134
    return-void

    .line 128
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_34
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3c

    .line 121
    .end local v1    # "localValue":Ljava/lang/Object;, "TT;"
    :cond_39
    :goto_39
    :try_start_39
    monitor-exit p0

    return-void

    .line 128
    :catchall_3b
    move-exception v1

    .local v0, "localValue":Ljava/lang/Object;, "TT;"
    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public emitAndComplete(Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "TT;>;",
            "Lrx/Subscriber<",
            "*>;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p1, "onNextAndComplete":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p2, "onError":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    monitor-enter p0

    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-boolean v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    .line 153
    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->terminate:Z

    .line 154
    monitor-exit p0

    return-void

    .line 156
    :cond_c
    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_29

    .line 157
    .local v2, "localValue":Ljava/lang/Object;, "TT;"
    :try_start_e
    iget-boolean v4, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_2f

    .line 159
    .local v4, "localHasValue":Z
    :try_start_10
    iput-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 160
    iput-boolean v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 162
    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 163
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_26

    .line 165
    if-eqz v4, :cond_22

    .line 167
    :try_start_19
    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 171
    goto :goto_22

    .line 168
    :catch_1d
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 170
    return-void

    .line 173
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22
    :goto_22
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 174
    return-void

    .line 163
    :catchall_26
    move-exception v0

    move v1, v4

    goto :goto_2d

    .end local v2    # "localValue":Ljava/lang/Object;, "TT;"
    .end local v4    # "localHasValue":Z
    :catchall_29
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .local v1, "localHasValue":Z
    .restart local v2    # "localValue":Ljava/lang/Object;, "TT;"
    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2f

    throw v0

    :catchall_2f
    move-exception v0

    goto :goto_2d
.end method

.method public declared-synchronized next(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 113
    :try_start_1
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 115
    iget v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v1

    .line 112
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
