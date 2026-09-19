###### Class com.google.firebase.components.zzh (com.google.firebase.components.zzh)
.class Lcom/google/firebase/components/zzh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.0.2"

# interfaces
.implements Lcom/google/firebase/events/Publisher;
.implements Lcom/google/firebase/events/Subscriber;


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/firebase/events/EventHandler<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzb:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/events/Event<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/zzh;->zza:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/zzh;->zzb:Ljava/util/Queue;

    .line 55
    iput-object p1, p0, Lcom/google/firebase/components/zzh;->zzc:Ljava/util/concurrent/Executor;

    .line 56
    return-void
.end method

.method private declared-synchronized zza(Lcom/google/firebase/events/Event;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/events/Event<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/firebase/events/EventHandler<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zza:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/events/Event;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 79
    if-nez p1, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    :goto_13
    monitor-exit p0

    return-object p1

    :cond_15
    :try_start_15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1a

    goto :goto_13

    .line 77
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zza(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V
    .registers 2

    .line 73
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/events/EventHandler;

    invoke-interface {p0, p1}, Lcom/google/firebase/events/EventHandler;->handle(Lcom/google/firebase/events/Event;)V

    return-void
.end method


# virtual methods
.method public publish(Lcom/google/firebase/events/Event;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/events/Event<",
            "*>;)V"
        }
    .end annotation

    .line 60
    .local p1, "event":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<*>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-enter p0

    .line 63
    :try_start_4
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzb:Ljava/util/Queue;

    if-eqz v0, :cond_f

    .line 64
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzb:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 65
    monitor-exit p0

    return-void

    .line 67
    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_35

    .line 69
    nop

    .end local p0    # "this":Lcom/google/firebase/components/zzh;
    invoke-direct {p0, p1}, Lcom/google/firebase/components/zzh;->zza(Lcom/google/firebase/events/Event;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    nop

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {v1, p1}, Lcom/google/firebase/components/zzi;->zza(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    goto :goto_19

    .line 75
    .end local p1    # "event":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<*>;"
    :cond_34
    return-void

    .line 67
    .restart local p1    # "event":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<*>;"
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/events/EventHandler<",
            "-TT;>;)V"
        }
    .end annotation

    .line 99
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    nop

    .end local p0    # "this":Lcom/google/firebase/components/zzh;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzc:Ljava/util/concurrent/Executor;

    .end local p2    # "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/components/zzh;->subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/EventHandler;)V

    .line 100
    return-void
.end method

.method public declared-synchronized subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/EventHandler;)V
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/events/EventHandler<",
            "-TT;>;)V"
        }
    .end annotation

    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    monitor-enter p0

    .line 85
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 89
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zza:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1c
    nop

    .line 94
    .end local p3    # "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    nop

    .end local p0    # "this":Lcom/google/firebase/components/zzh;
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zza:Ljava/util/Map;

    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 95
    monitor-exit p0

    return-void

    .line 84
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unsubscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/events/EventHandler<",
            "-TT;>;)V"
        }
    .end annotation

    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    monitor-enter p0

    .line 104
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_2b

    if-nez v0, :cond_11

    .line 108
    monitor-exit p0

    return-void

    .line 111
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    nop

    .line 115
    .end local p2    # "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 118
    nop

    .end local p0    # "this":Lcom/google/firebase/components/zzh;
    iget-object p2, p0, Lcom/google/firebase/components/zzh;->zza:Ljava/util/Map;

    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2b

    .line 120
    :cond_29
    monitor-exit p0

    return-void

    .line 103
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zza()V
    .registers 3

    .line 123
    nop

    .line 124
    monitor-enter p0

    .line 125
    :try_start_2
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzb:Ljava/util/Queue;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 126
    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzb:Ljava/util/Queue;

    .line 127
    iput-object v1, p0, Lcom/google/firebase/components/zzh;->zzb:Ljava/util/Queue;

    goto :goto_d

    .line 129
    :cond_c
    move-object v0, v1

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_25

    .line 130
    if-eqz v0, :cond_24

    .line 131
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/events/Event;

    .line 132
    invoke-virtual {p0, v1}, Lcom/google/firebase/components/zzh;->publish(Lcom/google/firebase/events/Event;)V

    .line 133
    goto :goto_14

    .line 135
    :cond_24
    return-void

    .line 129
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method
