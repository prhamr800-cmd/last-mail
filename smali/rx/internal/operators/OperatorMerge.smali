###### Class rx.internal.operators.OperatorMerge (rx.internal.operators.OperatorMerge)
.class public Lrx/internal/operators/OperatorMerge;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMerge$InnerSubscriber;,
        Lrx/internal/operators/OperatorMerge$MergeProducer;,
        Lrx/internal/operators/OperatorMerge$MergeSubscriber;,
        Lrx/internal/operators/OperatorMerge$HolderDelayErrors;,
        Lrx/internal/operators/OperatorMerge$HolderNoDelay;
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
.field private final delayErrors:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    .line 106
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2
    .param p1, "delayErrors"    # Z

    .line 108
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean p1, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    .line 110
    return-void
.end method

.method synthetic constructor <init>(ZLrx/internal/operators/OperatorMerge$1;)V
    .registers 3
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lrx/internal/operators/OperatorMerge$1;

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorMerge;-><init>(Z)V

    return-void
.end method

.method public static instance(Z)Lrx/internal/operators/OperatorMerge;
    .registers 2
    .param p0, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/OperatorMerge<",
            "TT;>;"
        }
    .end annotation

    .line 69
    if-eqz p0, :cond_5

    .line 70
    sget-object v0, Lrx/internal/operators/OperatorMerge$HolderDelayErrors;->INSTANCE:Lrx/internal/operators/OperatorMerge;

    return-object v0

    .line 72
    :cond_5
    sget-object v0, Lrx/internal/operators/OperatorMerge$HolderNoDelay;->INSTANCE:Lrx/internal/operators/OperatorMerge;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;-><init>(Lrx/Subscriber;Z)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorMerge.AnonymousClass1 (rx.internal.operators.OperatorMerge$1)
.class synthetic Lrx/internal/operators/OperatorMerge$1;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class rx.internal.operators.OperatorMerge.HolderDelayErrors (rx.internal.operators.OperatorMerge$HolderDelayErrors)
.class final Lrx/internal/operators/OperatorMerge$HolderDelayErrors;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HolderDelayErrors"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorMerge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Lrx/internal/operators/OperatorMerge;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorMerge;-><init>(ZLrx/internal/operators/OperatorMerge$1;)V

    sput-object v0, Lrx/internal/operators/OperatorMerge$HolderDelayErrors;->INSTANCE:Lrx/internal/operators/OperatorMerge;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class rx.internal.operators.OperatorMerge.HolderNoDelay (rx.internal.operators.OperatorMerge$HolderNoDelay)
.class final Lrx/internal/operators/OperatorMerge$HolderNoDelay;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HolderNoDelay"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorMerge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
    new-instance v0, Lrx/internal/operators/OperatorMerge;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorMerge;-><init>(ZLrx/internal/operators/OperatorMerge$1;)V

    sput-object v0, Lrx/internal/operators/OperatorMerge$HolderNoDelay;->INSTANCE:Lrx/internal/operators/OperatorMerge;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class rx.internal.operators.OperatorMerge.InnerSubscriber (rx.internal.operators.OperatorMerge$InnerSubscriber)
.class final Lrx/internal/operators/OperatorMerge$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerSubscriber"
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


# static fields
.field static final ONCE_TERMINATED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeProducer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q:Lrx/internal/util/RxRingBuffer;

.field public sindex:I

.field volatile terminated:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 573
    const-class v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    const-string v1, "terminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->ONCE_TERMINATED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;Lrx/internal/operators/OperatorMerge$MergeProducer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber<",
            "TT;>;",
            "Lrx/internal/operators/OperatorMerge$MergeProducer<",
            "TT;>;)V"
        }
    .end annotation

    .line 577
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p2, "producer":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 575
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpscInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    .line 578
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 579
    iput-object p2, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 580
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->add(Lrx/Subscription;)V

    .line 581
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->request(J)V

    .line 582
    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)Lrx/internal/util/RxRingBuffer;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 565
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    return-object v0
.end method

