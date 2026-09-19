###### Class com.google.firebase.components.zzf (com.google.firebase.components.zzf)
.class public final Lcom/google/firebase/components/zzf;
.super Lcom/google/firebase/components/zza;
.source "com.google.firebase:firebase-common@@16.0.2"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/components/zzj<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/firebase/components/zzh;


# direct methods
.method public varargs constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/Component;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;[",
            "Lcom/google/firebase/components/Component<",
            "*>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/google/firebase/components/zza;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/zzf;->zzb:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/google/firebase/components/zzh;

    invoke-direct {v0, p1}, Lcom/google/firebase/components/zzh;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/components/zzf;->zzc:Lcom/google/firebase/components/zzh;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/google/firebase/components/zzf;->zzc:Lcom/google/firebase/components/zzh;

    const-class v1, Lcom/google/firebase/components/zzh;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/google/firebase/events/Subscriber;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/google/firebase/events/Publisher;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/ComponentRegistrar;

    .line 52
    invoke-interface {v0}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    goto :goto_32

    .line 54
    :cond_46
    invoke-static {p1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 56
    invoke-static {p1}, Lcom/google/firebase/components/Component$1;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/zzf;->zza:Ljava/util/List;

    .line 58
    iget-object p1, p0, Lcom/google/firebase/components/zzf;->zza:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/components/Component;

    .line 59
    invoke-direct {p0, p2}, Lcom/google/firebase/components/zzf;->zza(Lcom/google/firebase/components/Component;)V

    .line 60
    goto :goto_59

    .line 61
    :cond_69
    invoke-direct {p0}, Lcom/google/firebase/components/zzf;->zza()V

    .line 62
    return-void
.end method

.method private zza()V
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/google/firebase/components/zzf;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/Component;

    .line 100
    invoke-virtual {v1}, Lcom/google/firebase/components/Component;->zzb()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/Dependency;

    .line 101
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->zzb()Z

    move-result v4

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/google/firebase/components/zzf;->zzb:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->zza()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_52

    .line 102
    :cond_39
    new-instance v0, Lcom/google/firebase/components/MissingDependencyException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->zza()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    .line 103
    const-string v1, "Unsatisfied dependency for component %s: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/components/MissingDependencyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_52
    :goto_52
    goto :goto_1a

    .line 108
    :cond_53
    goto :goto_6

    .line 109
    :cond_54
    return-void
.end method

.method private zza(Lcom/google/firebase/components/Component;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Component<",
            "TT;>;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/firebase/components/zzj;

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->zzc()Lcom/google/firebase/components/ComponentFactory;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/components/zzl;

    invoke-direct {v2, p1, p0}, Lcom/google/firebase/components/zzl;-><init>(Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/components/zzj;-><init>(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->zza()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 94
    iget-object v2, p0, Lcom/google/firebase/components/zzf;->zzb:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    goto :goto_16

    .line 96
    :cond_28
    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 34
    nop

    .end local p0    # "this":Lcom/google/firebase/components/zzf;
    invoke-super {p0, p1}, Lcom/google/firebase/components/zza;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 67
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Null interface requested."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    nop

    .end local p0    # "this":Lcom/google/firebase/components/zzf;
    iget-object v0, p0, Lcom/google/firebase/components/zzf;->zzb:Ljava/util/Map;

    .end local p1    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inject/Provider;

    return-object p1
.end method

.method public final zza(Z)V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/google/firebase/components/zzf;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/Component;

    .line 80
    invoke-virtual {v1}, Lcom/google/firebase/components/Component;->zze()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1}, Lcom/google/firebase/components/Component;->zzf()Z

    move-result v2

    if-eqz v2, :cond_31

    if-eqz p1, :cond_31

    .line 82
    :cond_20
    invoke-virtual {v1}, Lcom/google/firebase/components/Component;->zza()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/zzf;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    :cond_31
    goto :goto_6

    .line 86
    :cond_32
    iget-object p1, p0, Lcom/google/firebase/components/zzf;->zzc:Lcom/google/firebase/components/zzh;

    invoke-virtual {p1}, Lcom/google/firebase/components/zzh;->zza()V

    .line 87
    return-void
.end method
