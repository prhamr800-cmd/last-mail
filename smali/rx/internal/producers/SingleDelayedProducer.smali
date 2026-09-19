###### Class rx.internal.producers.SingleDelayedProducer (rx.internal.producers.SingleDelayedProducer)
.class public final Lrx/internal/producers/SingleDelayedProducer;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SingleDelayedProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field static final HAS_REQUEST_HAS_VALUE:I = 0x3

.field static final HAS_REQUEST_NO_VALUE:I = 0x2

.field static final NO_REQUEST_HAS_VALUE:I = 0x1

.field static final NO_REQUEST_NO_VALUE:I = 0x0

.field private static final serialVersionUID:J = -0x27e09bdfa51658b2L


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/producers/SingleDelayedProducer;->child:Lrx/Subscriber;

    .line 48
    return-void
.end method

.method private static emit(Lrx/Subscriber;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 98
    .local p0, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    return-void

    .line 102
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_16

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 110
    return-void

    .line 112
    :cond_12
    invoke-virtual {p0}, Lrx/Subscriber;->onCompleted()V

    .line 114
    return-void

    .line 103
    :catch_16
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 105
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 106
    .local v1, "e1":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 52
    .local p0, "this":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    .line 55
    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    .line 56
    return-void

    .line 59
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lrx/internal/producers/SingleDelayedProducer;->get()I

    move-result v0

    .line 60
    .local v0, "s":I
    if-nez v0, :cond_1a

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 62
    goto :goto_b

    .line 65
    :cond_1a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 66
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 67
    iget-object v1, p0, Lrx/internal/producers/SingleDelayedProducer;->child:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/producers/SingleDelayedProducer;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lrx/internal/producers/SingleDelayedProducer;->emit(Lrx/Subscriber;Ljava/lang/Object;)V

    .line 70
    :cond_2b
    return-void

    .line 53
    .end local v0    # "s":I
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-virtual {p0}, Lrx/internal/producers/SingleDelayedProducer;->get()I

    move-result v0

    .line 77
    .local v0, "s":I
    if-nez v0, :cond_11

    .line 78
    iput-object p1, p0, Lrx/internal/producers/SingleDelayedProducer;->value:Ljava/lang/Object;

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_20

    .line 80
    goto :goto_0

    .line 83
    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 84
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 85
    iget-object v1, p0, Lrx/internal/producers/SingleDelayedProducer;->child:Lrx/Subscriber;

    invoke-static {v1, p1}, Lrx/internal/producers/SingleDelayedProducer;->emit(Lrx/Subscriber;Ljava/lang/Object;)V

    .line 88
    :cond_20
    return-void
.end method
