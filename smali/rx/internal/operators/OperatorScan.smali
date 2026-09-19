###### Class rx.internal.operators.OperatorScan (rx.internal.operators.OperatorScan)
.class public final Lrx/internal/operators/OperatorScan;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;TT;>;"
    }
.end annotation


# static fields
.field private static final NO_INITIAL_VALUE:Ljava/lang/Object;


# instance fields
.field private final accumulator:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field private final initialValueFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/functions/Func2<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorScan$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lrx/internal/operators/OperatorScan;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "TR;>;",
            "Lrx/functions/Func2<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValueFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lrx/internal/operators/OperatorScan;->initialValueFactory:Lrx/functions/Func0;

    .line 72
    iput-object p2, p0, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    .line 73
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lrx/internal/operators/OperatorScan;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorScan;)Lrx/functions/Func0;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorScan;

    .line 41
    iget-object v0, p0, Lrx/internal/operators/OperatorScan;->initialValueFactory:Lrx/functions/Func0;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 41
    sget-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorScan;)Lrx/functions/Func2;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorScan;

    .line 41
    iget-object v0, p0, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan$2;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorScan$2;-><init>(Lrx/internal/operators/OperatorScan;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorScan.AnonymousClass1 (rx.internal.operators.OperatorScan$1)
.class Lrx/internal/operators/OperatorScan$1;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$initialValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorScan$1;, "Lrx/internal/operators/OperatorScan.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$1;->val$initialValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorScan$1;, "Lrx/internal/operators/OperatorScan.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$1;->val$initialValue:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.internal.operators.OperatorScan.AnonymousClass2 (rx.internal.operators.OperatorScan$2)
.class Lrx/internal/operators/OperatorScan$2;
.super Lrx/Subscriber;
.source "OperatorScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field initialized:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorScan;

.field final synthetic val$child:Lrx/Subscriber;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorScan;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    iput-object p3, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 91
    iget-object p1, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    invoke-static {p1}, Lrx/internal/operators/OperatorScan;->access$000(Lrx/internal/operators/OperatorScan;)Lrx/functions/Func0;

    move-result-object p1

    invoke-interface {p1}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    .line 92
    iget-object p1, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    .line 93
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorScan$2;->initialized:Z

    return-void
.end method

.method static synthetic access$300(Lrx/internal/operators/OperatorScan$2;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorScan$2;

    .line 90
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    return-object v0
.end method

.method private emitInitialValueIfNeeded(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorScan$2;->initialized:Z

    if-nez v0, :cond_14

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$2;->initialized:Z

    .line 130
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    invoke-static {}, Lrx/internal/operators/OperatorScan;->access$100()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 131
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 134
    :cond_14
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 122
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorScan$2;->emitInitialValueIfNeeded(Lrx/Subscriber;)V

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 124
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 117
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p1, "currentValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorScan$2;->emitInitialValueIfNeeded(Lrx/Subscriber;)V

    .line 100
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    invoke-static {}, Lrx/internal/operators/OperatorScan;->access$100()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 102
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    goto :goto_1f

    .line 105
    :cond_10
    :try_start_10
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    invoke-static {v0}, Lrx/internal/operators/OperatorScan;->access$200(Lrx/internal/operators/OperatorScan;)Lrx/functions/Func2;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1e} :catch_27

    .line 110
    nop

    .line 112
    :goto_1f
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 113
    return-void

    .line 106
    :catch_27
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 108
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .line 141
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorScan$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorScan$2$1;-><init>(Lrx/internal/operators/OperatorScan$2;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 170
    return-void
.end method

###### Class rx.internal.operators.OperatorScan.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorScan$2$1)
.class Lrx/internal/operators/OperatorScan$2$1;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan$2;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final excessive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$1:Lrx/internal/operators/OperatorScan$2;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorScan$2;Lrx/Producer;)V
    .registers 3

    .line 141
    .local p0, "this":Lrx/internal/operators/OperatorScan$2$1;, "Lrx/internal/operators/OperatorScan$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2$1;->this$1:Lrx/internal/operators/OperatorScan$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2$1;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2$1;->excessive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorScan$2$1;, "Lrx/internal/operators/OperatorScan$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-wide v3, 0x7fffffffffffffffL

    const-wide/16 v5, 0x1

    if-eqz v0, :cond_3f

    .line 150
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->this$1:Lrx/internal/operators/OperatorScan$2;

    invoke-static {v0}, Lrx/internal/operators/OperatorScan$2;->access$300(Lrx/internal/operators/OperatorScan$2;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lrx/internal/operators/OperatorScan;->access$100()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_39

    cmp-long v0, p1, v3

    if-nez v0, :cond_22

    goto :goto_39

    .line 152
    :cond_22
    cmp-long v0, p1, v5

    if-nez v0, :cond_31

    .line 153
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->excessive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, v5, v6}, Lrx/Producer;->request(J)V

    goto :goto_5c

    .line 157
    :cond_31
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    sub-long v1, p1, v5

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    goto :goto_5c

    .line 151
    :cond_39
    :goto_39
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    goto :goto_5c

    .line 161
    :cond_3f
    cmp-long v0, p1, v5

    if-lez v0, :cond_57

    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->excessive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_57

    cmp-long v0, p1, v3

    if-eqz v0, :cond_57

    .line 163
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    sub-long v1, p1, v5

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    goto :goto_5c

    .line 165
    :cond_57
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 168
    :goto_5c
    return-void
.end method
