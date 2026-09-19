###### Class rx.internal.operators.OperatorOnBackpressureLatest (rx.internal.operators.OperatorOnBackpressureLatest)
.class public final Lrx/internal/operators/OperatorOnBackpressureLatest;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureLatest.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;,
        Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;,
        Lrx/internal/operators/OperatorOnBackpressureLatest$Holder;
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest;, "Lrx/internal/operators/OperatorOnBackpressureLatest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorOnBackpressureLatest;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorOnBackpressureLatest<",
            "TT;>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lrx/internal/operators/OperatorOnBackpressureLatest$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureLatest;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest;, "Lrx/internal/operators/OperatorOnBackpressureLatest<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorOnBackpressureLatest;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest;, "Lrx/internal/operators/OperatorOnBackpressureLatest<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;-><init>(Lrx/Subscriber;)V

    .line 45
    .local v0, "producer":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;-><init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;Lrx/internal/operators/OperatorOnBackpressureLatest$1;)V

    .line 46
    .local v1, "parent":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iput-object v1, v0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->parent:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;

    .line 47
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 48
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 49
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 50
    return-object v1
.end method

###### Class rx.internal.operators.OperatorOnBackpressureLatest.AnonymousClass1 (rx.internal.operators.OperatorOnBackpressureLatest$1)
.class synthetic Lrx/internal/operators/OperatorOnBackpressureLatest$1;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class rx.internal.operators.OperatorOnBackpressureLatest.Holder (rx.internal.operators.OperatorOnBackpressureLatest$Holder)
.class final Lrx/internal/operators/OperatorOnBackpressureLatest$Holder;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorOnBackpressureLatest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureLatest;

    invoke-direct {v0}, Lrx/internal/operators/OperatorOnBackpressureLatest;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorOnBackpressureLatest$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureLatest;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class rx.internal.operators.OperatorOnBackpressureLatest.LatestEmitter (rx.internal.operators.OperatorOnBackpressureLatest$LatestEmitter)
.class final Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorOnBackpressureLatest.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;

.field static final NOT_REQUESTED:J = -0x4000000000000000L

.field private static final serialVersionUID:J = -0x12ef4cd3e08498a2L


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field missed:Z

.field parent:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field terminal:Ljava/lang/Throwable;

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 72
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->lazySet(J)V

    .line 75
    return-void
.end method


# virtual methods
.method emit()V
    .registers 9

    .line 143
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    monitor-enter p0

    .line 144
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 145
    iput-boolean v1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 146
    monitor-exit p0

    return-void

    .line 148
    :cond_a
    iput-boolean v1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 150
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_80

    .line 151
    const/4 v1, 0x0

    .line 154
    .local v1, "skipFinal":Z
    :goto_11
    :try_start_11
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v2

    .line 155
    .local v2, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1d

    .line 156
    const/4 v1, 0x1

    .line 157
    goto :goto_62

    .line 159
    :cond_1d
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 160
    .local v4, "v":Ljava/lang/Object;
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_42

    sget-object v5, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    if-eq v4, v5, :cond_42

    .line 162
    move-object v5, v4

    .line 163
    .local v5, "v2":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 164
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->produced(J)J

    .line 166
    sget-object v6, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    move-object v4, v6

    .line 168
    .end local v5    # "v2":Ljava/lang/Object;, "TT;"
    :cond_42
    sget-object v5, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    if-ne v4, v5, :cond_59

    iget-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    if-eqz v5, :cond_59

    .line 169
    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->terminal:Ljava/lang/Throwable;

    .line 170
    .local v5, "e":Ljava/lang/Throwable;
    if-eqz v5, :cond_54

    .line 171
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_59

    .line 173
    :cond_54
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V

    .line 176
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_59
    :goto_59
    monitor-enter p0
    :try_end_5a
    .catchall {:try_start_11 .. :try_end_5a} :catchall_74

    .line 177
    :try_start_5a
    iget-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    if-nez v5, :cond_6d

    .line 178
    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 179
    const/4 v1, 0x1

    .line 180
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_71

    .line 186
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :goto_62
    if-nez v1, :cond_6c

    .line 187
    monitor-enter p0

    .line 188
    :try_start_65
    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 189
    monitor-exit p0

    goto :goto_6c

    :catchall_69
    move-exception v0

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_69

    throw v0

    .line 192
    :cond_6c
    :goto_6c
    return-void

    .line 182
    .restart local v2    # "r":J
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_6d
    :try_start_6d
    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 183
    monitor-exit p0

    .line 184
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    goto :goto_11

    .line 183
    .restart local v2    # "r":J
    .restart local v4    # "v":Ljava/lang/Object;
    :catchall_71
    move-exception v5

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_71

    :try_start_73
    throw v5
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    .line 186
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :catchall_74
    move-exception v2

    if-nez v1, :cond_7f

    .line 187
    monitor-enter p0

    .line 188
    :try_start_78
    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 189
    monitor-exit p0

    goto :goto_7f

    :catchall_7c
    move-exception v0

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_7c

    throw v0

    :cond_7f
    :goto_7f
    throw v2

    .line 150
    .end local v1    # "skipFinal":Z
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0
.end method

