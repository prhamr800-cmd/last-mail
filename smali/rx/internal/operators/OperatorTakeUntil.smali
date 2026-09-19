###### Class rx.internal.operators.OperatorTakeUntil (rx.internal.operators.OperatorTakeUntil)
.class public final Lrx/internal/operators/OperatorTakeUntil;
.super Ljava/lang/Object;
.source "OperatorTakeUntil.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TE;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil;, "Lrx/internal/operators/OperatorTakeUntil<TT;TE;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntil;->other:Lrx/Observable;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil;, "Lrx/internal/operators/OperatorTakeUntil<TT;TE;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorTakeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "-TT;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil;, "Lrx/internal/operators/OperatorTakeUntil<TT;TE;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 41
    .local v0, "serial":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorTakeUntil$1;

    invoke-direct {v2, p0, v0, v1, v0}, Lrx/internal/operators/OperatorTakeUntil$1;-><init>(Lrx/internal/operators/OperatorTakeUntil;Lrx/Subscriber;ZLrx/Subscriber;)V

    move-object v1, v2

    .line 64
    .local v1, "main":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorTakeUntil$2;

    invoke-direct {v2, p0, v1}, Lrx/internal/operators/OperatorTakeUntil$2;-><init>(Lrx/internal/operators/OperatorTakeUntil;Lrx/Subscriber;)V

    .line 87
    .local v2, "so":Lrx/Subscriber;, "Lrx/Subscriber<TE;>;"
    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 88
    invoke-virtual {v0, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 90
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 92
    iget-object v3, p0, Lrx/internal/operators/OperatorTakeUntil;->other:Lrx/Observable;

    invoke-virtual {v3, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 94
    return-object v1
.end method

###### Class rx.internal.operators.OperatorTakeUntil.AnonymousClass1 (rx.internal.operators.OperatorTakeUntil$1)
.class Lrx/internal/operators/OperatorTakeUntil$1;
.super Lrx/Subscriber;
.source "OperatorTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeUntil;

.field final synthetic val$serial:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeUntil;Lrx/Subscriber;ZLrx/Subscriber;)V
    .registers 5
    .param p3, "x1"    # Z

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntil$1;->this$0:Lrx/internal/operators/OperatorTakeUntil;

    iput-object p4, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 60
    nop

    .line 61
    return-void

    .line 59
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 51
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 52
    nop

    .line 53
    return-void

    .line 51
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

###### Class rx.internal.operators.OperatorTakeUntil.AnonymousClass2 (rx.internal.operators.OperatorTakeUntil$2)
.class Lrx/internal/operators/OperatorTakeUntil$2;
.super Lrx/Subscriber;
.source "OperatorTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeUntil;

.field final synthetic val$main:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeUntil;Lrx/Subscriber;)V
    .registers 3

    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntil$2;->this$0:Lrx/internal/operators/OperatorTakeUntil;

    iput-object p2, p0, Lrx/internal/operators/OperatorTakeUntil$2;->val$main:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$2;->val$main:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 73
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$2;->val$main:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    .local p1, "t":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeUntil$2;->onCompleted()V

    .line 83
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeUntil$2;->request(J)V

    .line 68
    return-void
.end method
