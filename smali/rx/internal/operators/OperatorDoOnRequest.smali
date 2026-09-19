###### Class rx.internal.operators.OperatorDoOnRequest (rx.internal.operators.OperatorDoOnRequest)
.class public Lrx/internal/operators/OperatorDoOnRequest;
.super Ljava/lang/Object;
.source "OperatorDoOnRequest.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;
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
.field private final request:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Action1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest;, "Lrx/internal/operators/OperatorDoOnRequest<TT;>;"
    .local p1, "request":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnRequest;->request:Lrx/functions/Action1;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorDoOnRequest;)Lrx/functions/Action1;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorDoOnRequest;

    .line 29
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest;->request:Lrx/functions/Action1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest;, "Lrx/internal/operators/OperatorDoOnRequest<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDoOnRequest;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest;, "Lrx/internal/operators/OperatorDoOnRequest<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;-><init>(Lrx/Subscriber;Lrx/internal/operators/OperatorDoOnRequest$1;)V

    .line 42
    .local v0, "parent":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnRequest$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorDoOnRequest$1;-><init>(Lrx/internal/operators/OperatorDoOnRequest;Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 51
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 52
    return-object v0
.end method

###### Class rx.internal.operators.OperatorDoOnRequest.AnonymousClass1 (rx.internal.operators.OperatorDoOnRequest$1)
.class Lrx/internal/operators/OperatorDoOnRequest$1;
.super Ljava/lang/Object;
.source "OperatorDoOnRequest.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDoOnRequest;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorDoOnRequest;

.field final synthetic val$parent:Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDoOnRequest;Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;)V
    .registers 3

    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$1;, "Lrx/internal/operators/OperatorDoOnRequest.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnRequest$1;->this$0:Lrx/internal/operators/OperatorDoOnRequest;

    iput-object p2, p0, Lrx/internal/operators/OperatorDoOnRequest$1;->val$parent:Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 5
    .param p1, "n"    # J

    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$1;, "Lrx/internal/operators/OperatorDoOnRequest.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$1;->this$0:Lrx/internal/operators/OperatorDoOnRequest;

    invoke-static {v0}, Lrx/internal/operators/OperatorDoOnRequest;->access$100(Lrx/internal/operators/OperatorDoOnRequest;)Lrx/functions/Action1;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$1;->val$parent:Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->access$200(Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;J)V

    .line 48
    return-void
.end method

###### Class rx.internal.operators.OperatorDoOnRequest.ParentSubscriber (rx.internal.operators.OperatorDoOnRequest$ParentSubscriber)
.class final Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorDoOnRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDoOnRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParentSubscriber"
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
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;Lrx/internal/operators/OperatorDoOnRequest$1;)V
    .registers 3
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # Lrx/internal/operators/OperatorDoOnRequest$1;

    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;J)V
    .registers 3
    .param p0, "x0"    # Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;
    .param p1, "x1"    # J

    .line 55
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->requestMore(J)V

    return-void
.end method

.method private requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->request(J)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
