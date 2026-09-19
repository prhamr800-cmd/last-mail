###### Class rx.internal.operators.OperatorMergeMaxConcurrent (rx.internal.operators.OperatorMergeMaxConcurrent)
.class public final Lrx/internal/operators/OperatorMergeMaxConcurrent;
.super Ljava/lang/Object;
.source "OperatorMergeMaxConcurrent.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;,
        Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;",
        "Lrx/Observable<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final maxConcurrency:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "maxConcurrency"    # I

    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent;, "Lrx/internal/operators/OperatorMergeMaxConcurrent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent;->maxConcurrency:I

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent;, "Lrx/internal/operators/OperatorMergeMaxConcurrent<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMergeMaxConcurrent;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent;, "Lrx/internal/operators/OperatorMergeMaxConcurrent<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 49
    .local v0, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 50
    .local v1, "csub":Lrx/subscriptions/CompositeSubscription;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 52
    new-instance v2, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    iget v3, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent;->maxConcurrency:I

    invoke-direct {v2, v3, v0, v1}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;-><init>(ILrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V

    .line 53
    .local v2, "ssub":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    new-instance v3, Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer;

    invoke-direct {v3, v2}, Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer;-><init>(Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;)V

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 55
    return-object v2
.end method

###### Class rx.internal.operators.OperatorMergeMaxConcurrent.MergeMaxConcurrentProducer (rx.internal.operators.OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer)
.class final Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer;
.super Ljava/lang/Object;
.source "OperatorMergeMaxConcurrent.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMergeMaxConcurrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeMaxConcurrentProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final ssub:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer<TT;>;"
    .local p1, "ssub":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer;->ssub:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    .line 62
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$MergeMaxConcurrentProducer;->ssub:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->downstreamRequest(J)V

    .line 66
    return-void
.end method

###### Class rx.internal.operators.OperatorMergeMaxConcurrent.SourceSubscriber (rx.internal.operators.OperatorMergeMaxConcurrent$SourceSubscriber)
.class final Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorMergeMaxConcurrent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMergeMaxConcurrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "Lrx/Observable<",
        "+TT;>;>;"
    }
.end annotation


# static fields
.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final SOURCE_INDEX:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field active:I

.field final csub:Lrx/subscriptions/CompositeSubscription;

.field emitting:Z

.field final guard:Ljava/lang/Object;

.field lastIndex:I

.field final maxConcurrency:I

.field missedEmitting:I

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field volatile requested:J

.field final s:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile sourceIndex:I

.field final subscribers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<",
            "TT;>.MergeItemSubscriber;>;"
        }
    .end annotation
.end field

.field volatile wip:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 77
    const-class v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    const-string v1, "wip"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 81
    const-class v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    const-string v1, "sourceIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->SOURCE_INDEX:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 101
    const-class v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    .registers 5
    .param p1, "maxConcurrency"    # I
    .param p3, "csub"    # Lrx/subscriptions/CompositeSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Subscriber<",
            "TT;>;",
            "Lrx/subscriptions/CompositeSubscription;",
            ")V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    .local p2, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 69
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 107
    iput p1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->maxConcurrency:I

    .line 108
    iput-object p2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->s:Lrx/Subscriber;

    .line 109
    iput-object p3, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->guard:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->queue:Ljava/util/Queue;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribers:Ljava/util/List;

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->wip:I

    .line 114
    return-void
.end method


# virtual methods
.method protected downstreamRequest(J)V
    .registers 11
    .param p1, "n"    # J

    .line 182
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    :goto_0
    iget-wide v6, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->requested:J

    .line 184
    .local v6, "r":J
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, v6, v0

    if-eqz v2, :cond_16

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    .line 185
    const-wide v0, 0x7fffffffffffffffL

    .line 190
    .local v4, "u":J
    :goto_14
    move-wide v4, v0

    goto :goto_29

    .line 187
    .end local v4    # "u":J
    :cond_16
    const/4 v0, 0x0

    add-long v0, v6, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_25

    .line 188
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_14

    .line 190
    :cond_25
    const/4 v0, 0x0

    add-long v0, v6, p1

    goto :goto_14

    .line 192
    .restart local v4    # "u":J
    :goto_29
    sget-object v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v2, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 193
    nop

    .line 196
    .end local v4    # "u":J
    .end local v6    # "r":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->drain()V

    .line 197
    return-void

    .line 195
    :cond_38
    goto :goto_0
.end method

