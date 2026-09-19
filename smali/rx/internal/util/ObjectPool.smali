###### Class rx.internal.util.ObjectPool (rx.internal.util.ObjectPool)
.class public abstract Lrx/internal/util/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final maxSize:I

.field private pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private schedulerWorker:Lrx/Scheduler$Worker;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 37
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x43

    invoke-direct {p0, v0, v0, v1, v2}, Lrx/internal/util/ObjectPool;-><init>(IIJ)V

    .line 38
    return-void
.end method

.method private constructor <init>(IIJ)V
    .registers 13
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "validationInterval"    # J

    .line 52
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    .line 55
    invoke-direct {p0, p1}, Lrx/internal/util/ObjectPool;->initialize(I)V

    .line 57
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Lrx/Scheduler$Worker;

    .line 58
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Lrx/Scheduler$Worker;

    new-instance v2, Lrx/internal/util/ObjectPool$1;

    invoke-direct {v2, p0, p1, p2}, Lrx/internal/util/ObjectPool$1;-><init>(Lrx/internal/util/ObjectPool;II)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, p3

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;
    .registers 2
    .param p0, "x0"    # Lrx/internal/util/ObjectPool;

    .line 30
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    return-object v0
.end method

.method private initialize(I)V
    .registers 5
    .param p1, "min"    # I

    .line 124
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 125
    new-instance v0, Lrx/internal/util/unsafe/MpmcArrayQueue;

    iget v1, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/MpmcArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    goto :goto_1d

    .line 127
    :cond_16
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    .line 130
    :goto_1d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-ge v0, p1, :cond_2c

    .line 131
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 133
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method


# virtual methods
.method public borrowObject()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "object":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_d

    .line 89
    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v1

    .line 92
    :cond_d
    return-object v1
.end method

.method protected abstract createObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public returnObject(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_3

    .line 103
    return-void

    .line 106
    :cond_3
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 113
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 114
    return-void
.end method

###### Class rx.internal.util.ObjectPool.AnonymousClass1 (rx.internal.util.ObjectPool$1)
.class Lrx/internal/util/ObjectPool$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ObjectPool;-><init>(IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ObjectPool;

.field final synthetic val$max:I

.field final synthetic val$min:I


# direct methods
.method constructor <init>(Lrx/internal/util/ObjectPool;II)V
    .registers 4

    .line 58
    .local p0, "this":Lrx/internal/util/ObjectPool$1;, "Lrx/internal/util/ObjectPool.1;"
    iput-object p1, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iput p2, p0, Lrx/internal/util/ObjectPool$1;->val$min:I

    iput p3, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 6

    .line 62
    .local p0, "this":Lrx/internal/util/ObjectPool$1;, "Lrx/internal/util/ObjectPool.1;"
    iget-object v0, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-static {v0}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    .line 63
    .local v0, "size":I
    iget v1, p0, Lrx/internal/util/ObjectPool$1;->val$min:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_28

    .line 64
    iget v1, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    sub-int/2addr v1, v0

    .line 65
    .local v1, "sizeToBeAdded":I
    nop

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_27

    .line 66
    iget-object v3, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-static {v3}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v3

    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-virtual {v4}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 68
    .end local v1    # "sizeToBeAdded":I
    .end local v2    # "i":I
    :cond_27
    goto :goto_3f

    :cond_28
    iget v1, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    if-le v0, v1, :cond_3f

    .line 69
    iget v1, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    sub-int v1, v0, v1

    .line 70
    .local v1, "sizeToBeRemoved":I
    nop

    .restart local v2    # "i":I
    :goto_31
    if-ge v2, v1, :cond_3f

    .line 72
    iget-object v3, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-static {v3}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 75
    .end local v1    # "sizeToBeRemoved":I
    .end local v2    # "i":I
    :cond_3f
    :goto_3f
    return-void
.end method
