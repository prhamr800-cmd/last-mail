###### Class rx.internal.util.unsafe.BaseLinkedQueue (rx.internal.util.unsafe.BaseLinkedQueue)
.class abstract Lrx/internal/util/unsafe/BaseLinkedQueue;
.super Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;
.source "BaseLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef<",
        "TE;>;"
    }
.end annotation


# instance fields
.field p00:J

.field p01:J

.field p02:J

.field p03:J

.field p04:J

.field p05:J

.field p06:J

.field p07:J

.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 77
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueue;, "Lrx/internal/util/unsafe/BaseLinkedQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .registers 3

    .line 124
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueue;, "Lrx/internal/util/unsafe/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;->lvConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueue;, "Lrx/internal/util/unsafe/BaseLinkedQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .registers 6

    .line 99
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueue;, "Lrx/internal/util/unsafe/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;->lvConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 100
    .local v0, "chaserNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 101
    .local v1, "producerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    const/4 v2, 0x0

    .line 103
    .local v2, "size":I
    :goto_9
    if-eq v0, v1, :cond_1c

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_1c

    .line 105
    :goto_10
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v3

    move-object v4, v3

    .local v4, "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-nez v3, :cond_18

    .end local v4    # "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    goto :goto_10

    .line 106
    .restart local v4    # "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    :cond_18
    move-object v0, v4

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    .end local v4    # "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    goto :goto_9

    .line 109
    :cond_1c
    return v2
.end method
