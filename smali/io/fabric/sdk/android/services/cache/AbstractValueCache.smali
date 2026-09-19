###### Class io.fabric.sdk.android.services.cache.AbstractValueCache (io.fabric.sdk.android.services.cache.AbstractValueCache)
.class public abstract Lio/fabric/sdk/android/services/cache/AbstractValueCache;
.super Ljava/lang/Object;
.source "AbstractValueCache.java"

# interfaces
.implements Lio/fabric/sdk/android/services/cache/ValueCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/cache/ValueCache<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final childCache:Lio/fabric/sdk/android/services/cache/ValueCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/cache/ValueCache<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    .local p0, "this":Lio/fabric/sdk/android/services/cache/AbstractValueCache;, "Lio/fabric/sdk/android/services/cache/AbstractValueCache<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;-><init>(Lio/fabric/sdk/android/services/cache/ValueCache;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/cache/ValueCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/cache/ValueCache<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lio/fabric/sdk/android/services/cache/AbstractValueCache;, "Lio/fabric/sdk/android/services/cache/AbstractValueCache<TT;>;"
    .local p1, "childCache":Lio/fabric/sdk/android/services/cache/ValueCache;, "Lio/fabric/sdk/android/services/cache/ValueCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->childCache:Lio/fabric/sdk/android/services/cache/ValueCache;

    .line 32
    return-void
.end method

.method private cache(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lio/fabric/sdk/android/services/cache/AbstractValueCache;, "Lio/fabric/sdk/android/services/cache/AbstractValueCache<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_6

    .line 70
    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->cacheValue(Landroid/content/Context;Ljava/lang/Object;)V

    .line 71
    return-void

    .line 68
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected abstract cacheValue(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract doInvalidate(Landroid/content/Context;)V
.end method

.method public final declared-synchronized get(Landroid/content/Context;Lio/fabric/sdk/android/services/cache/ValueLoader;)Ljava/lang/Object;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/cache/ValueLoader<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p0, "this":Lio/fabric/sdk/android/services/cache/AbstractValueCache;, "Lio/fabric/sdk/android/services/cache/AbstractValueCache<TT;>;"
    .local p2, "loader":Lio/fabric/sdk/android/services/cache/ValueLoader;, "Lio/fabric/sdk/android/services/cache/ValueLoader<TT;>;"
    monitor-enter p0

    .line 36
    :try_start_1
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->getCached(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1a

    .line 39
    iget-object v1, p0, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->childCache:Lio/fabric/sdk/android/services/cache/ValueCache;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->childCache:Lio/fabric/sdk/android/services/cache/ValueCache;

    invoke-interface {v1, p1, p2}, Lio/fabric/sdk/android/services/cache/ValueCache;->get(Landroid/content/Context;Lio/fabric/sdk/android/services/cache/ValueLoader;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_16

    :cond_12
    invoke-interface {p2, p1}, Lio/fabric/sdk/android/services/cache/ValueLoader;->load(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    :goto_16
    move-object v0, v1

    .line 40
    invoke-direct {p0, p1, v0}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->cache(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 43
    :cond_1a
    monitor-exit p0

    return-object v0

    .line 35
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "loader":Lio/fabric/sdk/android/services/cache/ValueLoader;, "Lio/fabric/sdk/android/services/cache/ValueLoader<TT;>;"
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract getCached(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public final declared-synchronized invalidate(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .local p0, "this":Lio/fabric/sdk/android/services/cache/AbstractValueCache;, "Lio/fabric/sdk/android/services/cache/AbstractValueCache<TT;>;"
    monitor-enter p0

    .line 52
    :try_start_1
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->doInvalidate(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 53
    monitor-exit p0

    return-void

    .line 51
    .end local p1    # "context":Landroid/content/Context;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
