###### Class rx.internal.operators.OnSubscribeRange (rx.internal.operators.OnSubscribeRange)
.class public final Lrx/internal/operators/OnSubscribeRange;
.super Ljava/lang/Object;
.source "OnSubscribeRange.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeRange$RangeProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lrx/internal/operators/OnSubscribeRange;->start:I

    .line 34
    iput p2, p0, Lrx/internal/operators/OnSubscribeRange;->end:I

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 27
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeRange;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;

    iget v1, p0, Lrx/internal/operators/OnSubscribeRange;->start:I

    iget v2, p0, Lrx/internal/operators/OnSubscribeRange;->end:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;-><init>(Lrx/Subscriber;IILrx/internal/operators/OnSubscribeRange$1;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 40
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeRange.AnonymousClass1 (rx.internal.operators.OnSubscribeRange$1)
.class synthetic Lrx/internal/operators/OnSubscribeRange$1;
.super Ljava/lang/Object;
.source "OnSubscribeRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class rx.internal.operators.OnSubscribeRange.RangeProducer (rx.internal.operators.OnSubscribeRange$RangeProducer)
.class final Lrx/internal/operators/OnSubscribeRange$RangeProducer;
.super Ljava/lang/Object;
.source "OnSubscribeRange.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeProducer"
.end annotation


# static fields
.field private static final REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OnSubscribeRange$RangeProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final end:I

.field private index:J

.field private final o:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile requested:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const-class v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lrx/Subscriber;II)V
    .registers 6
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 50
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    .line 52
    int-to-long v0, p2

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .line 53
    iput p3, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->end:I

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;IILrx/internal/operators/OnSubscribeRange$1;)V
    .registers 5
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lrx/internal/operators/OnSubscribeRange$1;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;-><init>(Lrx/Subscriber;II)V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 29
    .param p1, "n"    # J

    .line 58
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    iget-wide v0, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->requested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 60
    return-void

    .line 62
    :cond_10
    const-wide/16 v9, 0x1

    cmp-long v0, v7, v2

    if-nez v0, :cond_54

    sget-object v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 64
    iget-wide v0, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .local v0, "i":J
    :goto_29
    iget v2, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->end:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_45

    .line 65
    iget-object v2, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 66
    return-void

    .line 68
    :cond_39
    iget-object v2, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    long-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 64
    add-long/2addr v0, v9

    goto :goto_29

    .line 70
    .end local v0    # "i":J
    :cond_45
    iget-object v0, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 71
    iget-object v0, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto/16 :goto_cb

    .line 73
    :cond_54
    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-lez v2, :cond_cb

    .line 75
    sget-object v2, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v2, v6, v7, v8}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    move-result-wide v2

    .line 76
    .local v2, "_c":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_cb

    .line 82
    :goto_64
    iget-wide v4, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->requested:J

    .line 83
    .local v4, "r":J
    iget-wide v11, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .line 84
    .local v11, "idx":J
    iget v13, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->end:I

    int-to-long v13, v13

    sub-long/2addr v13, v11

    add-long/2addr v13, v9

    .line 85
    .local v13, "numLeft":J
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 86
    .local v0, "e":J
    cmp-long v16, v13, v4

    if-gtz v16, :cond_78

    const/16 v16, 0x1

    goto :goto_7a

    :cond_78
    const/16 v16, 0x0

    .line 87
    .local v16, "completeOnFinish":Z
    :goto_7a
    const/16 v17, 0x0

    add-long v9, v0, v11

    .line 88
    .local v9, "stopAt":J
    move-wide/from16 v18, v11

    .local v18, "i":J
    :goto_80
    move-wide/from16 v20, v18

    move-wide/from16 v22, v2

    move-wide/from16 v2, v20

    .end local v18    # "i":J
    .local v2, "i":J
    .local v22, "_c":J
    cmp-long v17, v2, v9

    if-gez v17, :cond_a8

    .line 89
    iget-object v15, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v15}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v15

    if-eqz v15, :cond_93

    .line 90
    return-void

    .line 92
    :cond_93
    iget-object v15, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    move-wide/from16 v24, v4

    .end local v4    # "r":J
    .local v24, "r":J
    long-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 88
    const-wide/16 v4, 0x1

    add-long v18, v2, v4

    move-wide/from16 v2, v22

    move-wide/from16 v4, v24

    goto :goto_80

    .line 94
    .end local v2    # "i":J
    .end local v24    # "r":J
    .restart local v4    # "r":J
    :cond_a8
    move-wide/from16 v24, v4

    const-wide/16 v4, 0x1

    .end local v4    # "r":J
    .restart local v24    # "r":J
    iput-wide v9, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .line 96
    if-eqz v16, :cond_b6

    .line 97
    iget-object v2, v6, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 98
    return-void

    .line 100
    :cond_b6
    sget-object v2, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long v4, v0

    invoke-virtual {v2, v6, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v15, v2, v4

    if-nez v15, :cond_c4

    .line 102
    return-void

    .line 104
    .end local v0    # "e":J
    .end local v9    # "stopAt":J
    .end local v11    # "idx":J
    .end local v13    # "numLeft":J
    .end local v16    # "completeOnFinish":Z
    .end local v24    # "r":J
    :cond_c4
    nop

    .line 82
    move-wide v0, v4

    move-wide/from16 v2, v22

    const-wide/16 v9, 0x1

    goto :goto_64

    .line 107
    .end local v22    # "_c":J
    :cond_cb
    :goto_cb
    return-void
.end method
