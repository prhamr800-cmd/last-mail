###### Class io.realm.internal.ObserverPairList (io.realm.internal.ObserverPairList)
.class public Lio/realm/internal/ObserverPairList;
.super Ljava/lang/Object;
.source "ObserverPairList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/ObserverPairList$Callback;,
        Lio/realm/internal/ObserverPairList$ObserverPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/internal/ObserverPairList$ObserverPair;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cleared:Z

.field private pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    .local p0, "this":Lio/realm/internal/ObserverPairList;, "Lio/realm/internal/ObserverPairList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    return-void
.end method


# virtual methods
.method public add(Lio/realm/internal/ObserverPairList$ObserverPair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lio/realm/internal/ObserverPairList;, "Lio/realm/internal/ObserverPairList<TT;>;"
    .local p1, "pair":Lio/realm/internal/ObserverPairList$ObserverPair;, "TT;"
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 126
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iput-boolean v1, p1, Lio/realm/internal/ObserverPairList$ObserverPair;->removed:Z

    .line 129
    :cond_10
    iget-boolean v0, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    if-eqz v0, :cond_16

    .line 130
    iput-boolean v1, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    .line 132
    :cond_16
    return-void
.end method

.method public clear()V
    .registers 2

    .line 120
    .local p0, "this":Lio/realm/internal/ObserverPairList;, "Lio/realm/internal/ObserverPairList<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    .line 121
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    return-void
.end method

.method public foreach(Lio/realm/internal/ObserverPairList$Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/ObserverPairList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lio/realm/internal/ObserverPairList;, "Lio/realm/internal/ObserverPairList<TT;>;"
    .local p1, "callback":Lio/realm/internal/ObserverPairList$Callback;, "Lio/realm/internal/ObserverPairList$Callback<TT;>;"
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/ObserverPairList$ObserverPair;

    .line 102
    .local v1, "pair":Lio/realm/internal/ObserverPairList$ObserverPair;, "TT;"
    iget-boolean v2, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    if-eqz v2, :cond_17

    .line 103
    goto :goto_2d

    .line 105
    :cond_17
    iget-object v2, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 106
    .local v2, "observer":Ljava/lang/Object;
    if-nez v2, :cond_25

    .line 107
    iget-object v3, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 108
    :cond_25
    iget-boolean v3, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->removed:Z

    if-nez v3, :cond_2c

    .line 109
    invoke-interface {p1, v1, v2}, Lio/realm/internal/ObserverPairList$Callback;->onCalled(Lio/realm/internal/ObserverPairList$ObserverPair;Ljava/lang/Object;)V

    .line 112
    .end local v1    # "pair":Lio/realm/internal/ObserverPairList$ObserverPair;, "TT;"
    .end local v2    # "observer":Ljava/lang/Object;
    :cond_2c
    :goto_2c
    goto :goto_6

    .line 113
    :cond_2d
    :goto_2d
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 116
    .local p0, "this":Lio/realm/internal/ObserverPairList;, "Lio/realm/internal/ObserverPairList<TT;>;"
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TS;TU;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Lio/realm/internal/ObserverPairList;, "Lio/realm/internal/ObserverPairList<TT;>;"
    .local p1, "observer":Ljava/lang/Object;, "TS;"
    .local p2, "listener":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/ObserverPairList$ObserverPair;

    .line 136
    .local v1, "pair":Lio/realm/internal/ObserverPairList$ObserverPair;, "TT;"
    iget-object v2, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2b

    iget-object v2, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->listener:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->removed:Z

    .line 138
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    goto :goto_2c

    .line 141
    .end local v1    # "pair":Lio/realm/internal/ObserverPairList$ObserverPair;, "TT;"
    :cond_2b
    goto :goto_6

    .line 142
    :cond_2c
    :goto_2c
    return-void
.end method

.method removeByObserver(Ljava/lang/Object;)V
    .registers 6
    .param p1, "observer"    # Ljava/lang/Object;

    .line 145
    .local p0, "this":Lio/realm/internal/ObserverPairList;, "Lio/realm/internal/ObserverPairList<TT;>;"
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/ObserverPairList$ObserverPair;

    .line 146
    .local v1, "pair":Lio/realm/internal/ObserverPairList$ObserverPair;, "TT;"
    iget-object v2, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 147
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_24

    .line 148
    :cond_1c
    const/4 v3, 0x1

    iput-boolean v3, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->removed:Z

    .line 149
    iget-object v3, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    .end local v1    # "pair":Lio/realm/internal/ObserverPairList$ObserverPair;, "TT;"
    .end local v2    # "object":Ljava/lang/Object;
    :cond_24
    goto :goto_6

    .line 152
    :cond_25
    return-void
.end method

.method public size()I
    .registers 2

    .line 155
    .local p0, "this":Lio/realm/internal/ObserverPairList;, "Lio/realm/internal/ObserverPairList<TT;>;"
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

###### Class io.realm.internal.ObserverPairList.Callback (io.realm.internal.ObserverPairList$Callback)
.class public interface abstract Lio/realm/internal/ObserverPairList$Callback;
.super Ljava/lang/Object;
.source "ObserverPairList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ObserverPairList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/internal/ObserverPairList$ObserverPair;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCalled(Lio/realm/internal/ObserverPairList$ObserverPair;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

###### Class io.realm.internal.ObserverPairList.ObserverPair (io.realm.internal.ObserverPairList$ObserverPair)
.class public abstract Lio/realm/internal/ObserverPairList$ObserverPair;
.super Ljava/lang/Object;
.source "ObserverPairList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ObserverPairList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObserverPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field final observerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/realm/internal/ObserverPairList$ObserverPair;, "Lio/realm/internal/ObserverPairList$ObserverPair<TT;TS;>;"
    .local p1, "observer":Ljava/lang/Object;, "TT;"
    .local p2, "listener":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/ObserverPairList$ObserverPair;->removed:Z

    .line 49
    iput-object p2, p0, Lio/realm/internal/ObserverPairList$ObserverPair;->listener:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 56
    .local p0, "this":Lio/realm/internal/ObserverPairList$ObserverPair;, "Lio/realm/internal/ObserverPairList$ObserverPair<TT;TS;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 57
    return v0

    .line 60
    :cond_4
    instance-of v1, p1, Lio/realm/internal/ObserverPairList$ObserverPair;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 61
    move-object v1, p1

    check-cast v1, Lio/realm/internal/ObserverPairList$ObserverPair;

    .line 62
    .local v1, "anotherPair":Lio/realm/internal/ObserverPairList$ObserverPair;
    iget-object v3, p0, Lio/realm/internal/ObserverPairList$ObserverPair;->listener:Ljava/lang/Object;

    iget-object v4, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->listener:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    .line 63
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_25

    goto :goto_26

    .line 62
    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    .line 65
    .end local v1    # "anotherPair":Lio/realm/internal/ObserverPairList$ObserverPair;
    :cond_27
    return v2
.end method

.method public hashCode()I
    .registers 6

    .line 70
    .local p0, "this":Lio/realm/internal/ObserverPairList$ObserverPair;, "Lio/realm/internal/ObserverPairList$ObserverPair<TT;TS;>;"
    iget-object v0, p0, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "observer":Ljava/lang/Object;, "TT;"
    const/16 v1, 0x11

    .line 73
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    add-int/2addr v2, v4

    .line 75
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v4, p0, Lio/realm/internal/ObserverPairList$ObserverPair;->listener:Ljava/lang/Object;

    if-eqz v4, :cond_21

    iget-object v3, p0, Lio/realm/internal/ObserverPairList$ObserverPair;->listener:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    nop

    :cond_21
    add-int/2addr v1, v3

    .line 76
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
