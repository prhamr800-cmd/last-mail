###### Class rx.internal.util.unsafe.MpmcArrayQueueProducerField (rx.internal.util.unsafe.MpmcArrayQueueProducerField)
.class abstract Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;
.super Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    :try_start_0
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;

    const-string v2, "producerIndex"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;->P_INDEX_OFFSET:J
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_12

    .line 38
    nop

    .line 39
    return-void

    .line 36
    :catch_12
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .line 43
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad;-><init>(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final casProducerIndex(JJ)Z
    .registers 13
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .line 51
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method protected final lvProducerIndex()J
    .registers 3

    .line 47
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;->producerIndex:J

    return-wide v0
.end method
