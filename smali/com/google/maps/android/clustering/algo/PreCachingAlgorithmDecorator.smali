###### Class com.google.maps.android.clustering.algo.PreCachingAlgorithmDecorator (com.google.maps.android.clustering.algo.PreCachingAlgorithmDecorator)
.class public Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;
.super Ljava/lang/Object;
.source "PreCachingAlgorithmDecorator.java"

# interfaces
.implements Lcom/google/maps/android/clustering/algo/Algorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/clustering/algo/Algorithm<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/algo/Algorithm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "+",
            "Lcom/google/maps/android/clustering/Cluster<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final mCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/clustering/algo/Algorithm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/algo/Algorithm<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>;"
    .local p1, "algorithm":Lcom/google/maps/android/clustering/algo/Algorithm;, "Lcom/google/maps/android/clustering/algo/Algorithm<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCache:Landroid/support/v4/util/LruCache;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 40
    iput-object p1, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;I)Ljava/util/Set;
    .registers 3
    .param p0, "x0"    # Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->getClustersInternal(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private clearCache()V
    .registers 2

    .line 66
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 67
    return-void
.end method

.method private getClustersInternal(I)Ljava/util/Set;
    .registers 6
    .param p1, "discreteZoom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "+",
            "Lcom/google/maps/android/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 91
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 92
    .local v0, "results":Ljava/util/Set;, "Ljava/util/Set<+Lcom/google/maps/android/clustering/Cluster<TT;>;>;"
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    if-nez v0, :cond_51

    .line 95
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 96
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    .line 97
    if-nez v0, :cond_48

    .line 98
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    int-to-double v2, p1

    invoke-interface {v1, v2, v3}, Lcom/google/maps/android/clustering/algo/Algorithm;->getClusters(D)Ljava/util/Set;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_48
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    :cond_51
    return-object v0
.end method


# virtual methods
.method public addItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/algo/Algorithm;->addItem(Lcom/google/maps/android/clustering/ClusterItem;)V

    .line 45
    invoke-direct {p0}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->clearCache()V

    .line 46
    return-void
.end method

.method public addItems(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/algo/Algorithm;->addItems(Ljava/util/Collection;)V

    .line 51
    invoke-direct {p0}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->clearCache()V

    .line 52
    return-void
.end method

.method public clearItems()V
    .registers 2

    .line 56
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/Algorithm;->clearItems()V

    .line 57
    invoke-direct {p0}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->clearCache()V

    .line 58
    return-void
.end method

.method public getClusters(D)Ljava/util/Set;
    .registers 8
    .param p1, "zoom"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/Set<",
            "+",
            "Lcom/google/maps/android/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>;"
    double-to-int v0, p1

    .line 72
    .local v0, "discreteZoom":I
    invoke-direct {p0, v0}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->getClustersInternal(I)Ljava/util/Set;

    move-result-object v1

    .line 74
    .local v1, "results":Ljava/util/Set;, "Ljava/util/Set<+Lcom/google/maps/android/clustering/Cluster<TT;>;>;"
    iget-object v2, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCache:Landroid/support/v4/util/LruCache;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_22

    .line 75
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v3, p0, v4}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;-><init>(Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 77
    :cond_22
    iget-object v2, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mCache:Landroid/support/v4/util/LruCache;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 78
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v3, p0, v4}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;-><init>(Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 80
    :cond_3f
    return-object v1
.end method

.method public getItems()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/Algorithm;->getItems()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/algo/Algorithm;->removeItem(Lcom/google/maps/android/clustering/ClusterItem;)V

    .line 62
    invoke-direct {p0}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->clearCache()V

    .line 63
    return-void
.end method

###### Class com.google.maps.android.clustering.algo.PreCachingAlgorithmDecorator.PrecacheRunnable (com.google.maps.android.clustering.algo.PreCachingAlgorithmDecorator$PrecacheRunnable)
.class Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;
.super Ljava/lang/Object;
.source "PreCachingAlgorithmDecorator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrecacheRunnable"
.end annotation


# instance fields
.field private final mZoom:I

.field final synthetic this$0:Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;I)V
    .registers 3
    .param p2, "zoom"    # I

    .line 109
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>.PrecacheRunnable;"
    iput-object p1, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;->this$0:Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;->mZoom:I

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 117
    .local p0, "this":Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;, "Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator<TT;>.PrecacheRunnable;"
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x407f400000000000L    # 500.0

    mul-double v0, v0, v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 120
    goto :goto_12

    .line 118
    :catch_11
    move-exception v0

    .line 121
    :goto_12
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;->this$0:Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;

    iget v1, p0, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator$PrecacheRunnable;->mZoom:I

    invoke-static {v0, v1}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;->access$000(Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;I)Ljava/util/Set;

    .line 122
    return-void
.end method
