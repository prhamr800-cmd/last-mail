###### Class rx.internal.util.unsafe.MpscLinkedQueue (rx.internal.util.unsafe.MpscLinkedQueue)
.class public final Lrx/internal/util/unsafe/MpscLinkedQueue;
.super Lrx/internal/util/unsafe/BaseLinkedQueue;
.source "MpscLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/BaseLinkedQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;-><init>()V

    .line 40
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>()V

    iput-object v0, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 41
    iget-object v0, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {p0, v0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->xchgProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;

    .line 42
    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 71
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    .local p1, "nextValue":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_10

    .line 74
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 75
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->xchgProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 78
    .local v1, "prevProducerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v1, v0}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 79
    const/4 v2, 0x1

    return v2

    .line 72
    .end local v0    # "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    .end local v1    # "prevProducerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null elements not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final peek()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 124
    .local v0, "currConsumerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 125
    .local v1, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_d

    .line 126
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 128
    :cond_d
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    if-eq v0, v2, :cond_20

    .line 130
    :goto_13
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    move-object v1, v2

    if-nez v2, :cond_1b

    goto :goto_13

    .line 132
    :cond_1b
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 134
    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public final poll()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 101
    .local v0, "currConsumerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 102
    .local v1, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_12

    .line 104
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lrx/internal/util/unsafe/MpscLinkedQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 106
    return-object v2

    .line 108
    .end local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    :cond_12
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpscLinkedQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 110
    :goto_18
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    move-object v1, v2

    if-nez v2, :cond_20

    goto :goto_18

    .line 114
    :cond_20
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 115
    .restart local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 116
    return-object v2

    .line 118
    .end local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    :cond_27
    const/4 v2, 0x0

    return-object v2
.end method

.method protected final xchgProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode<",
            "TE;>;)",
            "Lrx/internal/util/atomic/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lrx/internal/util/unsafe/MpscLinkedQueue;, "Lrx/internal/util/unsafe/MpscLinkedQueue<TE;>;"
    .local p1, "newVal":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    :cond_0
    iget-object v6, p0, Lrx/internal/util/unsafe/MpscLinkedQueue;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 49
    .local v6, "oldVal":Ljava/lang/Object;
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/MpscLinkedQueue;->P_NODE_OFFSET:J

    move-object v1, p0

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    move-object v0, v6

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method
