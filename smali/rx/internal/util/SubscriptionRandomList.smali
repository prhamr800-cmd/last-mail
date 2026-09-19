###### Class rx.internal.util.SubscriptionRandomList (rx.internal.util.SubscriptionRandomList)
.class public final Lrx/internal/util/SubscriptionRandomList;
.super Ljava/lang/Object;
.source "SubscriptionRandomList.java"

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


# instance fields
.field private subscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    .line 39
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lrx/Subscription;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 139
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_3

    .line 140
    return-void

    .line 142
    :cond_3
    const/4 v0, 0x0

    .line 143
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

    .line 145
    .local v2, "s":Lrx/Subscription;, "TT;"
    :try_start_14
    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    .line 151
    goto :goto_24

    .line 146
    :catch_18
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Throwable;
    if-nez v0, :cond_21

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 150
    :cond_21
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v2    # "s":Lrx/Subscription;, "TT;"
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_24
    goto :goto_8

    .line 153
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_25
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 154
    return-void
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    .local p1, "s":Lrx/Subscription;, "TT;"
    const/4 v0, 0x0

    .line 56
    .local v0, "unsubscribe":Lrx/Subscription;
    monitor-enter p0

    .line 57
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-eqz v1, :cond_8

    .line 58
    move-object v0, p1

    goto :goto_19

    .line 60
    :cond_8
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_14

    .line 61
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 63
    :cond_14
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_20

    .line 66
    if-eqz v0, :cond_1f

    .line 68
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 70
    :cond_1f
    return-void

    .line 65
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public clear()V
    .registers 3

    .line 98
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    monitor-enter p0

    .line 100
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_b

    goto :goto_16

    .line 103
    :cond_b
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    move-object v0, v1

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 106
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_18

    .line 107
    invoke-static {v0}, Lrx/internal/util/SubscriptionRandomList;->unsubscribeFromAll(Ljava/util/Collection;)V

    .line 108
    return-void

    .line 101
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit p0

    return-void

    .line 106
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public forEach(Lrx/functions/Action1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "TT;>;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    .local p1, "action":Lrx/functions/Action1;, "Lrx/functions/Action1<TT;>;"
    const/4 v0, 0x0

    .line 112
    .local v0, "ss":[Lrx/Subscription;, "[TT;"
    monitor-enter p0

    .line 113
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v1, :cond_23

    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_b

    goto :goto_23

    .line 116
    :cond_b
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/Subscription;

    move-object v0, v1

    .line 117
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_25

    .line 118
    move-object v1, v0

    .local v1, "arr$":[Lrx/Subscription;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_18
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 119
    .local v4, "t":Lrx/Subscription;, "TT;"
    invoke-interface {p1, v4}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 118
    .end local v4    # "t":Lrx/Subscription;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 121
    .end local v1    # "arr$":[Lrx/Subscription;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_22
    return-void

    .line 114
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit p0

    return-void

    .line 117
    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public declared-synchronized isUnsubscribed()Z
    .registers 2

    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    monitor-enter p0

    .line 43
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Lrx/Subscription;)V
    .registers 4
    .param p1, "s"    # Lrx/Subscription;

    .line 79
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    const/4 v0, 0x0

    .line 80
    .local v0, "unsubscribe":Z
    monitor-enter p0

    .line 81
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_b

    goto :goto_19

    .line 84
    :cond_b
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .line 85
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_1b

    .line 86
    if-eqz v0, :cond_18

    .line 88
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 90
    :cond_18
    return-void

    .line 82
    :cond_19
    :goto_19
    :try_start_19
    monitor-exit p0

    return-void

    .line 85
    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public unsubscribe()V
    .registers 3

    .line 125
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    monitor-enter p0

    .line 127
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-eqz v1, :cond_8

    .line 128
    monitor-exit p0

    return-void

    .line 130
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    .line 131
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    move-object v0, v1

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 133
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_16

    .line 135
    invoke-static {v0}, Lrx/internal/util/SubscriptionRandomList;->unsubscribeFromAll(Ljava/util/Collection;)V

    .line 136
    return-void

    .line 133
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method
