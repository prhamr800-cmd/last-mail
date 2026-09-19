###### Class rx.internal.operators.BackpressureUtils (rx.internal.operators.BackpressureUtils)
.class public final Lrx/internal/operators/BackpressureUtils;
.super Ljava/lang/Object;
.source "BackpressureUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 10
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .line 74
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 75
    .local v0, "current":J
    add-long v2, v0, p1

    .line 77
    .local v2, "next":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_11

    .line 78
    const-wide v2, 0x7fffffffffffffffL

    .line 80
    :cond_11
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 81
    return-wide v0

    .line 83
    .end local v0    # "current":J
    .end local v2    # "next":J
    :cond_18
    goto :goto_0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J
    .registers 14
    .param p2, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "TT;>;TT;J)J"
        }
    .end annotation

    .line 46
    .local p0, "requested":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    .line 47
    .local v6, "current":J
    add-long v0, v6, p2

    .line 49
    .local v0, "next":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    .line 50
    const-wide v0, 0x7fffffffffffffffL

    .line 52
    .end local v0    # "next":J
    .local v8, "next":J
    :cond_11
    move-wide v8, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, v6

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 53
    return-wide v6

    .line 55
    .end local v6    # "current":J
    .end local v8    # "next":J
    :cond_1d
    goto :goto_0
.end method
