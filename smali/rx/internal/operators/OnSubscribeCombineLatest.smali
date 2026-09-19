###### Class rx.internal.operators.OnSubscribeCombineLatest (rx.internal.operators.OnSubscribeCombineLatest)
.class public final Lrx/internal/operators/OnSubscribeCombineLatest;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;,
        Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;,
        Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;,
        Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field

.field final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lrx/functions/FuncN;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "sources":Ljava/util/List;, "Ljava/util/List<+Lrx/Observable<+TT;>;>;"
    .local p2, "combinator":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combinator:Lrx/functions/FuncN;

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    if-gt v0, v1, :cond_10

    .line 57
    return-void

    .line 55
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than RxRingBuffer.SIZE sources to combineLatest is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 45
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCombineLatest;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 62
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 63
    return-void

    .line 65
    :cond_c
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 66
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combinator:Lrx/functions/FuncN;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;-><init>(Lrx/Subscriber;Lrx/Observable;Lrx/functions/FuncN;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_35

    .line 68
    :cond_29
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combinator:Lrx/functions/FuncN;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;-><init>(Lrx/Subscriber;Ljava/util/List;Lrx/functions/FuncN;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 71
    :goto_35
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeCombineLatest.MultiSourceProducer (rx.internal.operators.OnSubscribeCombineLatest$MultiSourceProducer)
.class final Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultiSourceProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buffer:Lrx/internal/util/RxRingBuffer;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final collectedValues:[Ljava/lang/Object;

.field private final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field

.field private final completion:Ljava/util/BitSet;

.field private volatile completionCount:I

.field private volatile counter:J

.field private final haveValues:Ljava/util/BitSet;

.field private volatile haveValuesCount:I

.field private final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 96
    const-class v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Ljava/util/List;Lrx/functions/FuncN;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Ljava/util/List<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "sources":Ljava/util/List;, "Ljava/util/List<+Lrx/Observable<+TT;>;>;"
    .local p3, "combinator":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpmcInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    .line 100
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    .line 101
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    .line 102
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->combinator:Lrx/functions/FuncN;

    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 105
    .local v0, "n":I
    new-array v1, v0, [Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    .line 106
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    .line 107
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValues:Ljava/util/BitSet;

    .line 108
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completion:Ljava/util/BitSet;

    .line 109
    return-void
.end method


# virtual methods
.method public onCompleted(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "hadValue"    # Z

    .line 168
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    if-nez p2, :cond_8

    .line 169
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 170
    return-void

    .line 172
    :cond_8
    const/4 v0, 0x0

    .line 173
    .local v0, "done":Z
    monitor-enter p0

    .line 174
    :try_start_a
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completion:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 175
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completion:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    .line 176
    iget v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completionCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completionCount:I

    .line 177
    iget v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completionCount:I

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v1, v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    move v0, v2

    .line 179
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_33

    .line 180
    if-eqz v0, :cond_32

    .line 181
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->onCompleted()V

    .line 182
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->tick()V

    .line 184
    :cond_32
    return-void

    .line 179
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 214
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 215
    return-void
.end method

.method public onNext(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 190
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValues:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 192
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValues:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 193
    iget v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValuesCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValuesCount:I

    .line 195
    :cond_14
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 196
    iget v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValuesCount:I

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    array-length v2, v2

    if-eq v0, v2, :cond_22

    .line 198
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_3f

    return v0

    .line 201
    :cond_22
    :try_start_22
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->combinator:Lrx/functions/FuncN;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_2f
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_3f

    goto :goto_39

    .line 204
    :catch_30
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_31
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onError(Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 202
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v0

    .line 203
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onError(Ljava/lang/Throwable;)V

    .line 206
    .end local v0    # "e":Lrx/exceptions/MissingBackpressureException;
    :goto_39
    nop

    .line 208
    :goto_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_3f

    .line 209
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->tick()V

    .line 210
    return v1

    .line 208
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public request(J)V
    .registers 11
    .param p1, "n"    # J

    .line 113
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 114
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 121
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v0, v3

    .line 122
    .local v0, "sizePerSubscriber":I
    sget v3, Lrx/internal/util/RxRingBuffer;->SIZE:I

    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    .line 123
    .local v3, "leftOver":I
    nop

    .local v1, "i":I
    :goto_2a
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_56

    .line 124
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/Observable;

    .line 125
    .local v4, "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    move v5, v0

    .line 126
    .local v5, "toRequest":I
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-ne v1, v6, :cond_45

    .line 127
    add-int/2addr v5, v3

    .line 129
    :cond_45
    new-instance v6, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-direct {v6, v1, v5, v7, p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;-><init>(IILrx/Subscriber;Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;)V

    .line 130
    .local v6, "s":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    aput-object v6, v7, v1

    .line 131
    invoke-virtual {v4, v6}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 123
    .end local v4    # "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .end local v5    # "toRequest":I
    .end local v6    # "s":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 134
    .end local v0    # "sizePerSubscriber":I
    .end local v1    # "i":I
    .end local v3    # "leftOver":I
    :cond_56
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->tick()V

    .line 135
    return-void
.end method

.method tick()V
    .registers 8

    .line 142
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_56

    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 146
    .local v1, "emitted":I
    :cond_e
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_3c

    .line 147
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 148
    .local v4, "o":Ljava/lang/Object;
    if-eqz v4, :cond_3c

    .line 149
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v5, v4}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 150
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V

    goto :goto_3c

    .line 152
    :cond_2e
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v5, v4, v6}, Lrx/internal/util/RxRingBuffer;->accept(Ljava/lang/Object;Lrx/Observer;)Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 158
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3c
    :goto_3c
    sget-object v4, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_e

    .line 159
    if-lez v1, :cond_56

    .line 160
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    .local v2, "arr$":[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;
    array-length v3, v2

    .local v0, "i$":I
    .local v3, "len$":I
    :goto_4b
    if-ge v0, v3, :cond_56

    aget-object v4, v2, v0

    .line 161
    .local v4, "s":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->requestUpTo(J)V

    .line 160
    .end local v4    # "s":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 165
    .end local v0    # "i$":I
    .end local v1    # "emitted":I
    .end local v2    # "arr$":[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;
    .end local v3    # "len$":I
    :cond_56
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeCombineLatest.MultiSourceRequestableSubscriber (rx.internal.operators.OnSubscribeCombineLatest$MultiSourceRequestableSubscriber)
.class final Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultiSourceRequestableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final emitted:Ljava/util/concurrent/atomic/AtomicLong;

.field hasValue:Z

.field final index:I

.field final producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILrx/Subscriber;Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "initial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 226
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    .local p3, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p4, "producer":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    invoke-direct {p0, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->emitted:Ljava/util/concurrent/atomic/AtomicLong;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->hasValue:Z

    .line 227
    iput p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->index:I

    .line 228
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    .line 229
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->request(J)V

    .line 230
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .line 245
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    iget v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->index:I

    iget-boolean v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->hasValue:Z

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onCompleted(IZ)V

    .line 246
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 250
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onError(Ljava/lang/Throwable;)V

    .line 251
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->hasValue:Z

    .line 256
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->emitted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 257
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    iget v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->index:I

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onNext(ILjava/lang/Object;)Z

    move-result v0

    .line 258
    .local v0, "emitted":Z
    if-nez v0, :cond_17

    .line 259
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->request(J)V

    .line 261
    :cond_17
    return-void
.end method

.method public requestUpTo(J)V
    .registers 10
    .param p1, "n"    # J

    .line 234
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->emitted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 235
    .local v0, "r":J
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 236
    .local v2, "u":J
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->emitted:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v5, v0, v2

    invoke-virtual {v4, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 237
    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->request(J)V

    .line 238
    nop

    .line 241
    .end local v0    # "r":J
    .end local v2    # "u":J
    return-void

    .line 240
    :cond_19
    goto :goto_0
.end method

###### Class rx.internal.operators.OnSubscribeCombineLatest.SingleSourceProducer (rx.internal.operators.OnSubscribeCombineLatest$SingleSourceProducer)
.class final Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleSourceProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final subscriber:Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/Observable;Lrx/functions/FuncN;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "combinator":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 273
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->source:Lrx/Observable;

    .line 274
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->child:Lrx/Subscriber;

    .line 275
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->combinator:Lrx/functions/FuncN;

    .line 276
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;

    invoke-direct {v0, p1, p3}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->subscriber:Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;

    .line 277
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 281
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->subscriber:Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->requestMore(J)V

    .line 282
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 283
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->source:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;->subscriber:Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 286
    :cond_16
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeCombineLatest.SingleSourceRequestableSubscriber (rx.internal.operators.OnSubscribeCombineLatest$SingleSourceRequestableSubscriber)
.class final Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleSourceRequestableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 296
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "combinator":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 297
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    .line 298
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->combinator:Lrx/functions/FuncN;

    .line 299
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 317
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 318
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 312
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 307
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->combinator:Lrx/functions/FuncN;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 302
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->request(J)V

    .line 303
    return-void
.end method
