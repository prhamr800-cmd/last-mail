###### Class rx.internal.util.unsafe.SpmcArrayQueue (rx.internal.util.unsafe.SpmcArrayQueue)
.class public final Lrx/internal/util/unsafe/SpmcArrayQueue;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .line 128
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;-><init>(I)V

    .line 129
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 6

    .line 227
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_32

    .line 136
    iget-object v0, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 137
    .local v0, "lb":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->mask:J

    .line 138
    .local v1, "lMask":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    .line 139
    .local v3, "currProducerIndex":J
    invoke-virtual {p0, v3, v4}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v5

    .line 140
    .local v5, "offset":J
    invoke-virtual {p0, v0, v5, v6}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_27

    .line 141
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v7

    sub-long v7, v3, v7

    .line 143
    .local v7, "size":J
    cmp-long v9, v7, v1

    if-lez v9, :cond_20

    .line 144
    const/4 v9, 0x0

    return v9

    .line 148
    :cond_20
    :goto_20
    invoke-virtual {p0, v0, v5, v6}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_27

    goto :goto_20

    .line 151
    .end local v7    # "size":J
    :cond_27
    invoke-virtual {p0, v0, v5, v6, p1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 154
    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Lrx/internal/util/unsafe/SpmcArrayQueue;->soTail(J)V

    .line 155
    const/4 v7, 0x1

    return v7

    .line 134
    .end local v0    # "lb":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "lMask":J
    .end local v3    # "currProducerIndex":J
    .end local v5    # "offset":J
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v0

    .line 190
    .local v0, "currProducerIndexCache":J
    :cond_4
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    .line 191
    .local v2, "currentConsumerIndex":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_19

    .line 192
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 193
    .local v4, "currProducerIndex":J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_16

    .line 194
    const/4 v6, 0x0

    return-object v6

    .line 196
    :cond_16
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->svProducerIndexCache(J)V

    .line 199
    .end local v4    # "currProducerIndex":J
    :cond_19
    invoke-virtual {p0, v2, v3}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement(J)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    .local v5, "e":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_4

    .line 200
    return-object v5
.end method

.method public poll()Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v0

    .line 163
    .local v0, "currProducerIndexCache":J
    :cond_4
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    .line 164
    .local v2, "currentConsumerIndex":J
    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-ltz v5, :cond_19

    .line 165
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v5

    .line 166
    .local v5, "currProducerIndex":J
    cmp-long v7, v2, v5

    if-ltz v7, :cond_16

    .line 167
    return-object v4

    .line 169
    :cond_16
    invoke-virtual {p0, v5, v6}, Lrx/internal/util/unsafe/SpmcArrayQueue;->svProducerIndexCache(J)V

    .line 172
    .end local v5    # "currProducerIndex":J
    :cond_19
    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    invoke-virtual {p0, v2, v3, v5, v6}, Lrx/internal/util/unsafe/SpmcArrayQueue;->casHead(JJ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    invoke-virtual {p0, v2, v3}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v5

    .line 176
    .local v5, "offset":J
    iget-object v7, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 178
    .local v7, "lb":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v7, v5, v6}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 180
    .local v8, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v7, v5, v6, v4}, Lrx/internal/util/unsafe/SpmcArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 181
    return-object v8
.end method

.method public size()I
    .registers 9

    .line 210
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 212
    .local v0, "after":J
    :goto_4
    move-wide v2, v0

    .line 213
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 214
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 215
    cmp-long v6, v2, v0

    if-nez v6, :cond_15

    .line 216
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6

    .line 218
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    :cond_15
    goto :goto_4
.end method
