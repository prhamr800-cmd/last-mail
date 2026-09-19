###### Class io.realm.internal.NativeObjectReference (io.realm.internal.NativeObjectReference)
.class final Lio/realm/internal/NativeObjectReference;
.super Ljava/lang/ref/PhantomReference;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/NativeObjectReference$ReferencePool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lio/realm/internal/NativeObject;",
        ">;"
    }
.end annotation


# static fields
.field private static referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private final nativeFinalizerPtr:J

.field private final nativePtr:J

.field private next:Lio/realm/internal/NativeObjectReference;

.field private prev:Lio/realm/internal/NativeObjectReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Lio/realm/internal/NativeObjectReference$ReferencePool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/internal/NativeObjectReference$ReferencePool;-><init>(Lio/realm/internal/NativeObjectReference$1;)V

    sput-object v0, Lio/realm/internal/NativeObjectReference;->referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;

    return-void
.end method

.method constructor <init>(Lio/realm/internal/NativeContext;Lio/realm/internal/NativeObject;Ljava/lang/ref/ReferenceQueue;)V
    .registers 6
    .param p1, "context"    # Lio/realm/internal/NativeContext;
    .param p2, "referent"    # Lio/realm/internal/NativeObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/NativeContext;",
            "Lio/realm/internal/NativeObject;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lio/realm/internal/NativeObject;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p3, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Lio/realm/internal/NativeObject;>;"
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 76
    invoke-interface {p2}, Lio/realm/internal/NativeObject;->getNativePtr()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/NativeObjectReference;->nativePtr:J

    .line 77
    invoke-interface {p2}, Lio/realm/internal/NativeObject;->getNativeFinalizerPtr()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/NativeObjectReference;->nativeFinalizerPtr:J

    .line 78
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->context:Lio/realm/internal/NativeContext;

    .line 79
    sget-object v0, Lio/realm/internal/NativeObjectReference;->referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeObjectReference$ReferencePool;->add(Lio/realm/internal/NativeObjectReference;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/NativeObjectReference;

    .line 31
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->prev:Lio/realm/internal/NativeObjectReference;

    return-object v0
.end method

.method static synthetic access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/NativeObjectReference;
    .param p1, "x1"    # Lio/realm/internal/NativeObjectReference;

    .line 31
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->prev:Lio/realm/internal/NativeObjectReference;

    return-object p1
.end method

.method static synthetic access$100(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/NativeObjectReference;

    .line 31
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->next:Lio/realm/internal/NativeObjectReference;

    return-object v0
.end method

.method static synthetic access$102(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/NativeObjectReference;
    .param p1, "x1"    # Lio/realm/internal/NativeObjectReference;

    .line 31
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->next:Lio/realm/internal/NativeObjectReference;

    return-object p1
.end method

.method private static native nativeCleanUp(JJ)V
.end method


# virtual methods
.method cleanup()V
    .registers 6

    .line 86
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->context:Lio/realm/internal/NativeContext;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-wide v1, p0, Lio/realm/internal/NativeObjectReference;->nativeFinalizerPtr:J

    iget-wide v3, p0, Lio/realm/internal/NativeObjectReference;->nativePtr:J

    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/NativeObjectReference;->nativeCleanUp(JJ)V

    .line 88
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    .line 90
    sget-object v0, Lio/realm/internal/NativeObjectReference;->referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeObjectReference$ReferencePool;->remove(Lio/realm/internal/NativeObjectReference;)V

    .line 91
    return-void

    .line 88
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

###### Class io.realm.internal.NativeObjectReference.AnonymousClass1 (io.realm.internal.NativeObjectReference$1)
.class synthetic Lio/realm/internal/NativeObjectReference$1;
.super Ljava/lang/Object;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/NativeObjectReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.realm.internal.NativeObjectReference.ReferencePool (io.realm.internal.NativeObjectReference$ReferencePool)
.class Lio/realm/internal/NativeObjectReference$ReferencePool;
.super Ljava/lang/Object;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/NativeObjectReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferencePool"
.end annotation


# instance fields
.field head:Lio/realm/internal/NativeObjectReference;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/internal/NativeObjectReference$1;)V
    .registers 2
    .param p1, "x0"    # Lio/realm/internal/NativeObjectReference$1;

    .line 34
    invoke-direct {p0}, Lio/realm/internal/NativeObjectReference$ReferencePool;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized add(Lio/realm/internal/NativeObjectReference;)V
    .registers 3
    .param p1, "ref"    # Lio/realm/internal/NativeObjectReference;

    monitor-enter p0

    .line 38
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1, v0}, Lio/realm/internal/NativeObjectReference;->access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 39
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;

    invoke-static {p1, v0}, Lio/realm/internal/NativeObjectReference;->access$102(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 40
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;

    if-eqz v0, :cond_13

    .line 41
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;

    invoke-static {v0, p1}, Lio/realm/internal/NativeObjectReference;->access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 43
    :cond_13
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    .line 44
    monitor-exit p0

    return-void

    .line 37
    .end local p1    # "ref":Lio/realm/internal/NativeObjectReference;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized remove(Lio/realm/internal/NativeObjectReference;)V
    .registers 5
    .param p1, "ref"    # Lio/realm/internal/NativeObjectReference;

    monitor-enter p0

    .line 47
    :try_start_1
    invoke-static {p1}, Lio/realm/internal/NativeObjectReference;->access$100(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    move-result-object v0

    .line 48
    .local v0, "next":Lio/realm/internal/NativeObjectReference;
    invoke-static {p1}, Lio/realm/internal/NativeObjectReference;->access$000(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    move-result-object v1

    .line 49
    .local v1, "prev":Lio/realm/internal/NativeObjectReference;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/realm/internal/NativeObjectReference;->access$102(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 50
    invoke-static {p1, v2}, Lio/realm/internal/NativeObjectReference;->access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 51
    if-eqz v1, :cond_16

    .line 52
    invoke-static {v1, v0}, Lio/realm/internal/NativeObjectReference;->access$102(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    goto :goto_18

    .line 54
    :cond_16
    iput-object v0, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;

    .line 56
    :goto_18
    if-eqz v0, :cond_1d

    .line 57
    invoke-static {v0, v1}, Lio/realm/internal/NativeObjectReference;->access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 59
    :cond_1d
    monitor-exit p0

    return-void

    .line 46
    .end local v0    # "next":Lio/realm/internal/NativeObjectReference;
    .end local v1    # "prev":Lio/realm/internal/NativeObjectReference;
    .end local p1    # "ref":Lio/realm/internal/NativeObjectReference;
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