.method static synthetic access$400(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)I
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 565
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->drainQueue()I

    move-result v0

    return v0
.end method

.method private drainAll()I
    .registers 5

    .line 758
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 761
    .local v0, "emitted":I
    :goto_1
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "o":Ljava/lang/Object;
    if-eqz v1, :cond_30

    .line 762
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v1, v2}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 763
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v1, p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    goto :goto_1

    .line 766
    :cond_18
    :try_start_18
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    iget-object v3, v3, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v2, v3}, Lrx/internal/util/RxRingBuffer;->accept(Ljava/lang/Object;Lrx/Observer;)Z

    move-result v1
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_22} :catch_27

    if-nez v1, :cond_26

    .line 767
    add-int/lit8 v0, v0, 0x1

    .line 772
    .end local v2    # "o":Ljava/lang/Object;
    :cond_26
    :goto_26
    goto :goto_1

    .line 769
    .restart local v2    # "o":Ljava/lang/Object;
    :catch_27
    move-exception v1

    .line 771
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_26

    .line 775
    :cond_30
    return v0
.end method

.method private drainQueue()I
    .registers 2

    .line 779
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    if-eqz v0, :cond_9

    .line 780
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->drainRequested()I

    move-result v0

    return v0

    .line 782
    :cond_9
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->drainAll()I

    move-result v0

    return v0
.end method

.method private drainRequested()I
    .registers 8

    .line 729
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 731
    .local v0, "emitted":I
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$100(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v1

    .line 733
    .local v1, "toEmit":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-gez v6, :cond_3e

    .line 734
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 735
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_16

    .line 737
    goto :goto_3e

    .line 738
    :cond_16
    iget-object v5, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v5, v4}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 739
    iget-object v5, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v5, p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    goto :goto_3b

    .line 742
    :cond_24
    :try_start_24
    iget-object v5, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    iget-object v6, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    iget-object v6, v6, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v5, v4, v6}, Lrx/internal/util/RxRingBuffer;->accept(Ljava/lang/Object;Lrx/Observer;)Z

    move-result v5
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2e} :catch_33

    if-nez v5, :cond_32

    .line 743
    add-int/lit8 v0, v0, 0x1

    .line 748
    :cond_32
    goto :goto_3b

    .line 745
    :catch_33
    move-exception v5

    .line 747
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v5, v4}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 733
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 753
    .end local v3    # "i":I
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3e
    :goto_3e
    sget-object v3, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    neg-int v5, v0

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    .line 754
    return v0
.end method

