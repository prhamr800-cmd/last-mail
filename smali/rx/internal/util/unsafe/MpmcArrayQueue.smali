###### Class rx.internal.util.unsafe.MpmcArrayQueue (rx.internal.util.unsafe.MpmcArrayQueue)
.class public Lrx/internal/util/unsafe/MpmcArrayQueue;
.super Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField<",
        "TE;>;"
    }
.end annotation


# instance fields
.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J

.field p40:J

.field p41:J

.field p42:J

.field p43:J

.field p44:J

.field p45:J

.field p46:J


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 118
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;-><init>(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 6

    .line 252
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

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
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 123
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-eqz v7, :cond_6a

    .line 128
    iget-wide v0, v6, Lrx/internal/util/unsafe/MpmcArrayQueue;->mask:J

    const-wide/16 v2, 0x1

    add-long v8, v0, v2

    .line 129
    .local v8, "capacity":J
    iget-object v10, v6, Lrx/internal/util/unsafe/MpmcArrayQueue;->sequenceBuffer:[J

    .line 132
    .local v10, "lSequenceBuffer":[J
    const-wide v0, 0x7fffffffffffffffL

    .local v0, "cIndex":J
    :goto_13
    move-wide v11, v0

    .line 134
    .end local v0    # "cIndex":J
    .local v11, "cIndex":J
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v13

    .line 135
    .local v13, "currentProducerIndex":J
    invoke-virtual {v6, v13, v14}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcSequenceOffset(J)J

    move-result-wide v4

    .line 136
    .local v4, "seqOffset":J
    invoke-virtual {v6, v10, v4, v5}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v0

    .line 137
    .local v0, "seq":J
    sub-long v15, v0, v13

    .line 139
    .local v15, "delta":J
    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    if-nez v19, :cond_4d

    .line 141
    move-wide/from16 v20, v0

    .end local v0    # "seq":J
    .local v20, "seq":J
    add-long v0, v13, v2

    invoke-virtual {v6, v13, v14, v0, v1}, Lrx/internal/util/unsafe/MpmcArrayQueue;->casProducerIndex(JJ)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 143
    nop

    .line 157
    .end local v15    # "delta":J
    .end local v20    # "seq":J
    invoke-virtual {v6, v13, v14}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v0

    .line 158
    .local v0, "elementOffset":J
    invoke-virtual {v6, v0, v1, v7}, Lrx/internal/util/unsafe/MpmcArrayQueue;->spElement(JLjava/lang/Object;)V

    .line 162
    add-long v15, v13, v2

    move-wide/from16 v17, v0

    .end local v0    # "elementOffset":J
    .local v17, "elementOffset":J
    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v4

    move-wide/from16 v22, v4

    .end local v4    # "seqOffset":J
    .local v22, "seqOffset":J
    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lrx/internal/util/unsafe/MpmcArrayQueue;->soSequence([JJJ)V

    .line 164
    const/4 v0, 0x1

    return v0

    .line 154
    .end local v17    # "elementOffset":J
    .end local v22    # "seqOffset":J
    .restart local v4    # "seqOffset":J
    :cond_4a
    move-wide/from16 v22, v4

    .end local v4    # "seqOffset":J
    .restart local v22    # "seqOffset":J
    goto :goto_68

    .line 146
    .end local v22    # "seqOffset":J
    .local v0, "seq":J
    .restart local v4    # "seqOffset":J
    .restart local v15    # "delta":J
    :cond_4d
    move-wide/from16 v20, v0

    move-wide/from16 v22, v4

    .end local v0    # "seq":J
    .end local v4    # "seqOffset":J
    .restart local v20    # "seq":J
    .restart local v22    # "seqOffset":J
    cmp-long v0, v15, v17

    if-gez v0, :cond_68

    sub-long v0, v13, v8

    cmp-long v4, v0, v11

    if-gtz v4, :cond_68

    sub-long v0, v13, v8

    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v4

    move-wide v11, v4

    cmp-long v17, v0, v4

    if-gtz v17, :cond_68

    .line 150
    const/4 v0, 0x0

    return v0

    .line 154
    .end local v15    # "delta":J
    .end local v20    # "seq":J
    :cond_68
    :goto_68
    move-wide v0, v11

    .end local v11    # "cIndex":J
    .local v0, "cIndex":J
    goto :goto_13

    .line 124
    .end local v0    # "cIndex":J
    .end local v8    # "capacity":J
    .end local v10    # "lSequenceBuffer":[J
    .end local v13    # "currentProducerIndex":J
    .end local v22    # "seqOffset":J
    :cond_6a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 221
    .local v0, "currConsumerIndex":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lpElement(J)Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_16

    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 224
    :cond_16
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    move-object/from16 v6, p0

    iget-object v7, v6, Lrx/internal/util/unsafe/MpmcArrayQueue;->sequenceBuffer:[J

    .line 179
    .local v7, "lSequenceBuffer":[J
    const-wide/16 v0, -0x1

    .local v0, "pIndex":J
    :goto_6
    move-wide v8, v0

    .line 181
    .end local v0    # "pIndex":J
    .local v8, "pIndex":J
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v10

    .line 182
    .local v10, "currentConsumerIndex":J
    invoke-virtual {v6, v10, v11}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcSequenceOffset(J)J

    move-result-wide v12

    .line 183
    .local v12, "seqOffset":J
    invoke-virtual {v6, v7, v12, v13}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v0

    .line 184
    .local v0, "seq":J
    const-wide/16 v2, 0x1

    add-long v4, v10, v2

    sub-long v4, v0, v4

    .line 186
    .local v4, "delta":J
    const-wide/16 v15, 0x0

    cmp-long v17, v4, v15

    if-nez v17, :cond_41

    .line 187
    add-long v14, v10, v2

    invoke-virtual {v6, v10, v11, v14, v15}, Lrx/internal/util/unsafe/MpmcArrayQueue;->casConsumerIndex(JJ)Z

    move-result v14

    if-eqz v14, :cond_54

    .line 189
    nop

    .line 203
    .end local v0    # "seq":J
    .end local v4    # "delta":J
    invoke-virtual {v6, v10, v11}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v14

    .line 204
    .local v14, "offset":J
    invoke-virtual {v6, v14, v15}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lpElement(J)Ljava/lang/Object;

    move-result-object v16

    .line 205
    .local v16, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {v6, v14, v15, v0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->spElement(JLjava/lang/Object;)V

    .line 209
    iget-wide v0, v6, Lrx/internal/util/unsafe/MpmcArrayQueue;->mask:J

    add-long/2addr v0, v10

    add-long v4, v0, v2

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v12

    invoke-virtual/range {v0 .. v5}, Lrx/internal/util/unsafe/MpmcArrayQueue;->soSequence([JJJ)V

    .line 211
    return-object v16

    .line 192
    .end local v14    # "offset":J
    .end local v16    # "e":Ljava/lang/Object;, "TE;"
    .restart local v0    # "seq":J
    .restart local v4    # "delta":J
    :cond_41
    cmp-long v2, v4, v15

    if-gez v2, :cond_54

    cmp-long v2, v10, v8

    if-ltz v2, :cond_54

    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    move-wide v8, v2

    cmp-long v14, v10, v2

    if-nez v14, :cond_54

    .line 196
    const/4 v2, 0x0

    return-object v2

    .line 200
    .end local v0    # "seq":J
    .end local v4    # "delta":J
    :cond_54
    move-wide v0, v8

    .end local v8    # "pIndex":J
    .local v0, "pIndex":J
    goto :goto_6
.end method

.method public size()I
    .registers 9

    .line 235
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 237
    .local v0, "after":J
    :goto_4
    move-wide v2, v0

    .line 238
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 239
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 240
    cmp-long v6, v2, v0

    if-nez v6, :cond_15

    .line 241
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6

    .line 243
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    :cond_15
    goto :goto_4
.end method
