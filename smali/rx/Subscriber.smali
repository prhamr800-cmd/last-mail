###### Class rx.Subscriber (rx.Subscriber)
.class public abstract Lrx/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lrx/Observer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer<",
        "TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field private final cs:Lrx/internal/util/SubscriptionList;

.field private final op:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "*>;"
        }
    .end annotation
.end field

.field private p:Lrx/Producer;

.field private requested:J


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 43
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "*>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p1, "op":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    .line 48
    return-void
.end method

.method protected constructor <init>(Lrx/Subscriber;Z)V
    .registers 5
    .param p2, "shareSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "*>;Z)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p1, "op":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lrx/Subscriber;->requested:J

    .line 63
    iput-object p1, p0, Lrx/Subscriber;->op:Lrx/Subscriber;

    .line 64
    if-eqz p2, :cond_10

    if-eqz p1, :cond_10

    iget-object v0, p1, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    goto :goto_15

    :cond_10
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    :goto_15
    iput-object v0, p0, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    .line 65
    return-void
.end method


# virtual methods
.method public final add(Lrx/Subscription;)V
    .registers 3
    .param p1, "s"    # Lrx/Subscription;

    .line 76
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 77
    return-void
.end method

.method public final isUnsubscribed()Z
    .registers 2

    .line 91
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .registers 1

    .line 101
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    return-void
.end method

.method protected final request(J)V
    .registers 11
    .param p1, "n"    # J

    .line 124
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_37

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "shouldRequest":Lrx/Producer;
    monitor-enter p0

    .line 129
    :try_start_8
    iget-object v3, p0, Lrx/Subscriber;->p:Lrx/Producer;

    if-eqz v3, :cond_10

    .line 130
    iget-object v0, p0, Lrx/Subscriber;->p:Lrx/Producer;

    move-object v2, v0

    goto :goto_2d

    .line 131
    :cond_10
    iget-wide v3, p0, Lrx/Subscriber;->requested:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_1b

    .line 132
    iput-wide p1, p0, Lrx/Subscriber;->requested:J

    goto :goto_2d

    .line 134
    :cond_1b
    iget-wide v3, p0, Lrx/Subscriber;->requested:J

    const/4 v5, 0x0

    add-long/2addr v3, p1

    .line 136
    .local v3, "total":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_2b

    .line 137
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lrx/Subscriber;->requested:J

    goto :goto_2d

    .line 139
    :cond_2b
    iput-wide v3, p0, Lrx/Subscriber;->requested:J

    .line 142
    .end local v3    # "total":J
    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_34

    .line 144
    if-eqz v2, :cond_33

    .line 145
    invoke-interface {v2, p1, p2}, Lrx/Producer;->request(J)V

    .line 147
    :cond_33
    return-void

    .line 142
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    .line 125
    .end local v2    # "shouldRequest":Lrx/Producer;
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number requested cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 8
    .param p1, "producer"    # Lrx/Producer;

    .line 156
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const/4 v0, 0x0

    .line 157
    .local v0, "setProducer":Z
    monitor-enter p0

    .line 158
    :try_start_2
    iget-wide v1, p0, Lrx/Subscriber;->requested:J
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_33

    .line 159
    .local v1, "toRequest":J
    :try_start_4
    iput-object p1, p0, Lrx/Subscriber;->p:Lrx/Producer;

    .line 160
    iget-object v3, p0, Lrx/Subscriber;->op:Lrx/Subscriber;

    const-wide/high16 v4, -0x8000000000000000L

    if-eqz v3, :cond_11

    .line 162
    cmp-long v3, v1, v4

    if-nez v3, :cond_11

    .line 164
    const/4 v0, 0x1

    .line 168
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_31

    .line 170
    if-eqz v0, :cond_1c

    .line 171
    iget-object v3, p0, Lrx/Subscriber;->op:Lrx/Subscriber;

    iget-object v4, p0, Lrx/Subscriber;->p:Lrx/Producer;

    invoke-virtual {v3, v4}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_30

    .line 174
    :cond_1c
    cmp-long v3, v1, v4

    if-nez v3, :cond_2b

    .line 175
    iget-object v3, p0, Lrx/Subscriber;->p:Lrx/Producer;

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v3, v4, v5}, Lrx/Producer;->request(J)V

    goto :goto_30

    .line 177
    :cond_2b
    iget-object v3, p0, Lrx/Subscriber;->p:Lrx/Producer;

    invoke-interface {v3, v1, v2}, Lrx/Producer;->request(J)V

    .line 180
    :goto_30
    return-void

    .line 168
    :catchall_31
    move-exception v3

    goto :goto_36

    .end local v1    # "toRequest":J
    :catchall_33
    move-exception v3

    const-wide/16 v1, 0x0

    .restart local v1    # "toRequest":J
    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_31

    throw v3
.end method

.method public final unsubscribe()V
    .registers 2

    .line 81
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lrx/Subscriber;->cs:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 82
    return-void
.end method
