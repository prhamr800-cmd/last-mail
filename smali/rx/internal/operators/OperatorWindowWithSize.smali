###### Class rx.internal.operators.OperatorWindowWithSize (rx.internal.operators.OperatorWindowWithSize)
.class public final Lrx/internal/operators/OperatorWindowWithSize;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;,
        Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;,
        Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Lrx/Observable<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final size:I

.field final skip:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "size"    # I
    .param p2, "skip"    # I

    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    .line 45
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    iget v1, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    if-ne v0, v1, :cond_c

    .line 51
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithSize;Lrx/Subscriber;)V

    return-object v0

    .line 53
    :cond_c
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithSize;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.CountedSubject (rx.internal.operators.OperatorWindowWithSize$CountedSubject)
.class final Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountedSubject"
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
.field final consumer:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "TT;>;"
        }
    .end annotation
.end field

.field count:I

.field final producer:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observer;Lrx/Observable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "TT;>;",
            "Lrx/Observable<",
            "TT;>;)V"
        }
    .end annotation

    .line 232
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    .local p1, "consumer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->consumer:Lrx/Observer;

    .line 234
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->producer:Lrx/Observable;

    .line 235
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.ExactSubscriber (rx.internal.operators.OperatorWindowWithSize$ExactSubscriber)
.class final Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field count:I

.field volatile noWindow:Z

.field final parentSubscription:Lrx/Subscription;

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithSize;

.field window:Lrx/internal/operators/BufferUntilSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BufferUntilSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithSize;Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->noWindow:Z

    .line 61
    iput-object p0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->parentSubscription:Lrx/Subscription;

    .line 68
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    .line 72
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;Lrx/internal/operators/OperatorWindowWithSize;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 83
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;-><init>(Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;Lrx/internal/operators/OperatorWindowWithSize;)V

    invoke-virtual {p2, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 130
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber;->onCompleted()V

    .line 133
    :cond_9
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 134
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 122
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/BufferUntilSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 125
    :cond_9
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    if-nez v0, :cond_14

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->noWindow:Z

    .line 105
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    .line 106
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 108
    :cond_14
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/BufferUntilSubscriber;->onNext(Ljava/lang/Object;)V

    .line 109
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->count:I

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_3e

    .line 110
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber;->onCompleted()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    .line 112
    iput-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->noWindow:Z

    .line 113
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 114
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->parentSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 115
    return-void

    .line 118
    :cond_3e
    return-void
.end method

.method requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->request(J)V

    .line 99
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.ExactSubscriber.AnonymousClass1 (rx.internal.operators.OperatorWindowWithSize$ExactSubscriber$1)
.class Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithSize;Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

.field final synthetic val$this$0:Lrx/internal/operators/OperatorWindowWithSize;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;Lrx/internal/operators/OperatorWindowWithSize;)V
    .registers 3

    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;->val$this$0:Lrx/internal/operators/OperatorWindowWithSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->noWindow:Z

    if-eqz v0, :cond_d

    .line 78
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->parentSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 80
    :cond_d
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.ExactSubscriber.AnonymousClass2 (rx.internal.operators.OperatorWindowWithSize$ExactSubscriber$2)
.class Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithSize;Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

.field final synthetic val$this$0:Lrx/internal/operators/OperatorWindowWithSize;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;Lrx/internal/operators/OperatorWindowWithSize;)V
    .registers 3

    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;, "Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;->val$this$0:Lrx/internal/operators/OperatorWindowWithSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;, "Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber.2;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2e

    .line 87
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

    iget-object v2, v2, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    int-to-long v2, v2

    mul-long v2, v2, p1

    .line 88
    .local v2, "u":J
    const/16 v4, 0x1f

    ushr-long v4, v2, v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_29

    div-long v0, v2, p1

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

    iget-object v4, v4, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    iget v4, v4, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-eqz v6, :cond_29

    .line 89
    const-wide v2, 0x7fffffffffffffffL

    .line 91
    :cond_29
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->requestMore(J)V

    .line 93
    .end local v2    # "u":J
    :cond_2e
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.InexactSubscriber (rx.internal.operators.OperatorWindowWithSize$InexactSubscriber)
.class final Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InexactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field count:I

.field final parentSubscription:Lrx/Subscription;

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithSize;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithSize;Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.InexactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    .line 142
    iput-object p0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->parentSubscription:Lrx/Subscription;

    .line 150
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->child:Lrx/Subscriber;

    .line 154
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;Lrx/internal/operators/OperatorWindowWithSize;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 165
    return-void
.end method


# virtual methods
.method createCountedSubject()Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<",
            "TT;>;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.InexactSubscriber;"
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    .line 220
    .local v0, "bus":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;

    invoke-direct {v1, v0, v0}, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;-><init>(Lrx/Observer;Lrx/Observable;)V

    return-object v1
.end method

.method public onCompleted()V
    .registers 5

    .line 210
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.InexactSubscriber;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;

    .line 213
    .local v2, "cs":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    iget-object v3, v2, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3}, Lrx/Observer;->onCompleted()V

    .line 214
    .end local v2    # "cs":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    goto :goto_10

    .line 215
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_22
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 216
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 200
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.InexactSubscriber;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 201
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;

    .line 203
    .local v2, "cs":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    iget-object v3, v2, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 204
    .end local v2    # "cs":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    goto :goto_10

    .line 205
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_22
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.InexactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->count:I

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_25

    .line 176
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 177
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->createCountedSubject()Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;

    move-result-object v0

    .line 178
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->child:Lrx/Subscriber;

    iget-object v2, v0, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->producer:Lrx/Observable;

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 183
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    :cond_25
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;>;"
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;

    .line 186
    .local v1, "cs":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    iget-object v2, v1, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->consumer:Lrx/Observer;

    invoke-interface {v2, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 187
    iget v2, v1, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->count:I

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    iget v3, v3, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    if-ne v2, v3, :cond_50

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 189
    iget-object v2, v1, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->consumer:Lrx/Observer;

    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    .line 191
    .end local v1    # "cs":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    :cond_50
    goto :goto_2b

    .line 192
    :cond_51
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 193
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->parentSubscription:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 194
    return-void

    .line 196
    :cond_67
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 170
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.InexactSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->request(J)V

    .line 171
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.InexactSubscriber.AnonymousClass1 (rx.internal.operators.OperatorWindowWithSize$InexactSubscriber$1)
.class Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithSize;Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

.field final synthetic val$this$0:Lrx/internal/operators/OperatorWindowWithSize;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;Lrx/internal/operators/OperatorWindowWithSize;)V
    .registers 3

    .line 154
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;->val$this$0:Lrx/internal/operators/OperatorWindowWithSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .line 159
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 160
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->parentSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 162
    :cond_17
    return-void
.end method
