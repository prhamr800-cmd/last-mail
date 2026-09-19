###### Class rx.internal.operators.OperatorZip (rx.internal.operators.OperatorZip)
.class public final Lrx/internal/operators/OperatorZip;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip;,
        Lrx/internal/operators/OperatorZip$ZipProducer;,
        Lrx/internal/operators/OperatorZip$ZipSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;[",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func2;

    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 73
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func3;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func3;

    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 78
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func4;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func4;

    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 83
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func5;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func5;

    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 88
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func6;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func6;

    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 93
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func7;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func7;

    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 98
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func8;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func8;

    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 103
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func9;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func9;

    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 108
    return-void
.end method

.method public constructor <init>(Lrx/functions/FuncN;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "f":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorZip;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)",
            "Lrx/Subscriber<",
            "-[",
            "Lrx/Observable;",
            ">;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorZip$Zip;

    iget-object v1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorZip$Zip;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;)V

    .line 114
    .local v0, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    new-instance v1, Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorZip$ZipProducer;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 115
    .local v1, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 116
    new-instance v2, Lrx/internal/operators/OperatorZip$ZipSubscriber;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/OperatorZip$ZipSubscriber;-><init>(Lrx/internal/operators/OperatorZip;Lrx/Subscriber;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V

    .line 117
    .local v2, "subscriber":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    return-object v2
.end method

###### Class rx.internal.operators.OperatorZip.Zip (rx.internal.operators.OperatorZip$Zip)
.class final Lrx/internal/operators/OperatorZip$Zip;
.super Ljava/lang/Object;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorZip$Zip;",
            ">;"
        }
    .end annotation
.end field

.field static final THRESHOLD:I


# instance fields
.field private final child:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Lrx/subscriptions/CompositeSubscription;

.field volatile counter:J

.field emitted:I

.field private observers:[Ljava/lang/Object;

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 187
    const-class v0, Lrx/internal/operators/OperatorZip$Zip;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorZip$Zip;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 189
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 196
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    .line 197
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 198
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    .line 199
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorZip$Zip;)Lrx/Observer;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorZip$Zip;

    .line 179
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    return-object v0
.end method


# virtual methods
.method public start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 7
    .param p1, "os"    # [Lrx/Observable;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;

    .line 204
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    .line 205
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_1d

    .line 207
    new-instance v2, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-direct {v2, p0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 208
    .local v2, "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v3, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 209
    iget-object v3, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3, v2}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 206
    .end local v2    # "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 212
    .end local v1    # "i":I
    :cond_1d
    nop

    .local v0, "i":I
    :goto_1e
    array-length v1, p1

    if-ge v0, v1, :cond_2f

    .line 213
    aget-object v1, p1, v0

    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 215
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method tick()V
    .registers 17

    .line 226
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    .line 227
    .local v2, "observers":[Ljava/lang/Object;
    if-nez v2, :cond_7

    .line 229
    return-void

    .line 231
    :cond_7
    sget-object v0, Lrx/internal/operators/OperatorZip$Zip;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_c4

    .line 232
    array-length v3, v2

    .line 233
    .local v3, "length":I
    iget-object v4, v1, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 234
    .local v4, "child":Lrx/Observer;, "Lrx/Observer<-TR;>;"
    iget-object v0, v1, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .local v0, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :goto_18
    move-object v7, v0

    .line 238
    .end local v0    # "requested":Ljava/util/concurrent/atomic/AtomicLong;
    .local v7, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    new-array v8, v3, [Ljava/lang/Object;

    .line 239
    .local v8, "vs":[Ljava/lang/Object;
    const/4 v0, 0x1

    .line 240
    .local v0, "allHaveValues":Z
    const/4 v9, 0x0

    move v10, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v10, "allHaveValues":Z
    :goto_1f
    if-ge v0, v3, :cond_47

    .line 241
    aget-object v11, v2, v0

    check-cast v11, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget-object v11, v11, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 242
    .local v11, "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v11}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v12

    .line 244
    .local v12, "n":Ljava/lang/Object;
    if-nez v12, :cond_2f

    .line 245
    const/4 v10, 0x0

    .line 246
    goto :goto_44

    .line 249
    :cond_2f
    invoke-virtual {v11, v12}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e

    .line 250
    invoke-interface {v4}, Lrx/Observer;->onCompleted()V

    .line 253
    iget-object v5, v1, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v5}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 254
    return-void

    .line 256
    :cond_3e
    invoke-virtual {v11, v12}, Lrx/internal/util/RxRingBuffer;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v8, v0

    .line 240
    .end local v11    # "buffer":Lrx/internal/util/RxRingBuffer;
    .end local v12    # "n":Ljava/lang/Object;
    :goto_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 260
    .end local v0    # "i":I
    :cond_47
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    cmp-long v0, v11, v5

    if-lez v0, :cond_b3

    if-eqz v10, :cond_b3

    .line 263
    :try_start_51
    iget-object v0, v1, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    invoke-interface {v0, v8}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 266
    iget v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_63} :catch_aa

    .line 270
    nop

    .line 272
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v11, v0

    const/4 v12, 0x0

    .local v11, "len$":I
    .local v12, "i$":I
    :goto_67
    if-ge v12, v11, :cond_89

    aget-object v13, v0, v12

    .line 273
    .local v13, "obj":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget-object v14, v14, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 274
    .local v14, "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v14}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    .line 276
    invoke-virtual {v14}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_86

    .line 278
    invoke-interface {v4}, Lrx/Observer;->onCompleted()V

    .line 280
    iget-object v5, v1, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v5}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 281
    return-void

    .line 272
    .end local v13    # "obj":Ljava/lang/Object;
    .end local v14    # "buffer":Lrx/internal/util/RxRingBuffer;
    :cond_86
    add-int/lit8 v12, v12, 0x1

    goto :goto_67

    .line 284
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    :cond_89
    iget v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    sget v11, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    if-le v0, v11, :cond_a6

    .line 285
    move-object v0, v2

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v11, v0

    const/4 v12, 0x0

    .restart local v11    # "len$":I
    .restart local v12    # "i$":I
    :goto_92
    if-ge v12, v11, :cond_a4

    aget-object v13, v0, v12

    .line 286
    .restart local v13    # "obj":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget v15, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    int-to-long v5, v15

    invoke-virtual {v14, v5, v6}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->requestMore(J)V

    .line 285
    .end local v13    # "obj":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v5, 0x0

    goto :goto_92

    .line 288
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    :cond_a4
    iput v9, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    .line 293
    .end local v8    # "vs":[Ljava/lang/Object;
    .end local v10    # "allHaveValues":Z
    :cond_a6
    nop

    .line 234
    const-wide/16 v8, 0x0

    goto :goto_c0

    .line 267
    .restart local v8    # "vs":[Ljava/lang/Object;
    .restart local v10    # "allHaveValues":Z
    :catch_aa
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, v8}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v4, v5}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 269
    return-void

    .line 294
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v8    # "vs":[Ljava/lang/Object;
    .end local v10    # "allHaveValues":Z
    :cond_b3
    sget-object v0, Lrx/internal/operators/OperatorZip$Zip;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-gtz v0, :cond_c0

    .end local v3    # "length":I
    .end local v4    # "child":Lrx/Observer;, "Lrx/Observer<-TR;>;"
    .end local v7    # "requested":Ljava/util/concurrent/atomic/AtomicLong;
    goto :goto_c4

    .line 234
    .restart local v3    # "length":I
    .restart local v4    # "child":Lrx/Observer;, "Lrx/Observer<-TR;>;"
    .restart local v7    # "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_c0
    :goto_c0
    move-object v0, v7

    move-wide v5, v8

    goto/16 :goto_18

    .line 297
    .end local v3    # "length":I
    .end local v4    # "child":Lrx/Observer;, "Lrx/Observer<-TR;>;"
    .end local v7    # "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_c4
    :goto_c4
    return-void
