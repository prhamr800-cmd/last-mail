###### Class rx.internal.operators.OperatorPublish (rx.internal.operators.OperatorPublish)
.class public final Lrx/internal/operators/OperatorPublish;
.super Lrx/observables/ConnectableObservable;
.source "OperatorPublish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorPublish$InnerProducer;,
        Lrx/internal/operators/OperatorPublish$PublishSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/ConnectableObservable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber<",
            "TT;>;>;"
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


# direct methods
.method private constructor <init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;",
            "Lrx/Observable<",
            "+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorPublish;, "Lrx/internal/operators/OperatorPublish<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0, p1}, Lrx/observables/ConnectableObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 140
    iput-object p2, p0, Lrx/internal/operators/OperatorPublish;->source:Lrx/Observable;

    .line 141
    iput-object p3, p0, Lrx/internal/operators/OperatorPublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 142
    return-void
.end method

.method public static create(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "TT;>;+",
            "Lrx/Observable<",
            "TR;>;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 120
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorPublish$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorPublish$2;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/Observable;)Lrx/observables/ConnectableObservable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;)",
            "Lrx/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 48
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    new-instance v1, Lrx/internal/operators/OperatorPublish$1;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorPublish$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 115
    .local v1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorPublish;

    invoke-direct {v2, v1, p0, v0}, Lrx/internal/operators/OperatorPublish;-><init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v2
.end method


