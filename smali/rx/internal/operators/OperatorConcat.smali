###### Class rx.internal.operators.OperatorConcat (rx.internal.operators.OperatorConcat)
.class public final Lrx/internal/operators/OperatorConcat;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;,
        Lrx/internal/operators/OperatorConcat$ConcatSubscriber;,
        Lrx/internal/operators/OperatorConcat$ConcatProducer;,
        Lrx/internal/operators/OperatorConcat$Holder;
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorConcat;, "Lrx/internal/operators/OperatorConcat<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorConcat$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorConcat$1;

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorConcat;, "Lrx/internal/operators/OperatorConcat<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorConcat;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorConcat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorConcat<",
            "TT;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lrx/internal/operators/OperatorConcat$Holder;->INSTANCE:Lrx/internal/operators/OperatorConcat;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorConcat;, "Lrx/internal/operators/OperatorConcat<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorConcat;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorConcat;, "Lrx/internal/operators/OperatorConcat<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 57
    .local v0, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v1, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 58
    .local v1, "current":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 59
    new-instance v2, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-direct {v2, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;-><init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V

    .line 60
    .local v2, "cs":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    new-instance v3, Lrx/internal/operators/OperatorConcat$ConcatProducer;

    invoke-direct {v3, v2}, Lrx/internal/operators/OperatorConcat$ConcatProducer;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    .line 61
    .local v3, "cp":Lrx/internal/operators/OperatorConcat$ConcatProducer;, "Lrx/internal/operators/OperatorConcat$ConcatProducer<TT;>;"
    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 62
    return-object v2
.end method

###### Class rx.internal.operators.OperatorConcat.AnonymousClass1 (rx.internal.operators.OperatorConcat$1)
.class synthetic Lrx/internal/operators/OperatorConcat$1;
.super Ljava/lang/Object;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class rx.internal.operators.OperatorConcat.ConcatInnerSubscriber (rx.internal.operators.OperatorConcat$ConcatInnerSubscriber)
.class Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConcatInnerSubscriber"
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
.field private static final ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile once:I

.field private final parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 195
    const-class v0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    const-string v1, "once"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V
    .registers 5
    .param p3, "arbiter"    # Lrx/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<",
            "TT;>;",
            "Lrx/Subscriber<",
            "TT;>;",
            "Lrx/internal/producers/ProducerArbiter;",
            ")V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->once:I

    .line 199
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    .line 200
    iput-object p2, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->child:Lrx/Subscriber;

    .line 201
    iput-object p3, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 202
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .line 221
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 223
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->completeInner()V

    .line 225
    :cond_f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 213
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 215
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 217
    :cond_f
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 206
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-static {v0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->access$200(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    .line 208
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 209
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .line 229
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 230
    return-void
.end method

###### Class rx.internal.operators.OperatorConcat.ConcatProducer (rx.internal.operators.OperatorConcat$ConcatProducer)
.class final Lrx/internal/operators/OperatorConcat$ConcatProducer;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatProducer"
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
.field final cs:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatProducer;, "Lrx/internal/operators/OperatorConcat$ConcatProducer<TT;>;"
    .local p1, "cs":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatProducer;->cs:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    .line 70
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatProducer;, "Lrx/internal/operators/OperatorConcat$ConcatProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatProducer;->cs:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->access$100(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;J)V

    .line 75
    return-void
.end method

###### Class rx.internal.operators.OperatorConcat.ConcatSubscriber (rx.internal.operators.OperatorConcat$ConcatSubscriber)
.class final Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
.super Lrx/Subscriber;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatSubscriber"
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
.field private static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final current:Lrx/subscriptions/SerialSubscription;

.field volatile currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile requested:J

.field volatile wip:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 89
    const-class v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    const-string v1, "wip"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 94
    const-class v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
    .registers 4
    .param p2, "current"    # Lrx/subscriptions/SerialSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            ")V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 80
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 99
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    .line 100
    iput-object p2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->current:Lrx/subscriptions/SerialSubscription;

    .line 101
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 103
    new-instance v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->add(Lrx/Subscription;)V

    .line 109
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;J)V
    .registers 3
    .param p0, "x0"    # Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
    .param p1, "x1"    # J

    .line 79
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->requestFromChild(J)V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .registers 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    .line 79
    invoke-direct {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->decrementRequested()V

    return-void
.end method

.method private decrementRequested()V
    .registers 2

    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    .line 134
    return-void
.end method

.method private requestFromChild(J)V
    .registers 8
    .param p1, "n"    # J

    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-void

    .line 121
    :cond_7
    sget-object v2, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v2, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    move-result-wide v2

    .line 122
    .local v2, "previous":J
    iget-object v4, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v4, p1, p2}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 123
    cmp-long v4, v2, v0

    if-nez v4, :cond_21

    .line 124
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    if-nez v0, :cond_21

    iget v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->wip:I

    if-lez v0, :cond_21

    .line 127
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 130
    :cond_21
    return-void
.end method


# virtual methods
.method completeInner()V
    .registers 3

    .line 160
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 161
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_e

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 164
    :cond_e
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->request(J)V

    .line 165
    return-void
.end method

.method public onCompleted()V
    .registers 3

    .line 152
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_16

    .line 154
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 156
    :cond_16
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 146
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 147
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->unsubscribe()V

    .line 148
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Observable;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->onNext(Lrx/Observable;)V

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

    .line 138
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_16

    .line 140
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 142
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 115
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->request(J)V

    .line 116
    return-void
.end method

.method subscribeNext()V
    .registers 6

    .line 168
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    iget-wide v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->requested:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3e

    .line 169
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 171
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_3d

    .line 172
    :cond_1c
    if-eqz v0, :cond_3d

    .line 173
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 174
    .local v1, "obs":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    iget-object v4, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v2, p0, v3, v4}, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V

    iput-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 175
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->current:Lrx/subscriptions/SerialSubscription;

    iget-object v3, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v2, v3}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 176
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 178
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "obs":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_3d
    :goto_3d
    goto :goto_51

    .line 180
    :cond_3e
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 181
    .restart local v0    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 182
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 185
    .end local v0    # "o":Ljava/lang/Object;
    :cond_51
    :goto_51
    return-void
.end method

###### Class rx.internal.operators.OperatorConcat.ConcatSubscriber.AnonymousClass1 (rx.internal.operators.OperatorConcat$ConcatSubscriber$1)
.class Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorConcat$ConcatSubscriber;-><init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .registers 2

    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;->this$0:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;->this$0:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 107
    return-void
.end method

###### Class rx.internal.operators.OperatorConcat.Holder (rx.internal.operators.OperatorConcat$Holder)
.class final Lrx/internal/operators/OperatorConcat$Holder;
.super Ljava/lang/Object;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorConcat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lrx/internal/operators/OperatorConcat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorConcat;-><init>(Lrx/internal/operators/OperatorConcat$1;)V

    sput-object v0, Lrx/internal/operators/OperatorConcat$Holder;->INSTANCE:Lrx/internal/operators/OperatorConcat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