.end method

###### Class rx.internal.operators.OperatorZip.Zip.InnerSubscriber (rx.internal.operators.OperatorZip$Zip$InnerSubscriber)
.class final Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip$Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerSubscriber"
.end annotation


# instance fields
.field final items:Lrx/internal/util/RxRingBuffer;

.field final synthetic this$0:Lrx/internal/operators/OperatorZip$Zip;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorZip$Zip;)V
    .registers 2

    .line 302
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 304
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpmcInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 317
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->onCompleted()V

    .line 318
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 319
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 324
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-static {v0}, Lrx/internal/operators/OperatorZip$Zip;->access$000(Lrx/internal/operators/OperatorZip$Zip;)Lrx/Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 325
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Object;

    .line 330
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0, p1}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_5
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_5} :catch_6

    .line 333
    goto :goto_a

    .line 331
    :catch_6
    move-exception v0

    .line 332
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 334
    .end local v0    # "e":Lrx/exceptions/MissingBackpressureException;
    :goto_a
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 335
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 308
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->request(J)V

    .line 309
    return-void
.end method

.method public requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 312
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->request(J)V

    .line 313
    return-void
.end method

###### Class rx.internal.operators.OperatorZip.ZipProducer (rx.internal.operators.OperatorZip$ZipProducer)
.class final Lrx/internal/operators/OperatorZip$ZipProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ZipProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10e280be328ab0acL


# instance fields
.field private zipper:Lrx/internal/operators/OperatorZip$Zip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$Zip<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorZip$Zip;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorZip$Zip<",
            "TR;>;)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    .local p1, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 167
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$ZipProducer;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    .line 168
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .line 172
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 174
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipProducer;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 175
    return-void
.end method

###### Class rx.internal.operators.OperatorZip.ZipSubscriber (rx.internal.operators.OperatorZip$ZipSubscriber)
.class final Lrx/internal/operators/OperatorZip$ZipSubscriber;
.super Lrx/Subscriber;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZipSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "[",
        "Lrx/Observable;",
        ">;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/internal/operators/OperatorZip$ZipProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$ZipProducer<",
            "TR;>;"
        }
    .end annotation
.end field

.field started:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorZip;

.field final zipper:Lrx/internal/operators/OperatorZip$Zip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$Zip<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorZip;Lrx/Subscriber;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Lrx/internal/operators/OperatorZip$Zip<",
            "TR;>;",
            "Lrx/internal/operators/OperatorZip$ZipProducer<",
            "TR;>;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p3, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p4, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->this$0:Lrx/internal/operators/OperatorZip;

    .line 128
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 134
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->started:Z

    .line 129
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    .line 130
    iput-object p3, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    .line 131
    iput-object p4, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->producer:Lrx/internal/operators/OperatorZip$ZipProducer;

    .line 132
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 138
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->started:Z

    if-nez v0, :cond_9

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 142
    :cond_9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 146
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    move-object v0, p1

    check-cast v0, [Lrx/Observable;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorZip$ZipSubscriber;->onNext([Lrx/Observable;)V

    return-void
.end method

.method public onNext([Lrx/Observable;)V
    .registers 4
    .param p1, "observables"    # [Lrx/Observable;

    .line 151
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    if-eqz p1, :cond_11

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_11

    .line 154
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->started:Z

    .line 155
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    iget-object v1, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->producer:Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/OperatorZip$Zip;->start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V

    goto :goto_16

    .line 152
    :cond_11
    :goto_11
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 157
    :goto_16
    return-void
.end method