.method private emit(Ljava/lang/Object;Z)V
    .registers 14
    .param p2, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 609
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 610
    .local v0, "drain":Z
    const/4 v1, 0x1

    .line 648
    .local v1, "enqueue":Z
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$1000(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 649
    const-wide/16 v2, 0x0

    .line 650
    .local v2, "emitted":J
    const/4 v1, 0x0

    .line 653
    :try_start_d
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->drainQueue()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 655
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    if-nez v4, :cond_36

    .line 657
    if-eqz p2, :cond_23

    .line 658
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v4, p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_7a

    goto :goto_6b

    .line 661
    :cond_23
    :try_start_23
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    iget-object v4, v4, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2a} :catch_2b
    .catchall {:try_start_23 .. :try_end_2a} :catchall_7a

    .line 665
    goto :goto_33

    .line 662
    :catch_2b
    move-exception v4

    .line 664
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2c
    invoke-static {v4, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {p0, v9}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 666
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_33
    const/4 v4, 0x0

    add-long/2addr v2, v5

    goto :goto_6b

    .line 671
    :cond_36
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$100(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v9

    cmp-long v4, v9, v7

    if-lez v4, :cond_6a

    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->count()I

    move-result v4

    if-nez v4, :cond_6a

    .line 672
    if-eqz p2, :cond_50

    .line 673
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v4, p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_7a

    goto :goto_6b

    .line 676
    :cond_50
    :try_start_50
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    iget-object v4, v4, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_57} :catch_58
    .catchall {:try_start_50 .. :try_end_57} :catchall_7a

    .line 680
    goto :goto_60

    .line 677
    :catch_58
    move-exception v4

    .line 679
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_59
    invoke-static {v4, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {p0, v9}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 681
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_60
    const/4 v4, 0x0

    add-long/2addr v2, v5

    .line 682
    sget-object v4, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v5, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_7a

    goto :goto_6b

    .line 686
    :cond_6a
    const/4 v1, 0x1

    .line 690
    :goto_6b
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v4}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$1100(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z

    move-result v0

    .line 691
    nop

    .line 693
    cmp-long v4, v2, v7

    if-lez v4, :cond_82

    .line 694
    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->request(J)V

    goto :goto_82

    .line 690
    :catchall_7a
    move-exception v4

    iget-object v5, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v5}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$1100(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z

    move-result v0

    throw v4

    .line 697
    .end local v2    # "emitted":J
    :cond_82
    :goto_82
    if-eqz v1, :cond_88

    .line 698
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->enqueue(Ljava/lang/Object;Z)V

    .line 699
    const/4 v0, 0x1

    .line 701
    :cond_88
    if-eqz v0, :cond_8f

    .line 712
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$500(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z

    .line 714
    :cond_8f
    return-void
.end method

.method private enqueue(Ljava/lang/Object;Z)V
    .registers 4
    .param p2, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 718
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_a

    .line 719
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->onCompleted()V

    goto :goto_f

    .line 723
    :catch_8
    move-exception v0

    goto :goto_10

    .line 721
    :cond_a
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->q:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0, p1}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_f
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_2 .. :try_end_f} :catch_8

    .line 725
    :goto_f
    goto :goto_14

    .line 723
    :goto_10
    nop

    .line 724
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 726
    .end local v0    # "e":Lrx/exceptions/MissingBackpressureException;
    :goto_14
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .line 599
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->ONCE_TERMINATED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->emit(Ljava/lang/Object;Z)V

    .line 602
    :cond_e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 592
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->ONCE_TERMINATED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 593
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parentSubscriber:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v0, p1, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$900(Lrx/internal/operators/OperatorMerge$MergeSubscriber;Ljava/lang/Throwable;Z)V

    .line 595
    :cond_f
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 586
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->emit(Ljava/lang/Object;Z)V

    .line 587
    return-void
.end method

.method public requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 605
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->request(J)V

    .line 606
    return-void
.end method

###### Class rx.internal.operators.OperatorMerge.MergeProducer (rx.internal.operators.OperatorMerge$MergeProducer)
.class final Lrx/internal/operators/OperatorMerge$MergeProducer;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MergeProducer"
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


# static fields
.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorMerge$MergeProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile requested:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 538
    const-class v0, Lrx/internal/operators/OperatorMerge$MergeProducer;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 532
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    .local p1, "ms":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->requested:J

    .line 533
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 534
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorMerge$MergeProducer;)J
    .registers 3
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 528
    iget-wide v0, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->requested:J

    return-wide v0
.end method


