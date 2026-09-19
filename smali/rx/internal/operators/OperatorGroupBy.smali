###### Class rx.internal.operators.OperatorGroupBy (rx.internal.operators.OperatorGroupBy)
.class public Lrx/internal/operators/OperatorGroupBy;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Lrx/observables/GroupedObservable<",
        "TK;TR;>;TT;>;"
    }
.end annotation


# static fields
.field private static final IDENTITY:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 422
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$1;

    invoke-direct {v0}, Lrx/internal/operators/OperatorGroupBy$1;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorGroupBy;->IDENTITY:Lrx/functions/Func1;

    .line 429
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorGroupBy;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;+TK;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TR;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy;->IDENTITY:Lrx/functions/Func1;

    invoke-direct {p0, p1, v0}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;+TK;>;",
            "Lrx/functions/Func1<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TR;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy;->keySelector:Lrx/functions/Func1;

    .line 65
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy;->valueSelector:Lrx/functions/Func1;

    .line 66
    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .line 52
    sget-object v0, Lrx/internal/operators/OperatorGroupBy;->NULL_KEY:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TR;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorGroupBy;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TR;>;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy;->keySelector:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy;->valueSelector:Lrx/functions/Func1;

    invoke-direct {v0, v1, v2, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorGroupBy.AnonymousClass1 (rx.internal.operators.OperatorGroupBy$1)
.class final Lrx/internal/operators/OperatorGroupBy$1;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "t"    # Ljava/lang/Object;

    .line 425
    return-object p1
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupBySubscriber (rx.internal.operators.OperatorGroupBy$GroupBySubscriber)
.class final Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.super Lrx/Subscriber;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupBySubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final COMPLETION_EMITTED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_QUEUE_SIZE:I = 0x400

.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_WITH_COMPLETED:I = 0x1

.field private static final TERMINATED_WITH_ERROR:I = 0x2

.field private static final UNTERMINATED:I

.field static final WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile bufferedCount:J

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TR;>;>;"
        }
    .end annotation
.end field

.field volatile completionEmitted:I

.field final elementSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field private final groups:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<",
            "TK;TT;>;>;"
        }
    .end annotation
.end field

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field volatile requested:J

.field final self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<",
            "TK;TT;TR;>;"
        }
    .end annotation
.end field

.field volatile terminated:I

.field volatile wipForUnsubscribe:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 84
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "wipForUnsubscribe"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 125
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 137
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "completionEmitted"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->COMPLETION_EMITTED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 139
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "terminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 143
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 147
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "bufferedCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;+TK;>;",
            "Lrx/functions/Func1<",
            "-TT;+TR;>;",
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TR;>;>;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "elementSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p3, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TR;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 75
    iput-object p0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wipForUnsubscribe:I

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->terminated:I

    .line 92
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    .line 93
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->elementSelector:Lrx/functions/Func1;

    .line 94
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    .line 95
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p3, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 105
    return-void
.end method

