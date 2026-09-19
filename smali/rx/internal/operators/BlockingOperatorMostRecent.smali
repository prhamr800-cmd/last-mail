###### Class rx.internal.operators.BlockingOperatorMostRecent (rx.internal.operators.BlockingOperatorMostRecent)
.class public final Lrx/internal/operators/BlockingOperatorMostRecent;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mostRecent(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorMostRecent$1;

    invoke-direct {v0, p1, p0}, Lrx/internal/operators/BlockingOperatorMostRecent$1;-><init>(Ljava/lang/Object;Lrx/Observable;)V

    return-object v0
.end method

###### Class rx.internal.operators.BlockingOperatorMostRecent.AnonymousClass1 (rx.internal.operators.BlockingOperatorMostRecent$1)
.class final Lrx/internal/operators/BlockingOperatorMostRecent$1;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorMostRecent;->mostRecent(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$initialValue:Ljava/lang/Object;

.field final synthetic val$source:Lrx/Observable;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lrx/Observable;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$initialValue:Ljava/lang/Object;

    iput-object p2, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$source:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$initialValue:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;-><init>(Ljava/lang/Object;Lrx/internal/operators/BlockingOperatorMostRecent$1;)V

    .line 56
    .local v0, "mostRecentObserver":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 58
    invoke-virtual {v0}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->getIterable()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

###### Class rx.internal.operators.BlockingOperatorMostRecent.MostRecentObserver (rx.internal.operators.BlockingOperatorMostRecent$MostRecentObserver)
.class final Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;
.super Lrx/Subscriber;
.source "BlockingOperatorMostRecent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorMostRecent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MostRecentObserver"
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
.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 64
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    .line 68
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lrx/internal/operators/BlockingOperatorMostRecent$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lrx/internal/operators/BlockingOperatorMostRecent$1;

    .line 63
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getIterable()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;-><init>(Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 2

    .line 73
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 78
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 84
    return-void
.end method

###### Class rx.internal.operators.BlockingOperatorMostRecent.MostRecentObserver.AnonymousClass1 (rx.internal.operators.BlockingOperatorMostRecent$MostRecentObserver$1)
.class Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->getIterable()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private buf:Ljava/lang/Object;

.field final synthetic this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;


# direct methods
.method constructor <init>(Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;)V
    .registers 2

    .line 92
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 p1, 0x0

    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 100
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v0, v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v0, v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    if-nez v1, :cond_b

    .line 109
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v1, v1, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    .line 110
    :cond_b
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v1, v1, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 112
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v1, v1, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 115
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v1, v1, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_45

    .line 118
    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    return-object v1

    .line 113
    :cond_30
    :try_start_30
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v1, v1, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 111
    :cond_3f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_45

    .line 118
    :catchall_45
    move-exception v1

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    throw v1
.end method

.method public remove()V
    .registers 3

    .line 124
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
