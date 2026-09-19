###### Class rx.internal.util.SubscriptionIndexedRingBuffer (rx.internal.util.SubscriptionIndexedRingBuffer)
.class public final Lrx/internal/util/SubscriptionIndexedRingBuffer;
.super Ljava/lang/Object;
.source "SubscriptionIndexedRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lrx/Subscription;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final UNSUBSCRIBE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Subscription;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSUBSCRIBED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/util/SubscriptionIndexedRingBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile subscriptions:Lrx/internal/util/IndexedRingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/IndexedRingBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const-class v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;

    const-string v1, "unsubscribed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->UNSUBSCRIBED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 136
    new-instance v0, Lrx/internal/util/SubscriptionIndexedRingBuffer$1;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionIndexedRingBuffer$1;-><init>()V

    sput-object v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->UNSUBSCRIBE:Lrx/functions/Func1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lrx/internal/util/IndexedRingBuffer;->getInstance()Lrx/internal/util/IndexedRingBuffer;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    .line 36
    return-void
.end method

.method private static unsubscribeFromAll(Lrx/internal/util/IndexedRingBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/IndexedRingBuffer<",
            "+",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p0, "subscriptions":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<+Lrx/Subscription;>;"
    if-nez p0, :cond_3

    .line 129
    return-void

    .line 133
    :cond_3
    sget-object v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->UNSUBSCRIBE:Lrx/functions/Func1;

    invoke-virtual {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;)I

    .line 134
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lrx/Subscription;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    .local p1, "s":Lrx/Subscription;, "TT;"
    monitor-enter p0

    .line 55
    :try_start_1
    iget v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    if-nez v0, :cond_b

    goto :goto_1a

    .line 59
    :cond_b
    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-virtual {v0, p1}, Lrx/internal/util/IndexedRingBuffer;->add(Ljava/lang/Object;)I

    move-result v0

    .line 61
    .local v0, "n":I
    iget v2, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    if-ne v2, v1, :cond_18

    .line 62
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_20

    .line 64
    :cond_18
    monitor-exit p0

    return v0

    .line 56
    .end local v0    # "n":I
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_20

    .line 57
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 54
    .end local p1    # "s":Lrx/Subscription;, "TT;"
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public forEach(Lrx/functions/Func1;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 111
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized forEach(Lrx/functions/Func1;I)I
    .registers 5
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 121
    :try_start_1
    iget v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    if-nez v0, :cond_b

    goto :goto_13

    .line 124
    :cond_b
    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-virtual {v0, p1, p2}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    monitor-exit p0

    return v0

    .line 122
    :cond_13
    :goto_13
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 120
    .end local p1    # "action":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;Ljava/lang/Boolean;>;"
    .end local p2    # "startIndex":I
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isUnsubscribed()Z
    .registers 3

    .line 40
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    iget v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public remove(I)V
    .registers 4
    .param p1, "n"    # I

    .line 74
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    iget v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    if-eqz v0, :cond_1c

    if-gez p1, :cond_c

    goto :goto_1c

    .line 77
    :cond_c
    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-virtual {v0, p1}, Lrx/internal/util/IndexedRingBuffer;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    .line 78
    .local v0, "t":Lrx/Subscription;
    if-eqz v0, :cond_1b

    .line 80
    if-eqz v0, :cond_1b

    .line 81
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 84
    :cond_1b
    return-void

    .line 75
    .end local v0    # "t":Lrx/Subscription;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public removeSilently(I)V
    .registers 4
    .param p1, "n"    # I

    .line 92
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    iget v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    if-eqz v0, :cond_12

    if-gez p1, :cond_c

    goto :goto_12

    .line 95
    :cond_c
    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-virtual {v0, p1}, Lrx/internal/util/IndexedRingBuffer;->remove(I)Ljava/lang/Object;

    .line 96
    return-void

    .line 93
    :cond_12
    :goto_12
    return-void
.end method

.method public unsubscribe()V
    .registers 4

    .line 100
    .local p0, "this":Lrx/internal/util/SubscriptionIndexedRingBuffer;, "Lrx/internal/util/SubscriptionIndexedRingBuffer<TT;>;"
    sget-object v0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->UNSUBSCRIBED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    if-eqz v0, :cond_1b

    .line 102
    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    invoke-static {v0}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->unsubscribeFromAll(Lrx/internal/util/IndexedRingBuffer;)V

    .line 104
    iget-object v0, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    .line 105
    .local v0, "s":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionIndexedRingBuffer;->subscriptions:Lrx/internal/util/IndexedRingBuffer;

    .line 106
    invoke-virtual {v0}, Lrx/internal/util/IndexedRingBuffer;->unsubscribe()V

    .line 108
    .end local v0    # "s":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TT;>;"
    :cond_1b
    return-void
.end method

###### Class rx.internal.util.SubscriptionIndexedRingBuffer.AnonymousClass1 (rx.internal.util.SubscriptionIndexedRingBuffer$1)
.class final Lrx/internal/util/SubscriptionIndexedRingBuffer$1;
.super Ljava/lang/Object;
.source "SubscriptionIndexedRingBuffer.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/SubscriptionIndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Subscription;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lrx/Subscription;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "s"    # Lrx/Subscription;

    .line 140
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 141
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 136
    move-object v0, p1

    check-cast v0, Lrx/Subscription;

    invoke-virtual {p0, v0}, Lrx/internal/util/SubscriptionIndexedRingBuffer$1;->call(Lrx/Subscription;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
