###### Class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef (rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef)
.class abstract Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;
.super Lrx/internal/util/unsafe/BaseLinkedQueuePad1;
.source "BaseLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/BaseLinkedQueuePad1<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static final C_NODE_OFFSET:J


# instance fields
.field protected consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/atomic/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    const-class v0, Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;

    const-string v1, "consumerNode"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/UnsafeAccess;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;->C_NODE_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 53
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;, "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/BaseLinkedQueuePad1;-><init>()V

    return-void
.end method


# virtual methods
.method protected final lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;, "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef<TE;>;"
    iget-object v0, p0, Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final lvConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;, "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;->C_NODE_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;, "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef<TE;>;"
    .local p1, "node":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iput-object p1, p0, Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 58
    return-void
.end method