.method public isUnsubscribed()Z
    .registers 6

    .line 117
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onCompleted()V
    .registers 2

    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    .line 140
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 141
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->terminal:Ljava/lang/Throwable;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    .line 135
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 136
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 130
    return-void
.end method

.method produced(J)J
    .registers 8
    .param p1, "n"    # J

    .line 105
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    .line 106
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    .line 107
    return-wide v0

    .line 109
    :cond_b
    const/4 v2, 0x0

    sub-long v2, v0, p1

    .line 110
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 111
    return-wide v2

    .line 113
    .end local v0    # "r":J
    .end local v2    # "u":J
    :cond_15
    goto :goto_0
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3e

    .line 80
    :goto_6
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v2

    .line 81
    .local v2, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_11

    .line 82
    return-void

    .line 85
    :cond_11
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    cmp-long v6, v2, v4

    if-nez v6, :cond_19

    .line 86
    move-wide v6, p1

    goto :goto_25

    .line 88
    :cond_19
    const/4 v6, 0x0

    add-long v6, v2, p1

    .line 89
    .local v6, "u":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_25

    .line 90
    const-wide v6, 0x7fffffffffffffffL

    .line 93
    :cond_25
    :goto_25
    invoke-virtual {p0, v2, v3, v6, v7}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->compareAndSet(JJ)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 94
    cmp-long v0, v2, v4

    if-nez v0, :cond_39

    .line 95
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->parent:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v0, v4, v5}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->requestMore(J)V

    .line 97
    :cond_39
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 98
    return-void

    .line 100
    .end local v2    # "r":J
    .end local v6    # "u":J
    :cond_3d
    goto :goto_6

    .line 102
    :cond_3e
    return-void
.end method

.method public unsubscribe()V
    .registers 6

    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f

    .line 122
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->getAndSet(J)J

    .line 124
    :cond_f
    return-void
.end method

###### Class rx.internal.operators.OperatorOnBackpressureLatest.LatestSubscriber (rx.internal.operators.OperatorOnBackpressureLatest$LatestSubscriber)
.class final Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 198
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;Lrx/internal/operators/OperatorOnBackpressureLatest$1;)V
    .registers 3
    .param p1, "x0"    # Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
    .param p2, "x1"    # Lrx/internal/operators/OperatorOnBackpressureLatest$1;

    .line 194
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;-><init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 219
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onCompleted()V

    .line 220
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 214
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onError(Ljava/lang/Throwable;)V

    .line 215
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 209
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onNext(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 204
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->request(J)V

    .line 205
    return-void
.end method

.method requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 222
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->request(J)V

    .line 223
    return-void
.end method
