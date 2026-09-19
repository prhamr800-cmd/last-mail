###### Class rx.internal.util.SynchronizedQueue (rx.internal.util.SynchronizedQueue)
.class public Lrx/internal/util/SynchronizedQueue;
.super Ljava/lang/Object;
.source "SynchronizedQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 37
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    .line 38
    iput p1, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p1    # "e":Ljava/lang/Object;, "TT;"
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 3

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 141
    :try_start_1
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    iget v1, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    .line 142
    .local v0, "q":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    iget-object v1, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lrx/internal/util/SynchronizedQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 143
    monitor-exit p0

    return-object v0

    .line 140
    .end local v0    # "q":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p1    # "o":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->containsAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p1    # "o":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hashCode()I
    .registers 2

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->hashCode()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 133
    :try_start_1
    iget v0, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lrx/internal/util/SynchronizedQueue;->size:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1d

    if-le v0, v1, :cond_15

    .line 134
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 136
    :cond_15
    :try_start_15
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return v0

    .line 132
    .end local p1    # "e":Ljava/lang/Object;, "TT;"
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 113
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p1    # "o":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->retainAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .registers 2

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .registers 2

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 148
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([TR;)[TR;"
        }
    .end annotation

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TR;"
    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .end local p1    # "a":[Ljava/lang/Object;, "[TR;"
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