.method protected drain()V
    .registers 25

    .line 200
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    move-object/from16 v1, p0

    monitor-enter p0

    .line 201
    :try_start_3
    iget-boolean v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->emitting:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 202
    iget v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->missedEmitting:I

    add-int/2addr v0, v2

    iput v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->missedEmitting:I

    .line 203
    monitor-exit p0

    return-void

    .line 205
    :cond_f
    iput-boolean v2, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->emitting:Z

    .line 206
    const/4 v0, 0x0

    iput v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->missedEmitting:I

    .line 207
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_12d

    .line 208
    iget-object v3, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribers:Ljava/util/List;

    .line 209
    .local v3, "subs":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;>;"
    iget-object v4, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->s:Lrx/Subscriber;

    .line 210
    .local v4, "child":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    .line 215
    .local v5, "active":[Ljava/lang/Object;
    :goto_1f
    iget-wide v6, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->requested:J

    move-wide v8, v6

    .local v8, "r":J
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-lez v12, :cond_10c

    .line 216
    iget v6, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->lastIndex:I

    .line 217
    .local v6, "idx":I
    monitor-enter v3

    .line 218
    :try_start_2b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    array-length v12, v5
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_105

    if-ne v7, v12, :cond_3d

    .line 219
    :try_start_32
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_38

    move-object v5, v7

    goto :goto_42

    .line 223
    :catchall_38
    move-exception v0

    move/from16 v22, v6

    goto/16 :goto_108

    .line 221
    :cond_3d
    :try_start_3d
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_105

    move-object v5, v7

    .line 223
    :goto_42
    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_ff

    .line 225
    const/4 v7, 0x0

    .line 226
    .local v7, "resumeIndex":I
    const/4 v12, 0x0

    .line 227
    .local v12, "j":I
    move-object v13, v5

    .local v13, "arr$":[Ljava/lang/Object;
    array-length v14, v13

    move v15, v12

    const/4 v12, 0x0

    .local v12, "i$":I
    .local v14, "len$":I
    .local v15, "j":I
    :goto_49
    if-ge v12, v14, :cond_5f

    aget-object v16, v13, v12

    .line 229
    .local v16, "o":Ljava/lang/Object;
    move-object/from16 v0, v16

    check-cast v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;

    .line 230
    .local v0, "e":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    iget v10, v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->index:I

    if-ne v10, v6, :cond_57

    .line 231
    move v7, v15

    .line 232
    goto :goto_5f

    .line 234
    :cond_57
    add-int/lit8 v15, v15, 0x1

    .line 227
    .end local v0    # "e":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    .end local v16    # "o":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    goto :goto_49

    .line 236
    .end local v12    # "i$":I
    .end local v13    # "arr$":[Ljava/lang/Object;
    .end local v14    # "len$":I
    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    .line 237
    .local v0, "sumConsumed":I
    move-wide v9, v8

    move v8, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v8, "sumConsumed":I
    .local v9, "r":J
    :goto_63
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    array-length v0, v5

    if-ge v11, v0, :cond_f0

    .line 238
    add-int v0, v11, v7

    array-length v12, v5

    rem-int v15, v0, v12

    .line 241
    aget-object v0, v5, v15

    move-object v12, v0

    check-cast v12, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;

    .line 242
    .local v12, "e":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    iget-object v13, v12, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->buffer:Lrx/internal/util/RxRingBuffer;

    .line 243
    .local v13, "b":Lrx/internal/util/RxRingBuffer;
    iget v0, v12, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->index:I

    iput v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->lastIndex:I

    .line 245
    iget-boolean v0, v12, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->once:Z

    if-nez v0, :cond_a4

    invoke-virtual {v13}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a4

    .line 246
    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    iget-object v14, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v14

    .line 249
    :try_start_87
    iget v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    sub-int/2addr v0, v2

    iput v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    .line 250
    monitor-exit v14
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_a1

    .line 251
    iget-object v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v12}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 253
    invoke-virtual {v12}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->release()V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribeNext()V

    .line 257
    sget-object v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 259
    nop

    .line 210
    move-object/from16 v23, v5

    goto :goto_fb

    .line 250
    :catchall_a1
    move-exception v0

    :try_start_a2
    monitor-exit v14
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v0

    .line 262
    :cond_a4
    const/4 v0, 0x0

    .line 264
    .local v0, "consumed":I
    :goto_a5
    const-wide/16 v17, 0x0

    cmp-long v14, v9, v17

    if-lez v14, :cond_c9

    invoke-virtual {v13}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v19, v14

    .local v19, "v":Ljava/lang/Object;
    if-eqz v14, :cond_c9

    .line 265
    iget-object v14, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    move-object/from16 v2, v19

    .end local v19    # "v":Ljava/lang/Object;
    .local v2, "v":Ljava/lang/Object;
    invoke-virtual {v14, v4, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v14

    if-eqz v14, :cond_c1

    .line 267
    return-void

    .line 269
    :cond_c1
    const-wide/16 v20, 0x1

    sub-long v9, v9, v20

    .line 270
    add-int/lit8 v0, v0, 0x1

    .line 262
    const/4 v2, 0x1

    goto :goto_a5

    .line 272
    .end local v2    # "v":Ljava/lang/Object;
    :cond_c9
    if-lez v0, :cond_dc

    .line 273
    add-int/2addr v8, v0

    .line 274
    sget-object v2, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-int v14, v0

    move-object/from16 v23, v5

    move/from16 v22, v6

    .end local v5    # "active":[Ljava/lang/Object;
    .end local v6    # "idx":I
    .local v22, "idx":I
    .local v23, "active":[Ljava/lang/Object;
    int-to-long v5, v14

    invoke-virtual {v2, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 275
    int-to-long v5, v0

    invoke-virtual {v12, v5, v6}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->requestMore(J)V

    goto :goto_e0

    .line 277
    .end local v22    # "idx":I
    .end local v23    # "active":[Ljava/lang/Object;
    .restart local v5    # "active":[Ljava/lang/Object;
    .restart local v6    # "idx":I
    :cond_dc
    move-object/from16 v23, v5

    move/from16 v22, v6

    .end local v5    # "active":[Ljava/lang/Object;
    .end local v6    # "idx":I
    .restart local v22    # "idx":I
    .restart local v23    # "active":[Ljava/lang/Object;
    :goto_e0
    const-wide/16 v5, 0x0

    cmp-long v2, v9, v5

    if-nez v2, :cond_e7

    .line 278
    goto :goto_f7

    .line 237
    .end local v0    # "consumed":I
    .end local v12    # "e":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    .end local v13    # "b":Lrx/internal/util/RxRingBuffer;
    :cond_e7
    add-int/lit8 v0, v11, 0x1

    move/from16 v6, v22

    move-object/from16 v5, v23

    const/4 v2, 0x1

    goto/16 :goto_63

    .line 281
    .end local v11    # "i":I
    .end local v22    # "idx":I
    .end local v23    # "active":[Ljava/lang/Object;
    .restart local v5    # "active":[Ljava/lang/Object;
    .restart local v6    # "idx":I
    :cond_f0
    move-object/from16 v23, v5

    move/from16 v22, v6

    .end local v5    # "active":[Ljava/lang/Object;
    .end local v6    # "idx":I
    .restart local v22    # "idx":I
    .restart local v23    # "active":[Ljava/lang/Object;
    if-nez v8, :cond_fa

    .line 282
    nop

    .line 286
    .end local v7    # "resumeIndex":I
    .end local v8    # "sumConsumed":I
    .end local v15    # "j":I
    .end local v22    # "idx":I
    .end local v23    # "active":[Ljava/lang/Object;
    .restart local v5    # "active":[Ljava/lang/Object;
    :goto_f7
    move-object/from16 v5, v23

    goto :goto_10d

    .line 284
    .end local v5    # "active":[Ljava/lang/Object;
    .restart local v23    # "active":[Ljava/lang/Object;
    :cond_fa
    nop

    .line 210
    .end local v9    # "r":J
    :goto_fb
    move-object/from16 v5, v23

    const/4 v0, 0x0

    goto :goto_127

    .line 223
    .end local v23    # "active":[Ljava/lang/Object;
    .restart local v5    # "active":[Ljava/lang/Object;
    .restart local v6    # "idx":I
    .local v8, "r":J
    :catchall_ff
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v22, v6

    .end local v5    # "active":[Ljava/lang/Object;
    .end local v6    # "idx":I
    .restart local v22    # "idx":I
    .restart local v23    # "active":[Ljava/lang/Object;
    goto :goto_108

    .end local v22    # "idx":I
    .end local v23    # "active":[Ljava/lang/Object;
    .restart local v5    # "active":[Ljava/lang/Object;
    .restart local v6    # "idx":I
    :catchall_105
    move-exception v0

    move/from16 v22, v6

    .end local v6    # "idx":I
    .restart local v22    # "idx":I
    :goto_108
    :try_start_108
    monitor-exit v3
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_10a

    throw v0

    :catchall_10a
    move-exception v0

    goto :goto_108

    .line 286
    .end local v22    # "idx":I
    :cond_10c
    move-wide v9, v8

    .end local v8    # "r":J
    .restart local v9    # "r":J
    :goto_10d
    array-length v0, v5

    if-nez v0, :cond_118

    .line 287
    iget v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->wip:I

    if-nez v0, :cond_118

    .line 288
    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    .line 289
    return-void

    .line 292
    :cond_118
    monitor-enter p0

    .line 293
    :try_start_119
    iget v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->missedEmitting:I

    if-nez v0, :cond_122

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->emitting:Z

    .line 295
    monitor-exit p0

    .line 300
    .end local v9    # "r":J
    return-void

    .line 297
    .restart local v9    # "r":J
    :cond_122
    const/4 v0, 0x0

    iput v0, v1, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->missedEmitting:I

    .line 298
    monitor-exit p0

    .line 299
    .end local v9    # "r":J
    nop

    .line 210
    :goto_127
    const/4 v2, 0x1

    goto/16 :goto_1f

    .line 298
    .restart local v9    # "r":J
    :catchall_12a
    move-exception v0

    monitor-exit p0
    :try_end_12c
    .catchall {:try_start_119 .. :try_end_12c} :catchall_12a

    throw v0

    .line 207
    .end local v3    # "subs":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;>;"
    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .end local v5    # "active":[Ljava/lang/Object;
    .end local v9    # "r":J
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit p0
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v0
.end method

.method public onCompleted()V
    .registers 2

    .line 176
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 177
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->drain()V

    .line 178
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 155
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribers:Ljava/util/List;

    monitor-enter v0

    .line 156
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 157
    .local v1, "active":[Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 158
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_3c

    .line 161
    const/4 v0, 0x0

    :try_start_12
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->s:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 163
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->unsubscribe()V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_2b

    .line 165
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v3, v2

    .local v0, "i$":I
    .local v3, "len$":I
    :goto_1c
    if-ge v0, v3, :cond_29

    aget-object v4, v2, v0

    .line 167
    .local v4, "o":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;

    .line 168
    .local v5, "a":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    invoke-virtual {v5}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->release()V

    .line 165
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "a":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 170
    .end local v0    # "i$":I
    .end local v2    # "arr$":[Ljava/lang/Object;
    .end local v3    # "len$":I
    :cond_29
    nop

    .line 172
    return-void

    .line 165
    :catchall_2b
    move-exception v2

    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v4, v3

    .restart local v0    # "i$":I
    .local v4, "len$":I
    :goto_2e
    if-ge v0, v4, :cond_3b

    aget-object v5, v3, v0

    .line 167
    .local v5, "o":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;

    .line 168
    .local v6, "a":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    invoke-virtual {v6}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->release()V

    .line 165
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "a":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .end local v0    # "i$":I
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v4    # "len$":I
    :cond_3b
    throw v2

    .line 158
    .end local v1    # "active":[Ljava/lang/Object;
    :catchall_3c
    move-exception v2

    .restart local v1    # "active":[Ljava/lang/Object;
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Observable;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 125
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 126
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribeNext()V

    .line 127
    return-void

    .line 125
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onStart()V
    .registers 3

    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    iget v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->maxConcurrency:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->request(J)V

    .line 119
    return-void
.end method

.method subscribeNext()V
    .registers 5

    .line 131
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;

    move-object v1, v2

    .line 133
    .local v1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    if-eqz v1, :cond_45

    iget v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    iget v3, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->maxConcurrency:I

    if-lt v2, v3, :cond_16

    goto :goto_45

    .line 136
    :cond_16
    iget v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    .line 137
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 138
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_47

    .line 140
    new-instance v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;

    sget-object v2, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->SOURCE_INDEX:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;-><init>(Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;I)V

    .line 141
    .local v0, "itemSub":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 145
    sget-object v2, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 147
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 149
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->request(J)V

    .line 150
    return-void

    .line 134
    .end local v0    # "itemSub":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v0

    return-void

    .line 138
    .end local v1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :catchall_47
    move-exception v2

    .restart local v1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v2
.end method

###### Class rx.internal.operators.OperatorMergeMaxConcurrent.SourceSubscriber.MergeItemSubscriber (rx.internal.operators.OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber)
.class final Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;
.super Lrx/Subscriber;
.source "OperatorMergeMaxConcurrent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MergeItemSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final buffer:Lrx/internal/util/RxRingBuffer;

.field final index:I

.field volatile once:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;I)V
    .registers 3
    .param p2, "index"    # I

    .line 306
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 302
    const/4 p1, 0x1

    iput-boolean p1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->once:Z

    .line 307
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpmcInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->buffer:Lrx/internal/util/RxRingBuffer;

    .line 308
    iput p2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->index:I

    .line 309
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 335
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->once:Z

    if-eqz v0, :cond_c

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->once:Z

    .line 337
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->drain()V

    .line 339
    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 330
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 331
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 319
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0, p1}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_5
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_5} :catch_c

    .line 323
    nop

    .line 325
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->drain()V

    .line 326
    return-void

    .line 320
    :catch_c
    move-exception v0

    .line 321
    .local v0, "ex":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 322
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 313
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->request(J)V

    .line 314
    return-void
.end method

.method release()V
    .registers 2

    .line 346
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->release()V

    .line 347
    return-void
.end method

.method requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 342
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>.MergeItemSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$MergeItemSubscriber;->request(J)V

    .line 343
    return-void
.end method