# virtual methods
.method public connect(Lrx/functions/Action1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p0, "this":Lrx/internal/operators/OperatorPublish;, "Lrx/internal/operators/OperatorPublish<TT;>;"
    .local p1, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    .local v1, "doConnect":Z
    :goto_2
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    .line 153
    .local v2, "ps":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 155
    :cond_12
    new-instance v3, Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    iget-object v4, p0, Lrx/internal/operators/OperatorPublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v4}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 157
    .local v3, "u":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    invoke-virtual {v3}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->init()V

    .line 159
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 162
    goto :goto_2

    .line 164
    :cond_25
    move-object v2, v3

    .line 168
    .end local v3    # "u":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    :cond_26
    iget-object v3, v2, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_39

    iget-object v3, v2, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v0, 0x1

    nop

    .line 169
    .end local v1    # "doConnect":Z
    .local v0, "doConnect":Z
    :cond_39
    nop

    .line 184
    invoke-interface {p1, v2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 185
    if-eqz v0, :cond_44

    .line 186
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish;->source:Lrx/Observable;

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 188
    :cond_44
    return-void
.end method

###### Class rx.internal.operators.OperatorPublish.AnonymousClass1 (rx.internal.operators.OperatorPublish$1)
.class final Lrx/internal/operators/OperatorPublish$1;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$curr:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$1;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 48
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 55
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$1;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    .line 57
    .local v0, "r":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 59
    :cond_10
    new-instance v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$1;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 61
    .local v1, "u":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    invoke-virtual {v1}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->init()V

    .line 63
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$1;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 66
    goto :goto_0

    .line 69
    :cond_23
    move-object v0, v1

    .line 73
    .end local v1    # "u":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    :cond_24
    new-instance v1, Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorPublish$InnerProducer;-><init>(Lrx/internal/operators/OperatorPublish$PublishSubscriber;Lrx/Subscriber;)V

    .line 78
    .local v1, "inner":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->add(Lrx/internal/operators/OperatorPublish$InnerProducer;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 82
    goto :goto_0

    .line 107
    :cond_30
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 110
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 111
    nop

    .line 113
    .end local v0    # "r":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .end local v1    # "inner":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    return-void
.end method

###### Class rx.internal.operators.OperatorPublish.AnonymousClass2 (rx.internal.operators.OperatorPublish$2)
.class final Lrx/internal/operators/OperatorPublish$2;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$selector:Lrx/functions/Func1;

.field final synthetic val$source:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .registers 3

    .line 120
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$2;->val$source:Lrx/Observable;

    iput-object p2, p0, Lrx/internal/operators/OperatorPublish$2;->val$selector:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 120
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 123
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$2;->val$source:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    .line 125
    .local v0, "op":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$2;->val$selector:Lrx/functions/Func1;

    invoke-interface {v1, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    invoke-virtual {v1, p1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 127
    new-instance v1, Lrx/internal/operators/OperatorPublish$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorPublish$2$1;-><init>(Lrx/internal/operators/OperatorPublish$2;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 133
    return-void
.end method

###### Class rx.internal.operators.OperatorPublish.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorPublish$2$1)
.class Lrx/internal/operators/OperatorPublish$2$1;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorPublish$2;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorPublish$2;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorPublish$2;Lrx/Subscriber;)V
    .registers 3

    .line 127
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$2$1;->this$0:Lrx/internal/operators/OperatorPublish$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorPublish$2$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 127
    move-object v0, p1

    check-cast v0, Lrx/Subscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$2$1;->call(Lrx/Subscription;)V

    return-void
.end method

.method public call(Lrx/Subscription;)V
    .registers 3
    .param p1, "t1"    # Lrx/Subscription;

    .line 130
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$2$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 131
    return-void
.end method

###### Class rx.internal.operators.OperatorPublish.InnerProducer (rx.internal.operators.OperatorPublish$InnerProducer)
.class final Lrx/internal/operators/OperatorPublish$InnerProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final NOT_REQUESTED:J = -0x4000000000000000L

.field static final UNSUBSCRIBED:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorPublish$PublishSubscriber;Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber<",
            "TT;>;",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 646
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 647
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    .line 648
    iput-object p2, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    .line 649
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorPublish$InnerProducer;->lazySet(J)V

    .line 650
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 6

    .line 737
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

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

.method public produced(J)J
    .registers 10
    .param p1, "n"    # J

    .line 705
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_52

    .line 710
    :goto_6
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v2

    .line 713
    .local v2, "r":J
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4a

    .line 717
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_17

    .line 718
    return-wide v4

    .line 721
    :cond_17
    const/4 v4, 0x0

    sub-long v4, v2, p1

    .line 723
    .local v4, "u":J
    cmp-long v6, v4, v0

    if-ltz v6, :cond_26

    .line 727
    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/OperatorPublish$InnerProducer;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 729
    return-wide v4

    .line 732
    .end local v2    # "r":J
    .end local v4    # "u":J
    :cond_25
    goto :goto_6

    .line 724
    .restart local v2    # "r":J
    .restart local v4    # "u":J
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") than requested ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    .end local v4    # "u":J
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Produced without request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    .end local v2    # "r":J
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cant produce zero or less"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .line 655
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    .line 656
    return-void

    .line 663
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v2

    .line 665
    .local v2, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_12

    .line 666
    return-void

    .line 669
    :cond_12
    cmp-long v4, v2, v0

    if-ltz v4, :cond_1b

    cmp-long v4, p1, v0

    if-nez v4, :cond_1b

    .line 670
    return-void

    .line 674
    :cond_1b
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    cmp-long v6, v2, v4

    if-nez v6, :cond_23

    .line 676
    move-wide v4, p1

    goto :goto_2f

    .line 679
    :cond_23
    const/4 v4, 0x0

    add-long v4, v2, p1

    .line 681
    .local v4, "u":J
    cmp-long v6, v4, v0

    if-gez v6, :cond_2f

    .line 683
    const-wide v4, 0x7fffffffffffffffL

    .line 687
    :cond_2f
    :goto_2f
    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/OperatorPublish$InnerProducer;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 690
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 691
    return-void

    .line 695
    .end local v2    # "r":J
    .end local v4    # "u":J
    :cond_3b
    goto :goto_7
.end method

.method public unsubscribe()V
    .registers 6

    .line 741
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v0

    .line 743
    .local v0, "r":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    .line 748
    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorPublish$InnerProducer;->getAndSet(J)J

    move-result-wide v0

    .line 750
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    .line 752
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    invoke-virtual {v2, p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->remove(Lrx/internal/operators/OperatorPublish$InnerProducer;)V

    .line 757
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    invoke-virtual {v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 760
    :cond_1c
    return-void
.end method

###### Class rx.internal.operators.OperatorPublish.PublishSubscriber (rx.internal.operators.OperatorPublish$PublishSubscriber)
.class final Lrx/internal/operators/OperatorPublish$PublishSubscriber;
.super Lrx/Subscriber;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field final producers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lrx/internal/operators/OperatorPublish$InnerProducer;",
            ">;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile terminalEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 202
    const/4 v0, 0x0

    new-array v1, v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 204
    new-array v0, v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 220
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    goto :goto_18

    :cond_11
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    :goto_18
    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    .line 224
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 226
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 228
    return-void
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorPublish$InnerProducer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$InnerProducer<",
            "TT;>;)Z"
        }
    .end annotation

    .line 291
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    if-eqz p1, :cond_25

    .line 297
    :goto_2
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 300
    .local v0, "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    sget-object v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    .line 301
    return v2

    .line 304
    :cond_10
    array-length v1, v0

    .line 305
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 306
    .local v3, "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    aput-object p1, v3, v1

    .line 309
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 310
    const/4 v2, 0x1

    return v2

    .line 314
    .end local v0    # "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v1    # "len":I
    .end local v3    # "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :cond_24
    goto :goto_2

    .line 292
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method checkTerminated(Ljava/lang/Object;Z)Z
    .registers 10
    .param p1, "term"    # Ljava/lang/Object;
    .param p2, "empty"    # Z

    .line 376
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_61

    .line 378
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_35

    .line 380
    if-eqz p2, :cond_61

    .line 383
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    :try_start_14
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .local v1, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v2, v1

    .local v0, "i$":I
    .local v2, "len$":I
    :goto_1f
    if-ge v0, v2, :cond_2b

    aget-object v4, v1, v0

    .line 398
    .local v4, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v5, v4, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_30

    .line 397
    .end local v4    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 403
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v2    # "len$":I
    :cond_2b
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    .line 404
    nop

    .line 406
    return v3

    .line 403
    :catchall_30
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    throw v0

    .line 409
    :cond_35
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 412
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    :try_start_40
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .local v2, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v4, v2

    .restart local v0    # "i$":I
    .local v4, "len$":I
    :goto_4b
    if-ge v0, v4, :cond_57

    aget-object v5, v2, v0

    .line 418
    .local v5, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v6, v5, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v6, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_5c

    .line 417
    .end local v5    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 423
    .end local v0    # "i$":I
    .end local v2    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v4    # "len$":I
    :cond_57
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    .line 424
    nop

    .line 426
    return v3

    .line 423
    :catchall_5c
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->unsubscribe()V

    throw v0

    .line 430
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_61
    return v0
.end method

.method dispatch()V
    .registers 28

    .line 441
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    move-object/from16 v1, p0

    monitor-enter p0

    .line 442
    :try_start_3
    iget-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 443
    iput-boolean v2, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    .line 444
    monitor-exit p0

    return-void

    .line 447
    :cond_c
    iput-boolean v2, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 448
    const/4 v3, 0x0

    iput-boolean v3, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    .line 449
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_181

    .line 458
    const/4 v0, 0x0

    .local v0, "skipFinal":Z
    :goto_13
    move v4, v0

    .line 469
    .end local v0    # "skipFinal":Z
    .local v4, "skipFinal":Z
    :try_start_14
    iget-object v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    move-object v5, v0

    .line 476
    .local v5, "term":Ljava/lang/Object;
    iget-object v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    move v6, v0

    .line 480
    .local v6, "empty":Z
    invoke-virtual {v1, v5, v6}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_172

    if-eqz v0, :cond_30

    .line 481
    const/4 v2, 0x1

    .line 606
    .end local v4    # "skipFinal":Z
    .local v2, "skipFinal":Z
    if-nez v2, :cond_2f

    .line 608
    monitor-enter p0

    .line 609
    :try_start_28
    iput-boolean v3, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0

    goto :goto_2f

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :goto_2f
    return-void

    .line 488
    .end local v2    # "skipFinal":Z
    .restart local v4    # "skipFinal":Z
    :cond_30
    if-nez v6, :cond_13f

    .line 492
    :try_start_32
    iget-object v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    move-object v7, v0

    .line 494
    .local v7, "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    array-length v0, v7

    move v8, v0

    .line 496
    .local v8, "len":I
    const-wide v9, 0x7fffffffffffffffL

    .line 498
    .local v9, "maxRequested":J
    const/4 v0, 0x0

    .line 503
    .local v0, "unsubscribed":I
    move-object v11, v7

    .local v11, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v12, v11
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_172

    move-wide v13, v9

    move v9, v0

    const/4 v0, 0x0

    .local v0, "i$":I
    .local v9, "unsubscribed":I
    .local v12, "len$":I
    .local v13, "maxRequested":J
    :goto_48
    const-wide/16 v15, 0x0

    if-ge v0, v12, :cond_6d

    :try_start_4c
    aget-object v10, v11, v0

    .line 504
    .local v10, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v10}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 507
    .local v19, "r":J
    move-wide/from16 v2, v19

    .end local v19    # "r":J
    .local v2, "r":J
    cmp-long v17, v2, v15

    if-ltz v17, :cond_60

    .line 508
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    move-wide v13, v15

    goto :goto_68

    .line 511
    :cond_60
    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v17, v2, v15

    if-nez v17, :cond_68

    .line 512
    add-int/lit8 v9, v9, 0x1

    .line 503
    .end local v2    # "r":J
    .end local v10    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_48

    .line 519
    .end local v0    # "i$":I
    .end local v11    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v12    # "len$":I
    :cond_6d
    const-wide/16 v2, 0x1

    if-ne v8, v9, :cond_9b

    .line 520
    iget-object v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    move-object v5, v0

    .line 522
    iget-object v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    .line 524
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_7f

    const/4 v0, 0x1

    goto :goto_80

    :cond_7f
    const/4 v0, 0x0

    :goto_80
    invoke-virtual {v1, v5, v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v0
    :try_end_84
    .catchall {:try_start_4c .. :try_end_84} :catchall_16a

    if-eqz v0, :cond_93

    .line 525
    const/4 v2, 0x1

    .line 606
    .end local v4    # "skipFinal":Z
    .local v2, "skipFinal":Z
    if-nez v2, :cond_92

    .line 608
    monitor-enter p0

    .line 609
    const/4 v3, 0x0

    :try_start_8b
    iput-boolean v3, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0

    goto :goto_92

    :catchall_8f
    move-exception v0

    monitor-exit p0
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_8f

    throw v0

    :cond_92
    :goto_92
    return-void

    .line 529
    .end local v2    # "skipFinal":Z
    .restart local v4    # "skipFinal":Z
    :cond_93
    :try_start_93
    invoke-virtual {v1, v2, v3}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->request(J)V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_16a

    .line 531
    nop

    .line 458
    move/from16 v25, v4

    goto/16 :goto_15f

    .line 536
    .end local v10    # "v":Ljava/lang/Object;
    :cond_9b
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_9c
    move v10, v0

    .line 537
    .end local v0    # "d":I
    .local v10, "d":I
    int-to-long v11, v10

    cmp-long v0, v11, v13

    if-gez v0, :cond_12e

    .line 538
    :try_start_a2
    iget-object v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    move-object v5, v0

    .line 539
    iget-object v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    .line 540
    .local v11, "v":Ljava/lang/Object;
    if-nez v11, :cond_b0

    const/4 v0, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v0, 0x0

    :goto_b1
    move v6, v0

    .line 542
    invoke-virtual {v1, v5, v6}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v0
    :try_end_b6
    .catchall {:try_start_a2 .. :try_end_b6} :catchall_172

    if-eqz v0, :cond_c5

    .line 543
    const/4 v2, 0x1

    .line 606
    .end local v4    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    if-nez v2, :cond_c4

    .line 608
    monitor-enter p0

    .line 609
    const/4 v3, 0x0

    :try_start_bd
    iput-boolean v3, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0

    goto :goto_c4

    :catchall_c1
    move-exception v0

    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_bd .. :try_end_c3} :catchall_c1

    throw v0

    :cond_c4
    :goto_c4
    return-void

    .line 547
    .end local v2    # "skipFinal":Z
    .restart local v4    # "skipFinal":Z
    :cond_c5
    if-eqz v6, :cond_cc

    .line 548
    nop

    .line 576
    move/from16 v25, v4

    goto/16 :goto_130

    .line 551
    :cond_cc
    :try_start_cc
    iget-object v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    .line 553
    .local v12, "value":Ljava/lang/Object;, "TT;"
    move-object/from16 v21, v7

    move-object/from16 v2, v21

    .local v2, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v0, v2

    move v3, v0

    const/4 v0, 0x0

    .local v0, "i$":I
    .local v3, "len$":I
    :goto_da
    move/from16 v22, v0

    move/from16 v15, v22

    .end local v0    # "i$":I
    .local v15, "i$":I
    if-ge v15, v3, :cond_123

    aget-object v0, v2, v15

    move-object/from16 v23, v0

    .line 558
    .local v23, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual/range {v23 .. v23}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v16
    :try_end_e8
    .catchall {:try_start_cc .. :try_end_e8} :catchall_172

    const-wide/16 v18, 0x0

    cmp-long v0, v16, v18

    if-lez v0, :cond_112

    .line 560
    move-object/from16 v24, v2

    move-object/from16 v2, v23

    .end local v23    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .local v2, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .local v24, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :try_start_f2
    iget-object v0, v2, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v0, v12}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_f7} :catch_102
    .catchall {:try_start_f2 .. :try_end_f7} :catchall_172

    .line 566
    nop

    .line 568
    move/from16 v26, v3

    move/from16 v25, v4

    const-wide/16 v3, 0x1

    .end local v3    # "len$":I
    .end local v4    # "skipFinal":Z
    .local v25, "skipFinal":Z
    .local v26, "len$":I
    :try_start_fe
    invoke-virtual {v2, v3, v4}, Lrx/internal/operators/OperatorPublish$InnerProducer;->produced(J)J

    goto :goto_118

    .line 561
    .end local v25    # "skipFinal":Z
    .end local v26    # "len$":I
    .restart local v3    # "len$":I
    .restart local v4    # "skipFinal":Z
    :catch_102
    move-exception v0

    move/from16 v26, v3

    move/from16 v25, v4

    const-wide/16 v3, 0x1

    .line 563
    .end local v3    # "len$":I
    .end local v4    # "skipFinal":Z
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v25    # "skipFinal":Z
    .restart local v26    # "len$":I
    invoke-virtual {v2}, Lrx/internal/operators/OperatorPublish$InnerProducer;->unsubscribe()V

    .line 564
    iget-object v3, v2, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 565
    goto :goto_118

    .line 553
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v24    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v25    # "skipFinal":Z
    .end local v26    # "len$":I
    .local v2, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .restart local v3    # "len$":I
    .restart local v4    # "skipFinal":Z
    :cond_112
    move-object/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v4

    .end local v2    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v3    # "len$":I
    .end local v4    # "skipFinal":Z
    .restart local v24    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .restart local v25    # "skipFinal":Z
    .restart local v26    # "len$":I
    :goto_118
    add-int/lit8 v0, v15, 0x1

    move-object/from16 v2, v24

    move/from16 v4, v25

    move/from16 v3, v26

    const-wide/16 v15, 0x0

    goto :goto_da

    .line 572
    .end local v15    # "i$":I
    .end local v24    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v25    # "skipFinal":Z
    .end local v26    # "len$":I
    .restart local v4    # "skipFinal":Z
    :cond_123
    move/from16 v25, v4

    .end local v4    # "skipFinal":Z
    .restart local v25    # "skipFinal":Z
    add-int/lit8 v0, v10, 0x1

    .line 573
    .end local v10    # "d":I
    .end local v11    # "v":Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/Object;, "TT;"
    .local v0, "d":I
    nop

    .line 536
    const-wide/16 v2, 0x1

    const-wide/16 v15, 0x0

    goto/16 :goto_9c

    .line 576
    .end local v0    # "d":I
    .end local v25    # "skipFinal":Z
    .restart local v4    # "skipFinal":Z
    .restart local v10    # "d":I
    :cond_12e
    move/from16 v25, v4

    .end local v4    # "skipFinal":Z
    .restart local v25    # "skipFinal":Z
    :goto_130
    if-lez v10, :cond_136

    .line 577
    int-to-long v2, v10

    invoke-virtual {v1, v2, v3}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->request(J)V

    .line 582
    :cond_136
    const-wide/16 v2, 0x0

    cmp-long v0, v13, v2

    if-eqz v0, :cond_141

    if-nez v6, :cond_141

    .line 583
    goto :goto_15f

    .line 589
    .end local v7    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v8    # "len":I
    .end local v9    # "unsubscribed":I
    .end local v10    # "d":I
    .end local v13    # "maxRequested":J
    .end local v25    # "skipFinal":Z
    .restart local v4    # "skipFinal":Z
    :cond_13f
    move/from16 v25, v4

    .end local v4    # "skipFinal":Z
    .restart local v25    # "skipFinal":Z
    :cond_141
    monitor-enter p0
    :try_end_142
    .catchall {:try_start_fe .. :try_end_142} :catchall_170

    .line 593
    :try_start_142
    iget-boolean v0, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    if-nez v0, :cond_15a

    .line 595
    const/4 v2, 0x0

    iput-boolean v2, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z
    :try_end_149
    .catchall {:try_start_142 .. :try_end_149} :catchall_165

    .line 597
    const/4 v2, 0x1

    .line 598
    .end local v25    # "skipFinal":Z
    .local v2, "skipFinal":Z
    :try_start_14a
    monitor-exit p0
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_157

    .line 606
    if-nez v2, :cond_156

    .line 608
    monitor-enter p0

    .line 609
    const/4 v3, 0x0

    :try_start_14f
    iput-boolean v3, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0

    goto :goto_156

    :catchall_153
    move-exception v0

    monitor-exit p0
    :try_end_155
    .catchall {:try_start_14f .. :try_end_155} :catchall_153

    throw v0

    :cond_156
    :goto_156
    return-void

    .line 602
    :catchall_157
    move-exception v0

    move v4, v2

    goto :goto_168

    .line 601
    .end local v2    # "skipFinal":Z
    .restart local v25    # "skipFinal":Z
    :cond_15a
    const/4 v2, 0x0

    :try_start_15b
    iput-boolean v2, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->missed:Z

    .line 602
    monitor-exit p0
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_165

    .line 603
    .end local v5    # "term":Ljava/lang/Object;
    .end local v6    # "empty":Z
    nop

    .line 458
    :goto_15f
    move/from16 v0, v25

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_13

    .line 602
    .restart local v5    # "term":Ljava/lang/Object;
    .restart local v6    # "empty":Z
    :catchall_165
    move-exception v0

    move/from16 v4, v25

    .end local v25    # "skipFinal":Z
    .restart local v4    # "skipFinal":Z
    :goto_168
    :try_start_168
    monitor-exit p0
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_16e

    :try_start_169
    throw v0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_16a

    .line 606
    .end local v5    # "term":Ljava/lang/Object;
    .end local v6    # "empty":Z
    :catchall_16a
    move-exception v0

    move/from16 v25, v4

    goto :goto_175

    .line 602
    .restart local v5    # "term":Ljava/lang/Object;
    .restart local v6    # "empty":Z
    :catchall_16e
    move-exception v0

    goto :goto_168

    .line 606
    .end local v4    # "skipFinal":Z
    .end local v5    # "term":Ljava/lang/Object;
    .end local v6    # "empty":Z
    .restart local v25    # "skipFinal":Z
    :catchall_170
    move-exception v0

    goto :goto_175

    .end local v25    # "skipFinal":Z
    .restart local v4    # "skipFinal":Z
    :catchall_172
    move-exception v0

    move/from16 v25, v4

    .end local v4    # "skipFinal":Z
    .restart local v25    # "skipFinal":Z
    :goto_175
    if-nez v25, :cond_180

    .line 608
    monitor-enter p0

    .line 609
    const/4 v2, 0x0

    :try_start_179
    iput-boolean v2, v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->emitting:Z

    .line 610
    monitor-exit p0

    goto :goto_180

    :catchall_17d
    move-exception v0

    monitor-exit p0
    :try_end_17f
    .catchall {:try_start_179 .. :try_end_17f} :catchall_17d

    throw v0

    :cond_180
    :goto_180
    throw v0

    .line 449
    .end local v25    # "skipFinal":Z
    :catchall_181
    move-exception v0

    :try_start_182
    monitor-exit p0
    :try_end_183
    .catchall {:try_start_182 .. :try_end_183} :catchall_181

    throw v0
.end method

.method init()V
    .registers 2

    .line 232
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;-><init>(Lrx/internal/operators/OperatorPublish$PublishSubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->add(Lrx/Subscription;)V

    .line 241
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .line 276
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 277
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 280
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 282
    :cond_f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 265
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 266
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 269
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 271
    :cond_f
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 253
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 254
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 258
    :cond_17
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 260
    :goto_1a
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 247
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->request(J)V

    .line 248
    return-void
.end method

.method remove(Lrx/internal/operators/OperatorPublish$InnerProducer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$InnerProducer<",
            "TT;>;)V"
        }
    .end annotation

    .line 325
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 327
    .local v0, "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    sget-object v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-eq v0, v1, :cond_47

    sget-object v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-ne v0, v1, :cond_11

    goto :goto_47

    .line 332
    :cond_11
    const/4 v1, -0x1

    .line 333
    .local v1, "j":I
    array-length v2, v0

    .line 334
    .local v2, "len":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v2, :cond_24

    .line 335
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 336
    move v1, v4

    .line 337
    goto :goto_24

    .line 334
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 341
    .end local v4    # "i":I
    :cond_24
    :goto_24
    if-gez v1, :cond_27

    .line 342
    return-void

    .line 348
    :cond_27
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    .line 349
    sget-object v3, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    goto :goto_3d

    .line 352
    :cond_2d
    add-int/lit8 v5, v2, -0x1

    new-array v5, v5, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 354
    .local v5, "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    invoke-static {v0, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    add-int/lit8 v3, v1, 0x1

    sub-int v6, v2, v1

    sub-int/2addr v6, v4

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    move-object v3, v5

    .end local v5    # "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .local v3, "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :goto_3d
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 360
    return-void

    .line 364
    .end local v0    # "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v1    # "j":I
    .end local v2    # "len":I
    .end local v3    # "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :cond_46
    goto :goto_0

    .line 328
    .restart local v0    # "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :cond_47
    :goto_47
    return-void
.end method

###### Class rx.internal.operators.OperatorPublish.PublishSubscriber.AnonymousClass1 (rx.internal.operators.OperatorPublish$PublishSubscriber$1)
.class Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorPublish$PublishSubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorPublish$PublishSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorPublish$PublishSubscriber;)V
    .registers 2

    .line 232
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;->this$0:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .line 235
    .local p0, "this":Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;->this$0:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;->this$0:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$PublishSubscriber$1;->this$0:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    return-void
.end method
