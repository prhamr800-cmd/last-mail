###### Class rx.android.lifecycle.OperatorSubscribeUntil (rx.android.lifecycle.OperatorSubscribeUntil)
.class final Lrx/android/lifecycle/OperatorSubscribeUntil;
.super Ljava/lang/Object;
.source "OperatorSubscribeUntil.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
            "+TR;>;"
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
            "+TR;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil;, "Lrx/android/lifecycle/OperatorSubscribeUntil<TT;TR;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/android/lifecycle/OperatorSubscribeUntil;->other:Lrx/Observable;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 27
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil;, "Lrx/android/lifecycle/OperatorSubscribeUntil<TT;TR;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/lifecycle/OperatorSubscribeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil;, "Lrx/android/lifecycle/OperatorSubscribeUntil<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v0, 0x1

    .line 38
    .local v0, "pitfall":Z
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1, v0}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 40
    .local v1, "serial":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v2, Lrx/android/lifecycle/OperatorSubscribeUntil$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v1}, Lrx/android/lifecycle/OperatorSubscribeUntil$1;-><init>(Lrx/android/lifecycle/OperatorSubscribeUntil;Lrx/Subscriber;ZLrx/Subscriber;)V

    .line 63
    .local v2, "main":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v3, Lrx/android/lifecycle/OperatorSubscribeUntil$2;

    invoke-direct {v3, p0, v1, v2}, Lrx/android/lifecycle/OperatorSubscribeUntil$2;-><init>(Lrx/android/lifecycle/OperatorSubscribeUntil;Lrx/Subscriber;Lrx/Subscriber;)V

    .line 86
    .local v3, "so":Lrx/Subscriber;, "Lrx/Subscriber<TR;>;"
    invoke-virtual {v1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 87
    invoke-virtual {v1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 89
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 91
    iget-object v4, p0, Lrx/android/lifecycle/OperatorSubscribeUntil;->other:Lrx/Observable;

    invoke-virtual {v4, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 93
    return-object v2
.end method

###### Class rx.android.lifecycle.OperatorSubscribeUntil.AnonymousClass1 (rx.android.lifecycle.OperatorSubscribeUntil$1)
.class Lrx/android/lifecycle/OperatorSubscribeUntil$1;
.super Lrx/Subscriber;
.source "OperatorSubscribeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/lifecycle/OperatorSubscribeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/android/lifecycle/OperatorSubscribeUntil;

.field final synthetic val$serial:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/lifecycle/OperatorSubscribeUntil;Lrx/Subscriber;ZLrx/Subscriber;)V
    .registers 5
    .param p3, "x1"    # Z

    .line 40
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$1;, "Lrx/android/lifecycle/OperatorSubscribeUntil.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->this$0:Lrx/android/lifecycle/OperatorSubscribeUntil;

    iput-object p4, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 56
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$1;, "Lrx/android/lifecycle/OperatorSubscribeUntil.1;"
    :try_start_0
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 58
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 59
    nop

    .line 60
    return-void

    .line 58
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 48
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$1;, "Lrx/android/lifecycle/OperatorSubscribeUntil.1;"
    :try_start_0
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 50
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 51
    nop

    .line 52
    return-void

    .line 50
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$serial:Lrx/Subscriber;

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

    .line 43
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$1;, "Lrx/android/lifecycle/OperatorSubscribeUntil.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

###### Class rx.android.lifecycle.OperatorSubscribeUntil.AnonymousClass2 (rx.android.lifecycle.OperatorSubscribeUntil$2)
.class Lrx/android/lifecycle/OperatorSubscribeUntil$2;
.super Lrx/Subscriber;
.source "OperatorSubscribeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/lifecycle/OperatorSubscribeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/lifecycle/OperatorSubscribeUntil;

.field final synthetic val$main:Lrx/Subscriber;

.field final synthetic val$serial:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/lifecycle/OperatorSubscribeUntil;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 63
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$2;, "Lrx/android/lifecycle/OperatorSubscribeUntil.2;"
    iput-object p1, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$2;->this$0:Lrx/android/lifecycle/OperatorSubscribeUntil;

    iput-object p2, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$2;->val$serial:Lrx/Subscriber;

    iput-object p3, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$2;->val$main:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 71
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$2;, "Lrx/android/lifecycle/OperatorSubscribeUntil.2;"
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$2;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 72
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 76
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$2;, "Lrx/android/lifecycle/OperatorSubscribeUntil.2;"
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$2;->val$main:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$2;, "Lrx/android/lifecycle/OperatorSubscribeUntil.2;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Lrx/android/lifecycle/OperatorSubscribeUntil$2;->onCompleted()V

    .line 82
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 66
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$2;, "Lrx/android/lifecycle/OperatorSubscribeUntil.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/android/lifecycle/OperatorSubscribeUntil$2;->request(J)V

    .line 67
    return-void
.end method
