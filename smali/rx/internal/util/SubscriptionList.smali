###### Class rx.internal.util.SubscriptionList (rx.internal.util.SubscriptionList)
.class public final Lrx/internal/util/SubscriptionList;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private subscriptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lrx/Subscription;)V
    .registers 3
    .param p1, "s"    # Lrx/Subscription;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 42
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public varargs constructor <init>([Lrx/Subscription;)V
    .registers 4
    .param p1, "subscriptions"    # [Lrx/Subscription;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 38
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    if-nez p0, :cond_3

    .line 119
    return-void

    .line 121
    :cond_3
    const/4 v0, 0x0

    .line 122
    .local v0, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscription;

    .line 124
    .local v2, "s":Lrx/Subscription;
    :try_start_14
    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    .line 130
    goto :goto_24

    .line 125
    :catch_18
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/Throwable;
    if-nez v0, :cond_21

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 129
    :cond_21
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v2    # "s":Lrx/Subscription;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_24
    goto :goto_8

    .line 132
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_25
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 133
    return-void
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .registers 4
    .param p1, "s"    # Lrx/Subscription;

    .line 59
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    return-void

    .line 62
    :cond_7
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_26

    .line 63
    monitor-enter p0

    .line 64
    :try_start_c
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_21

    .line 65
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 66
    .local v0, "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    if-nez v0, :cond_1c

    .line 67
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 68
    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 70
    :cond_1c
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit p0

    return-void

    .line 73
    .end local v0    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    :cond_21
    monitor-exit p0

    goto :goto_26

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v0

    .line 76
    :cond_26
    :goto_26
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 77
    return-void
.end method

.method public clear()V
    .registers 4

    .line 136
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_17

    .line 138
    monitor-enter p0

    .line 139
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_11

    .line 140
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :try_start_8
    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 141
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    .line 142
    invoke-static {v1}, Lrx/internal/util/SubscriptionList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_17

    .line 141
    :catchall_f
    move-exception v0

    goto :goto_15

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :catchall_11
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v0

    .line 144
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :cond_17
    :goto_17
    return-void
.end method

.method public hasSubscriptions()Z
    .registers 3

    .line 150
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 151
    monitor-enter p0

    .line 152
    :try_start_6
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x1

    nop

    :cond_18
    monitor-exit p0

    return v1

    .line 153
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v0

    .line 155
    :cond_1d
    return v1
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    return v0
.end method

.method public remove(Lrx/Subscription;)V
    .registers 5
    .param p1, "s"    # Lrx/Subscription;

    .line 80
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_20

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "unsubscribe":Z
    monitor-enter p0

    .line 83
    :try_start_6
    iget-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 84
    .local v1, "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    iget-boolean v2, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v2, :cond_1b

    if-nez v1, :cond_f

    goto :goto_1b

    .line 87
    :cond_f
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 88
    .end local v1    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1d

    .line 89
    if-eqz v0, :cond_20

    .line 91
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_20

    .line 85
    .restart local v1    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit p0

    return-void

    .line 88
    .end local v1    # "subs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lrx/Subscription;>;"
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v1

    .line 94
    .end local v0    # "unsubscribe":Z
    :cond_20
    :goto_20
    return-void
.end method

.method public unsubscribe()V
    .registers 4

    .line 102
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_20

    .line 104
    monitor-enter p0

    .line 105
    const/4 v0, 0x0

    :try_start_6
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-eqz v1, :cond_c

    .line 106
    monitor-exit p0

    return-void

    .line 108
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    .line 109
    iget-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1d

    .line 110
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :try_start_11
    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 111
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    .line 113
    invoke-static {v1}, Lrx/internal/util/SubscriptionList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_20

    .line 111
    :catchall_18
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1e

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :catchall_1d
    move-exception v1

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1

    .line 115
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :cond_20
    :goto_20
    return-void
.end method
