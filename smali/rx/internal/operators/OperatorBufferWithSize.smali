###### Class rx.internal.operators.OperatorBufferWithSize (rx.internal.operators.OperatorBufferWithSize)
.class public final Lrx/internal/operators/OperatorBufferWithSize;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final skip:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "count"    # I
    .param p2, "skip"    # I

    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-lez p1, :cond_14

    .line 59
    if-lez p2, :cond_c

    .line 62
    iput p1, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    .line 63
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    .line 64
    return-void

    .line 60
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorBufferWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iget v0, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    if-ne v0, v1, :cond_c

    .line 69
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorBufferWithSize$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0

    .line 129
    :cond_c
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$2;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorBufferWithSize$2;-><init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.AnonymousClass1 (rx.internal.operators.OperatorBufferWithSize$1)
.class Lrx/internal/operators/OperatorBufferWithSize$1;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 115
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 116
    .local v0, "oldBuffer":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 117
    if-eqz v0, :cond_12

    .line 119
    :try_start_7
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    .line 123
    goto :goto_12

    .line 120
    :catch_d
    move-exception v1

    .line 121
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorBufferWithSize$1;->onError(Ljava/lang/Throwable;)V

    .line 122
    return-void

    .line 125
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_12
    :goto_12
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 126
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 109
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 110
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    if-nez v0, :cond_f

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 99
    :cond_f
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    if-ne v0, v1, :cond_2a

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 102
    .local v0, "oldBuffer":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 103
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 105
    .end local v0    # "oldBuffer":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2a
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithSize$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorBufferWithSize$1$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 92
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.AnonymousClass1.C00341 (rx.internal.operators.OperatorBufferWithSize$1$1)
.class Lrx/internal/operators/OperatorBufferWithSize$1$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile infinite:Z

.field final synthetic this$1:Lrx/internal/operators/OperatorBufferWithSize$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$1;Lrx/Producer;)V
    .registers 3

    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1$1;, "Lrx/internal/operators/OperatorBufferWithSize$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->infinite:Z

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1$1;, "Lrx/internal/operators/OperatorBufferWithSize$1.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->infinite:Z

    if-eqz v0, :cond_5

    .line 81
    return-void

    .line 83
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v0, v0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    int-to-long v0, v0

    const-wide v2, 0x7fffffffffffffffL

    div-long v0, v2, v0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_20

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->infinite:Z

    .line 86
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, v2, v3}, Lrx/Producer;->request(J)V

    goto :goto_2e

    .line 88
    :cond_20
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->val$producer:Lrx/Producer;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$1;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    int-to-long v1, v1

    mul-long v1, v1, p1

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    .line 90
    :goto_2e
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.AnonymousClass2 (rx.internal.operators.OperatorBufferWithSize$2)
.class Lrx/internal/operators/OperatorBufferWithSize$2;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field index:I

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 129
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 130
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .line 217
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_2f

    .line 219
    .local v1, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_12
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_17} :catch_19
    .catchall {:try_start_12 .. :try_end_17} :catchall_2f

    .line 223
    nop

    .line 224
    .end local v1    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_6

    .line 220
    .restart local v1    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_19
    move-exception v2

    .line 221
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1a
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorBufferWithSize$2;->onError(Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2f

    .line 227
    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void

    .line 225
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_23
    :try_start_23
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2f

    .line 227
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    nop

    .line 229
    return-void

    .line 227
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 211
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 213
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 194
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->index:I

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1b

    .line 195
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1b
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 199
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 201
    .local v1, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v3, v3, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    if-ne v2, v3, :cond_42

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 204
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 206
    .end local v1    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_42
    goto :goto_21

    .line 207
    :cond_43
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithSize$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorBufferWithSize$2$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$2;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 190
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorBufferWithSize$2$1)
.class Lrx/internal/operators/OperatorBufferWithSize$2$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize$2;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile firstRequest:Z

.field private volatile infinite:Z

.field final synthetic this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$2;Lrx/Producer;)V
    .registers 3

    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2$1;, "Lrx/internal/operators/OperatorBufferWithSize$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 p1, 0x1

    iput-boolean p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->firstRequest:Z

    .line 138
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->infinite:Z

    return-void
.end method

.method private requestInfinite()V
    .registers 4

    .line 141
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2$1;, "Lrx/internal/operators/OperatorBufferWithSize$2.1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->infinite:Z

    .line 142
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->val$producer:Lrx/Producer;

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    .line 143
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 11
    .param p1, "n"    # J

    .line 147
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2$1;, "Lrx/internal/operators/OperatorBufferWithSize$2.1;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    .line 148
    return-void

    .line 150
    :cond_7
    cmp-long v2, p1, v0

    if-ltz v2, :cond_78

    .line 153
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->infinite:Z

    if-eqz v0, :cond_10

    .line 154
    return-void

    .line 156
    :cond_10
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_1d

    .line 157
    invoke-direct {p0}, Lrx/internal/operators/OperatorBufferWithSize$2$1;->requestInfinite()V

    .line 158
    return-void

    .line 160
    :cond_1d
    iget-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->firstRequest:Z

    if-eqz v2, :cond_59

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->firstRequest:Z

    .line 162
    const-wide/16 v2, 0x1

    sub-long v4, p1, v2

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v6, v6, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v6, v6, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    int-to-long v6, v6

    sub-long/2addr v0, v6

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v6, v6, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v6, v6, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    int-to-long v6, v6

    div-long/2addr v0, v6

    cmp-long v6, v4, v0

    if-ltz v6, :cond_40

    .line 164
    invoke-direct {p0}, Lrx/internal/operators/OperatorBufferWithSize$2$1;->requestInfinite()V

    .line 165
    return-void

    .line 172
    :cond_40
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->val$producer:Lrx/Producer;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    int-to-long v4, v1

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    int-to-long v6, v1

    sub-long v2, p1, v2

    mul-long v6, v6, v2

    add-long/2addr v4, v6

    invoke-interface {v0, v4, v5}, Lrx/Producer;->request(J)V

    goto :goto_77

    .line 174
    :cond_59
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v2, v2, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-ltz v2, :cond_69

    .line 176
    invoke-direct {p0}, Lrx/internal/operators/OperatorBufferWithSize$2$1;->requestInfinite()V

    .line 177
    return-void

    .line 185
    :cond_69
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->val$producer:Lrx/Producer;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    int-to-long v1, v1

    mul-long v1, v1, p1

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    .line 188
    :goto_77
    return-void

    .line 151
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request a negative number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