.method static synthetic access$400(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 73
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cleanupGroup(Ljava/lang/Object;)V

    return-void
.end method

.method private cleanupGroup(Ljava/lang/Object;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;

    .line 317
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 318
    .local v0, "removed":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    if-eqz v0, :cond_2b

    .line 319
    invoke-static {v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 320
    sget-object v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-static {v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    neg-int v3, v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 322
    :cond_25
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->completeInner()V

    .line 326
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requestMoreIfNecessary()V

    .line 328
    :cond_2b
    return-void
.end method

.method private completeInner()V
    .registers 4

    .line 408
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_c

    .line 410
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    goto :goto_27

    .line 411
    :cond_c
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->terminated:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 414
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->COMPLETION_EMITTED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 415
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 418
    :cond_27
    :goto_27
    return-void
.end method

.method private createNewGroup(Ljava/lang/Object;)Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<",
            "TK;TT;>;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;-><init>(Lrx/internal/operators/OperatorGroupBy$1;)V

    .line 236
    .local v0, "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    invoke-direct {v3, p0, v0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lrx/observables/GroupedObservable;->create(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)Lrx/observables/GroupedObservable;

    move-result-object v2

    .line 297
    .local v2, "go":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TR;>;"
    :goto_13
    iget v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wipForUnsubscribe:I

    .line 298
    .local v3, "wip":I
    if-gtz v3, :cond_18

    .line 299
    return-object v1

    .line 301
    :cond_18
    sget-object v4, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, p0, v3, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 302
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 303
    .local v1, "putIfAbsent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    nop

    .line 305
    .end local v3    # "wip":I
    nop

    .line 306
    if-nez v1, :cond_34

    .line 310
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 312
    return-object v0

    .line 308
    :cond_34
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Group already existed while creating a new one"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    .end local v1    # "putIfAbsent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    :cond_3c
    goto :goto_13
.end method

.method private drainIfPossible(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<",
            "TK;TT;>;)V"
        }
    .end annotation

    .line 384
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    :goto_0
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_42

    .line 385
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, "t":Ljava/lang/Object;
    if-eqz v0, :cond_42

    .line 388
    invoke-virtual {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->getObserver()Lrx/Observer;

    move-result-object v1

    .line 389
    .local v1, "obs":Lrx/Observer;, "Lrx/Observer<Ljava/lang/Object;>;"
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1, v0}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 390
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_39

    .line 393
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 395
    :cond_39
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    .line 398
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requestMoreIfNecessary()V

    .line 403
    .end local v0    # "t":Ljava/lang/Object;
    .end local v1    # "obs":Lrx/Observer;, "Lrx/Observer<Ljava/lang/Object;>;"
    goto :goto_0

    .line 404
    :cond_42
    return-void
.end method

.method private emitItem(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V
    .registers 11
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<",
            "TK;TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 331
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;

    move-result-object v0

    .line 332
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    .line 335
    .local v1, "keyRequested":Ljava/util/concurrent/atomic/AtomicLong;
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    .line 337
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_3b

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 339
    :cond_21
    invoke-virtual {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->getObserver()Lrx/Observer;

    move-result-object v2

    .line 340
    .local v2, "obs":Lrx/Observer;, "Lrx/Observer<Ljava/lang/Object;>;"
    sget-object v3, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v2, p2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3a

    .line 344
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 346
    .end local v2    # "obs":Lrx/Observer;, "Lrx/Observer<Ljava/lang/Object;>;"
    :cond_3a
    goto :goto_52

    .line 347
    :cond_3b
    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v4, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 350
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_52

    .line 351
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->pollQueue(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V

    .line 354
    :cond_52
    :goto_52
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requestMoreIfNecessary()V

    .line 355
    return-void
.end method

.method private getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "groupedKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    invoke-static {}, Lrx/internal/operators/OperatorGroupBy;->access$200()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    return-object v0
.end method

.method private groupedKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_7

    invoke-static {}, Lrx/internal/operators/OperatorGroupBy;->access$200()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    return-object v0
.end method

.method private pollQueue(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<",
            "TK;TT;>;)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    :cond_0
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drainIfPossible(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V

    .line 360
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    .line 361
    .local v0, "c":J
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    .line 368
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 371
    .end local v0    # "c":J
    :cond_18
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 372
    return-void
.end method

.method private requestMoreIfNecessary()V
    .registers 13

    .line 375
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2c

    iget v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->terminated:I

    if-nez v0, :cond_2c

    .line 376
    const-wide/16 v0, 0x400

    sget-object v4, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 377
    .local v0, "toRequest":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_2c

    sget-object v6, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v8, 0x0

    move-object v7, p0

    move-wide v10, v0

    invoke-virtual/range {v6 .. v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 378
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->request(J)V

    .line 381
    .end local v0    # "toRequest":J
    :cond_2c
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .line 157
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 160
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 161
    .local v3, "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    sget-object v4, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->emitItem(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V

    .line 162
    .end local v3    # "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    goto :goto_14

    .line 165
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2a
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 167
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->COMPLETION_EMITTED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 168
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 172
    :cond_3f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 176
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 179
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 180
    .local v1, "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->emitItem(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V

    .line 181
    .end local v1    # "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    goto :goto_14

    .line 184
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_33

    .line 187
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 188
    goto :goto_38

    .line 187
    :catchall_33
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    throw v0

    .line 190
    :cond_38
    :goto_38
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupedKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 217
    .local v1, "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    if-nez v1, :cond_22

    .line 219
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 221
    return-void

    .line 223
    :cond_1d
    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->createNewGroup(Ljava/lang/Object;)Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    move-result-object v2

    move-object v1, v2

    .line 225
    :cond_22
    if-eqz v1, :cond_2d

    .line 226
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->emitItem(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 230
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    :cond_2d
    goto :goto_36

    .line 228
    :catch_2e
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->onError(Ljava/lang/Throwable;)V

    .line 231
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_36
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 151
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 152
    invoke-virtual {p0, v1, v2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->request(J)V

    .line 153
    return-void
.end method

.method requestFromGroupedObservable(JLrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V
    .registers 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<",
            "TK;TT;>;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p3, "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    invoke-static {p3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 198
    invoke-static {p3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    .line 199
    invoke-direct {p0, p3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->pollQueue(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V

    .line 201
    :cond_18
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupBySubscriber.AnonymousClass1 (rx.internal.operators.OperatorGroupBy$GroupBySubscriber$1)
.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V
    .registers 2

    .line 95
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber.1;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_13

    .line 100
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 102
    :cond_13
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupBySubscriber.AnonymousClass2 (rx.internal.operators.OperatorGroupBy$GroupBySubscriber$2)
.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->createNewGroup(Ljava/lang/Object;)Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

.field final synthetic val$groupState:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V
    .registers 4

    .line 236
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$groupState:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 236
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber.2;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->call(Lrx/Subscriber;)V

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

    .line 240
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber.2;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$1;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 249
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 251
    .local v0, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$groupState:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->getObservable()Lrx/Observable;

    move-result-object v1

    new-instance v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;

    invoke-direct {v2, p0, p1, p1, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;Lrx/Subscriber;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 292
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupBySubscriber.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorGroupBy$GroupBySubscriber$2$1)
.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$1;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;)V
    .registers 2

    .line 240
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$1;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$1;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 5
    .param p1, "n"    # J

    .line 244
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$1;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$1;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$1;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$groupState:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    invoke-virtual {v0, p1, p2, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requestFromGroupedObservable(JLrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V

    .line 245
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupBySubscriber.AnonymousClass2.C00392 (rx.internal.operators.OperatorGroupBy$GroupBySubscriber$2$2)
.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;
.super Lrx/Subscriber;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->call(Lrx/Subscriber;)V
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
.field final synthetic this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

.field final synthetic val$o:Lrx/Subscriber;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;Lrx/Subscriber;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 5

    .line 261
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$o:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .line 265
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 267
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 269
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$key:Ljava/lang/Object;

    invoke-static {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->access$400(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;)V

    .line 271
    :cond_1a
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 275
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 277
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 279
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$key:Ljava/lang/Object;

    invoke-static {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->access$400(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;)V

    .line 281
    :cond_1a
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 286
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->val$o:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->elementSelector:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 289
    goto :goto_18

    .line 287
    :catch_10
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$2;->onError(Ljava/lang/Throwable;)V

    .line 290
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_18
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupBySubscriber.AnonymousClass2.AnonymousClass3 (rx.internal.operators.OperatorGroupBy$GroupBySubscriber$2$3)
.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    .line 251
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.3;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .line 255
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 257
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->this$0:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2$3;->this$1:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;->val$key:Ljava/lang/Object;

    invoke-static {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->access$400(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;)V

    .line 259
    :cond_15
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupBySubscriber.GroupState (rx.internal.operators.OperatorGroupBy$GroupBySubscriber$GroupState)
.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final s:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject<",
            "TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->s:Lrx/subjects/Subject;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->buffer:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorGroupBy$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorGroupBy$1;

    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->count:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->buffer:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public getObservable()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->s:Lrx/subjects/Subject;

    return-object v0
.end method

.method public getObserver()Lrx/Observer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observer<",
            "TT;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->s:Lrx/subjects/Subject;

    return-object v0
.end method
