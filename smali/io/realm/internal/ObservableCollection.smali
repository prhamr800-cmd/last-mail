###### Class io.realm.internal.ObservableCollection (io.realm.internal.ObservableCollection)
.class interface abstract Lio/realm/internal/ObservableCollection;
.super Ljava/lang/Object;
.source "ObservableCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/ObservableCollection$Callback;,
        Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;,
        Lio/realm/internal/ObservableCollection$CollectionObserverPair;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# virtual methods
.method public abstract notifyChangeListeners(J)V
.end method

###### Class io.realm.internal.ObservableCollection.Callback (io.realm.internal.ObservableCollection$Callback)
.class public Lio/realm/internal/ObservableCollection$Callback;
.super Ljava/lang/Object;
.source "ObservableCollection.java"

# interfaces
.implements Lio/realm/internal/ObserverPairList$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ObservableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/ObserverPairList$Callback<",
        "Lio/realm/internal/ObservableCollection$CollectionObserverPair;",
        ">;"
    }
.end annotation


# instance fields
.field private final changeSet:Lio/realm/internal/OsCollectionChangeSet;


# direct methods
.method constructor <init>(Lio/realm/internal/OsCollectionChangeSet;)V
    .registers 2
    .param p1, "changeSet"    # Lio/realm/internal/OsCollectionChangeSet;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/realm/internal/ObservableCollection$Callback;->changeSet:Lio/realm/internal/OsCollectionChangeSet;

    .line 59
    return-void
.end method


# virtual methods
.method public onCalled(Lio/realm/internal/ObservableCollection$CollectionObserverPair;Ljava/lang/Object;)V
    .registers 4
    .param p1, "pair"    # Lio/realm/internal/ObservableCollection$CollectionObserverPair;
    .param p2, "observer"    # Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lio/realm/internal/ObservableCollection$Callback;->changeSet:Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {p1, p2, v0}, Lio/realm/internal/ObservableCollection$CollectionObserverPair;->onChange(Ljava/lang/Object;Lio/realm/internal/OsCollectionChangeSet;)V

    .line 65
    return-void
.end method

.method public bridge synthetic onCalled(Lio/realm/internal/ObserverPairList$ObserverPair;Ljava/lang/Object;)V
    .registers 3

    .line 54
    check-cast p1, Lio/realm/internal/ObservableCollection$CollectionObserverPair;

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/ObservableCollection$Callback;->onCalled(Lio/realm/internal/ObservableCollection$CollectionObserverPair;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.realm.internal.ObservableCollection.CollectionObserverPair (io.realm.internal.ObservableCollection$CollectionObserverPair)
.class public Lio/realm/internal/ObservableCollection$CollectionObserverPair;
.super Lio/realm/internal/ObserverPairList$ObserverPair;
.source "ObservableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ObservableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionObserverPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/ObserverPairList$ObserverPair<",
        "TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p2, "listener"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 14
    .local p0, "this":Lio/realm/internal/ObservableCollection$CollectionObserverPair;, "Lio/realm/internal/ObservableCollection$CollectionObserverPair<TT;>;"
    .local p1, "observer":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ObserverPairList$ObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Object;Lio/realm/internal/OsCollectionChangeSet;)V
    .registers 6
    .param p2, "changes"    # Lio/realm/internal/OsCollectionChangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/internal/OsCollectionChangeSet;",
            ")V"
        }
    .end annotation

    .line 18
    .local p0, "this":Lio/realm/internal/ObservableCollection$CollectionObserverPair;, "Lio/realm/internal/ObservableCollection$CollectionObserverPair<TT;>;"
    .local p1, "observer":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/realm/internal/ObservableCollection$CollectionObserverPair;->listener:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/OrderedRealmCollectionChangeListener;

    if-eqz v0, :cond_13

    .line 20
    iget-object v0, p0, Lio/realm/internal/ObservableCollection$CollectionObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/OrderedRealmCollectionChangeListener;

    new-instance v1, Lio/realm/internal/StatefulCollectionChangeSet;

    invoke-direct {v1, p2}, Lio/realm/internal/StatefulCollectionChangeSet;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-interface {v0, p1, v1}, Lio/realm/OrderedRealmCollectionChangeListener;->onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V

    goto :goto_20

    .line 21
    :cond_13
    iget-object v0, p0, Lio/realm/internal/ObservableCollection$CollectionObserverPair;->listener:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/RealmChangeListener;

    if-eqz v0, :cond_21

    .line 23
    iget-object v0, p0, Lio/realm/internal/ObservableCollection$CollectionObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/RealmChangeListener;

    invoke-interface {v0, p1}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    .line 27
    :goto_20
    return-void

    .line 25
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported listener type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/internal/ObservableCollection$CollectionObserverPair;->listener:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.realm.internal.ObservableCollection.RealmChangeListenerWrapper (io.realm.internal.ObservableCollection$RealmChangeListenerWrapper)
.class public Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;
.super Ljava/lang/Object;
.source "ObservableCollection.java"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ObservableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealmChangeListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/OrderedRealmCollectionChangeListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final listener:Lio/realm/RealmChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmChangeListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/RealmChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;, "Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper<TT;>;"
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 44
    .local p0, "this":Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;, "Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper<TT;>;"
    instance-of v0, p1, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    move-object v1, p1

    check-cast v1, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;

    iget-object v1, v1, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 50
    .local p0, "this":Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;, "Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper<TT;>;"
    iget-object v0, p0, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 4
    .param p2, "changes"    # Lio/realm/OrderedCollectionChangeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/OrderedCollectionChangeSet;",
            ")V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;, "Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper<TT;>;"
    .local p1, "collection":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    invoke-interface {v0, p1}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    .line 40
    return-void
.end method