# virtual methods
.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .line 542
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    iget-wide v0, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->requested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 543
    return-void

    .line 545
    :cond_c
    cmp-long v0, p1, v2

    if-nez v0, :cond_13

    .line 546
    iput-wide v2, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->requested:J

    goto :goto_4d

    .line 548
    :cond_13
    sget-object v0, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v0, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    .line 549
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$500(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "sendComplete":Z
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    monitor-enter v1

    .line 552
    :try_start_24
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$600(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)I

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$700(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/util/RxRingBuffer;

    move-result-object v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$700(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/util/RxRingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 553
    const/4 v0, 0x1

    .line 555
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_4a

    .line 556
    if-eqz v0, :cond_4d

    .line 557
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$800(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V

    goto :goto_4d

    .line 555
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v2

    .line 561
    .end local v0    # "sendComplete":Z
    :cond_4d
    :goto_4d
    return-void
.end method

###### Class rx.internal.operators.OperatorMerge.MergeSubscriber (rx.internal.operators.OperatorMerge$MergeSubscriber)
.class final Lrx/internal/operators/OperatorMerge$MergeSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MergeSubscriber"
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


# instance fields
.field final DRAIN_ACTION:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private volatile childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/SubscriptionIndexedRingBuffer<",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private completed:Z

.field private final delayErrors:Z

.field private emitLock:Z

.field private exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field lastDrainedIndex:I

.field private final mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeProducer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private missedEmitting:I

.field final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile scalarValueQueue:Lrx/internal/util/RxRingBuffer;

.field private wip:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;Z)V
    .registers 4
    .param p2, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 121
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->on:Lrx/internal/operators/NotificationLite;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I

    .line 135
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLock:Z

    .line 362
    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastDrainedIndex:I

    .line 408
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->DRAIN_ACTION:Lrx/functions/Func1;

    .line 154
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    .line 155
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorMerge$MergeProducer;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 156
    iput-boolean p2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    .line 158
    invoke-virtual {p1, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 159
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 160
    return-void
.end method

.method static synthetic access$1000(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 120
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getEmitLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 120
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/operators/OperatorMerge$MergeProducer;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 120
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    return-object v0
.end method

.method static synthetic access$500(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 120
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainQueuesIfNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)I
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 120
    iget v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    return v0
.end method

.method static synthetic access$700(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/util/RxRingBuffer;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 120
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    return-object v0
.end method

.method static synthetic access$800(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V
    .registers 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 120
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainAndComplete()V

    return-void
.end method

.method static synthetic access$900(Lrx/internal/operators/OperatorMerge$MergeSubscriber;Ljava/lang/Throwable;Z)V
    .registers 3
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Z

    .line 120
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private drainAndComplete()V
    .registers 6

    .line 491
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 492
    .local v1, "moreToDrain":Z
    :goto_2
    if-eqz v1, :cond_1f

    .line 493
    monitor-enter p0

    .line 494
    const/4 v2, 0x0

    :try_start_6
    iput v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I

    .line 495
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1c

    .line 496
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainScalarValueQueue()I

    .line 497
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainChildrenQueues()V

    .line 498
    monitor-enter p0

    .line 499
    :try_start_10
    iget v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I

    if-lez v3, :cond_16

    const/4 v2, 0x1

    nop

    :cond_16
    move v1, v2

    .line 500
    monitor-exit p0

    goto :goto_2

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw v0

    .line 495
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 502
    :cond_1f
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    .line 503
    .local v2, "svq":Lrx/internal/util/RxRingBuffer;
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 504
    :cond_29
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-eqz v3, :cond_67

    .line 505
    const/4 v3, 0x0

    .line 506
    .local v3, "es":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 507
    :try_start_2f
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v3, v4

    .line 508
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_64

    .line 509
    if-eqz v3, :cond_5e

    .line 510
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 511
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_63

    .line 512
    :cond_41
    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v4

    if-ne v4, v0, :cond_53

    .line 513
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_63

    .line 515
    :cond_53
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    new-instance v4, Lrx/exceptions/CompositeException;

    invoke-direct {v4, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_63

    .line 518
    :cond_5e
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 520
    .end local v3    # "es":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :goto_63
    goto :goto_6c

    .line 508
    .restart local v3    # "es":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0

    .line 521
    .end local v3    # "es":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_67
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 524
    :cond_6c
    :goto_6c
    return-void
.end method

.method private drainChildrenQueues()V
    .registers 4

    .line 368
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    if-eqz v0, :cond_10

    .line 369
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->DRAIN_ACTION:Lrx/functions/Func1;

    iget v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastDrainedIndex:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I

    move-result v0

    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastDrainedIndex:I

    .line 371
    :cond_10
    return-void
.end method

.method private drainQueuesIfNeeded()Z
    .registers 6

    .line 339
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "moreToDrain":Z
    :goto_2
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getEmitLock()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 340
    move v2, v0

    .line 343
    .local v2, "emitted":I
    :try_start_9
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainScalarValueQueue()I

    move-result v3

    move v2, v3

    .line 344
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainChildrenQueues()V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_21

    .line 346
    .end local v1    # "moreToDrain":Z
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v1

    .line 347
    .restart local v1    # "moreToDrain":Z
    nop

    .line 349
    if-lez v2, :cond_1c

    .line 350
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 352
    :cond_1c
    if-nez v1, :cond_20

    .line 353
    const/4 v0, 0x1

    return v0

    .line 356
    .end local v2    # "emitted":I
    :cond_20
    goto :goto_2

    .line 346
    .restart local v2    # "emitted":I
    :catchall_21
    move-exception v0

    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v1

    throw v0

    .line 357
    .end local v1    # "moreToDrain":Z
    .end local v2    # "emitted":I
    :cond_27
    return v0
.end method

.method private drainScalarValueQueue()I
    .registers 11

    .line 377
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    .line 378
    .local v0, "svq":Lrx/internal/util/RxRingBuffer;
    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 379
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v2}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$100(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v2

    .line 380
    .local v2, "r":J
    const/4 v4, 0x0

    .line 381
    .local v4, "emittedWhileDraining":I
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-gez v7, :cond_25

    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, "o":Ljava/lang/Object;
    :goto_13
    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    if-eqz v5, :cond_24

    .line 385
    iget-object v5, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->on:Lrx/internal/operators/NotificationLite;

    iget-object v6, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v5, v6, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 388
    .end local v1    # "o":Ljava/lang/Object;
    :cond_24
    goto :goto_4c

    :cond_25
    cmp-long v7, v2, v5

    if-lez v7, :cond_4c

    .line 390
    move-wide v5, v2

    .line 391
    .local v5, "toEmit":J
    nop

    .local v1, "i":I
    :goto_2b
    int-to-long v7, v1

    cmp-long v9, v7, v5

    if-gez v9, :cond_43

    .line 392
    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v7

    .line 393
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_37

    .line 394
    goto :goto_43

    .line 396
    :cond_37
    iget-object v8, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->on:Lrx/internal/operators/NotificationLite;

    iget-object v9, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v8, v9, v7}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v4, v4, 0x1

    .line 391
    .end local v7    # "o":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 401
    .end local v1    # "i":I
    :cond_43
    :goto_43
    sget-object v1, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v7, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    neg-int v8, v4

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    .line 403
    .end local v5    # "toEmit":J
    :cond_4c
    :goto_4c
    return v4

    .line 405
    .end local v2    # "r":J
    .end local v4    # "emittedWhileDraining":I
    :cond_4d
    return v1
.end method

.method private declared-synchronized getEmitLock()Z
    .registers 4

    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    monitor-enter p0

    .line 327
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLock:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 328
    iget v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I

    add-int/2addr v0, v2

    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    .line 329
    monitor-exit p0

    return v1

    .line 331
    :cond_e
    :try_start_e
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLock:Z

    .line 332
    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_14

    .line 333
    monitor-exit p0

    return v2

    .line 326
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getOrCreateScalarValueQueue()Lrx/internal/util/RxRingBuffer;
    .registers 2

    .line 309
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    .line 310
    .local v0, "svq":Lrx/internal/util/RxRingBuffer;
    if-nez v0, :cond_a

    .line 311
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpscInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    .line 312
    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    .line 314
    :cond_a
    return-object v0
.end method

.method private handleNewSource(Lrx/Observable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 190
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    if-nez v0, :cond_10

    .line 192
    new-instance v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionIndexedRingBuffer;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    .line 193
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->add(Lrx/Subscription;)V

    .line 195
    :cond_10
    const/4 v0, 0x0

    .line 197
    .local v0, "producerIfNeeded":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$100(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_22

    .line 211
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 213
    :cond_22
    new-instance v1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;Lrx/internal/operators/OperatorMerge$MergeProducer;)V

    .line 214
    .local v1, "i":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    invoke-virtual {v2, v1}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->add(Lrx/Subscription;)I

    move-result v2

    iput v2, v1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->sindex:I

    .line 215
    invoke-virtual {p1, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 216
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 217
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 219
    :cond_3d
    return-void
.end method

.method private handleScalarSynchronousObservable(Lrx/internal/util/ScalarSynchronousObservable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/ScalarSynchronousObservable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 240
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$100(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    .line 241
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->handleScalarSynchronousObservableWithoutRequestLimits(Lrx/internal/util/ScalarSynchronousObservable;)V

    goto :goto_16

    .line 243
    :cond_13
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->handleScalarSynchronousObservableWithRequestLimits(Lrx/internal/util/ScalarSynchronousObservable;)V

    .line 245
    :goto_16
    return-void
.end method

.method private handleScalarSynchronousObservableWithRequestLimits(Lrx/internal/util/ScalarSynchronousObservable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/ScalarSynchronousObservable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getEmitLock()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "emitted":Z
    const/4 v1, 0x0

    .line 277
    .local v1, "isReturn":Z
    :try_start_8
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v2}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$100(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v2

    .line 278
    .local v2, "r":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_26

    .line 279
    const/4 v0, 0x1

    .line 280
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 281
    sget-object v4, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v5, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3a

    .line 283
    const/4 v1, 0x1

    .line 286
    .end local v2    # "r":J
    :cond_26
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v2

    .line 287
    .local v2, "moreToDrain":Z
    nop

    .line 288
    if-eqz v2, :cond_30

    .line 289
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainQueuesIfNeeded()Z

    .line 291
    :cond_30
    if-eqz v0, :cond_37

    .line 292
    const-wide/16 v3, 0x1

    invoke-virtual {p0, v3, v4}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 294
    :cond_37
    if-eqz v1, :cond_40

    .line 295
    return-void

    .line 286
    .end local v2    # "moreToDrain":Z
    :catchall_3a
    move-exception v2

    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v3

    .local v3, "moreToDrain":Z
    throw v2

    .line 302
    .end local v0    # "emitted":Z
    .end local v1    # "isReturn":Z
    .end local v3    # "moreToDrain":Z
    :cond_40
    :try_start_40
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateScalarValueQueue()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_4b
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_40 .. :try_end_4b} :catch_4c

    .line 305
    goto :goto_50

    .line 303
    :catch_4c
    move-exception v0

    .line 304
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 306
    .end local v0    # "e":Lrx/exceptions/MissingBackpressureException;
    :goto_50
    return-void
.end method

.method private handleScalarSynchronousObservableWithoutRequestLimits(Lrx/internal/util/ScalarSynchronousObservable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/ScalarSynchronousObservable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 248
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v0

    .line 249
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getEmitLock()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 252
    :try_start_a
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1f

    .line 254
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v1

    .line 255
    .local v1, "moreToDrain":Z
    nop

    .line 256
    if-eqz v1, :cond_19

    .line 257
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainQueuesIfNeeded()Z

    .line 259
    :cond_19
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 260
    return-void

    .line 254
    .end local v1    # "moreToDrain":Z
    :catchall_1f
    move-exception v1

    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v2

    .local v2, "moreToDrain":Z
    throw v1

    .line 263
    .end local v2    # "moreToDrain":Z
    :cond_25
    :try_start_25
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateScalarValueQueue()Lrx/internal/util/RxRingBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_2c
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 266
    goto :goto_31

    .line 264
    :catch_2d
    move-exception v1

    .line 265
    .local v1, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 267
    .end local v1    # "e":Lrx/exceptions/MissingBackpressureException;
    :goto_31
    return-void
.end method

.method private innerError(Ljava/lang/Throwable;Z)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "parent"    # Z

    .line 437
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-eqz v0, :cond_3c

    .line 438
    monitor-enter p0

    .line 439
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_10

    .line 440
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 442
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_39

    .line 443
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "sendOnComplete":Z
    monitor-enter p0

    .line 446
    if-nez p2, :cond_23

    .line 447
    :try_start_1a
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    goto :goto_23

    .line 452
    :catchall_21
    move-exception v1

    goto :goto_37

    .line 449
    :cond_23
    :goto_23
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    if-nez v1, :cond_2f

    :cond_2b
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    if-gez v1, :cond_30

    .line 450
    :cond_2f
    const/4 v0, 0x1

    .line 452
    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_21

    .line 453
    if-eqz v0, :cond_36

    .line 454
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainAndComplete()V

    .line 456
    .end local v0    # "sendOnComplete":Z
    :cond_36
    goto :goto_41

    .line 452
    .restart local v0    # "sendOnComplete":Z
    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_21

    throw v1

    .line 442
    .end local v0    # "sendOnComplete":Z
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    .line 457
    :cond_3c
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 459
    :goto_41
    return-void
.end method

.method private declared-synchronized releaseEmitLock()Z
    .registers 3

    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    monitor-enter p0

    .line 318
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLock:Z

    .line 319
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_d

    if-nez v1, :cond_a

    .line 320
    monitor-exit p0

    return v0

    .line 322
    :cond_a
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 317
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method completeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 477
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "s":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 478
    .local v0, "sendOnComplete":Z
    monitor-enter p0

    .line 479
    :try_start_2
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    .line 480
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    if-eqz v1, :cond_11

    .line 481
    const/4 v0, 0x1

    .line 483
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_1f

    .line 484
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    iget v2, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->sindex:I

    invoke-virtual {v1, v2}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->remove(I)V

    .line 485
    if-eqz v0, :cond_1e

    .line 486
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainAndComplete()V

    .line 488
    :cond_1e
    return-void

    .line 483
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public onCompleted()V
    .registers 3

    .line 463
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 464
    .local v0, "c":Z
    monitor-enter p0

    .line 465
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    .line 466
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    if-nez v1, :cond_a

    .line 467
    const/4 v0, 0x1

    .line 469
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    .line 470
    if-eqz v0, :cond_10

    .line 472
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainAndComplete()V

    .line 474
    :cond_10
    return-void

    .line 469
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 430
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    if-nez v0, :cond_a

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    .line 432
    invoke-direct {p0, p1, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerError(Ljava/lang/Throwable;Z)V

    .line 434
    :cond_a
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Observable;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    instance-of v0, p1, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_b

    .line 175
    move-object v0, p1

    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    .line 176
    .local v0, "t2":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->handleScalarSynchronousObservable(Lrx/internal/util/ScalarSynchronousObservable;)V

    .line 177
    .end local v0    # "t2":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    goto :goto_1f

    .line 178
    :cond_b
    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_23

    .line 181
    :cond_14
    monitor-enter p0

    .line 183
    :try_start_15
    iget v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    .line 184
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 185
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->handleNewSource(Lrx/Observable;)V

    .line 187
    :goto_1f
    return-void

    .line 184
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    .line 179
    :cond_23
    :goto_23
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 166
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 167
    return-void
.end method

###### Class rx.internal.operators.OperatorMerge.MergeSubscriber.AnonymousClass1 (rx.internal.operators.OperatorMerge$MergeSubscriber$1)
.class Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge$MergeSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
        "TT;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMerge$MergeSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V
    .registers 2

    .line 408
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;->this$0:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)Ljava/lang/Boolean;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber.1;"
    .local p1, "s":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->access$200(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 413
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;->this$0:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$300(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-result-object v0

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$100(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v0

    .line 414
    .local v0, "r":J
    invoke-static {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->access$400(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)I

    move-result v2

    .line 415
    .local v2, "emitted":I
    if-lez v2, :cond_1a

    .line 416
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    .line 418
    :cond_1a
    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-nez v5, :cond_22

    .line 420
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    .line 423
    .end local v0    # "r":J
    .end local v2    # "emitted":I
    :cond_22
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 408
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber.1;"
    move-object v0, p1

    check-cast v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;->call(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
