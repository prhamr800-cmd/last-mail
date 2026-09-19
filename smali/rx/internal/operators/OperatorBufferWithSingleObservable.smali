###### Class rx.internal.operators.OperatorBufferWithSingleObservable (rx.internal.operators.OperatorBufferWithSingleObservable)
.class public final Lrx/internal/operators/OperatorBufferWithSingleObservable;
.super Ljava/lang/Object;
.source "OperatorBufferWithSingleObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TClosing:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final bufferClosingSelector:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "+",
            "Lrx/Observable<",
            "+TTClosing;>;>;"
        }
    .end annotation
.end field

.field final initialCapacity:I


# direct methods
.method public constructor <init>(Lrx/Observable;I)V
    .registers 4
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TTClosing;>;I)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    .local p1, "bufferClosing":Lrx/Observable;, "Lrx/Observable<+TTClosing;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;-><init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/Observable;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->bufferClosingSelector:Lrx/functions/Func0;

    .line 73
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->initialCapacity:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func0;I)V
    .registers 3
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/Observable<",
            "+TTClosing;>;>;I)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    .local p1, "bufferClosingSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TTClosing;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->bufferClosingSelector:Lrx/functions/Func0;

    .line 57
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->initialCapacity:I

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorBufferWithSingleObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 5
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

    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable;->bufferClosingSelector:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_22

    .line 84
    .local v0, "closing":Lrx/Observable;, "Lrx/Observable<+TTClosing;>;"
    nop

    .line 85
    new-instance v1, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    new-instance v2, Lrx/observers/SerializedSubscriber;

    invoke-direct {v2, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;-><init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/Subscriber;)V

    .line 87
    .local v1, "bsub":Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    new-instance v2, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;

    invoke-direct {v2, p0, v1}, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;-><init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;)V

    .line 105
    .local v2, "closingSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TTClosing;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 106
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 108
    invoke-virtual {v0, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 110
    return-object v1

    .line 81
    .end local v0    # "closing":Lrx/Observable;, "Lrx/Observable<+TTClosing;>;"
    .end local v1    # "bsub":Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    .end local v2    # "closingSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TTClosing;>;"
    :catch_22
    move-exception v0

    .line 82
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 83
    invoke-static {}, Lrx/observers/Subscribers;->empty()Lrx/Subscriber;

    move-result-object v1

    return-object v1
.end method

###### Class rx.internal.operators.OperatorBufferWithSingleObservable.AnonymousClass1 (rx.internal.operators.OperatorBufferWithSingleObservable$1)
.class Lrx/internal/operators/OperatorBufferWithSingleObservable$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSingleObservable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSingleObservable;-><init>(Lrx/Observable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "Lrx/Observable<",
        "+TTClosing;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

.field final synthetic val$bufferClosing:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/Observable;)V
    .registers 3

    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$1;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;->this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;->val$bufferClosing:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$1;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.1;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;->call()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "+TTClosing;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$1;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;->val$bufferClosing:Lrx/Observable;

    return-object v0
.end method

###### Class rx.internal.operators.OperatorBufferWithSingleObservable.AnonymousClass2 (rx.internal.operators.OperatorBufferWithSingleObservable$2)
.class Lrx/internal/operators/OperatorBufferWithSingleObservable$2;
.super Lrx/Subscriber;
.source "OperatorBufferWithSingleObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSingleObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TTClosing;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

.field final synthetic val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;)V
    .registers 3

    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$2;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$2;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->onCompleted()V

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$2;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$2;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    .local p1, "t":Ljava/lang/Object;, "TTClosing;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$2;->val$bsub:Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->emit()V

    .line 92
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithSingleObservable.BufferingSubscriber (rx.internal.operators.OperatorBufferWithSingleObservable$BufferingSubscriber)
.class final Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;
.super Lrx/Subscriber;
.source "OperatorBufferWithSingleObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSingleObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BufferingSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field chunk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 120
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    iget p1, p1, Lrx/internal/operators/OperatorBufferWithSingleObservable;->initialCapacity:I

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->chunk:Ljava/util/List;

    .line 122
    return-void
.end method


# virtual methods
.method emit()V
    .registers 4

    .line 169
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    monitor-enter p0

    .line 170
    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->done:Z

    if-eqz v1, :cond_8

    .line 171
    monitor-exit p0

    return-void

    .line 173
    :cond_8
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->chunk:Ljava/util/List;

    move-object v0, v1

    .line 174
    .local v0, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSingleObservable;->initialCapacity:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->chunk:Ljava/util/List;

    .line 175
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_35

    .line 177
    :try_start_17
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 187
    goto :goto_31

    .line 178
    :catch_1d
    move-exception v1

    .line 179
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->unsubscribe()V

    .line 180
    monitor-enter p0

    .line 181
    :try_start_22
    iget-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->done:Z

    if-eqz v2, :cond_28

    .line 182
    monitor-exit p0

    return-void

    .line 184
    :cond_28
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->done:Z

    .line 185
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_32

    .line 186
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 188
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_31
    return-void

    .line 185
    .restart local v1    # "t":Ljava/lang/Throwable;
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2

    .line 175
    .end local v0    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_35
    move-exception v1

    .restart local v0    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public onCompleted()V
    .registers 4

    .line 150
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_27

    .line 151
    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->done:Z

    if-eqz v1, :cond_8

    .line 152
    monitor-exit p0

    return-void

    .line 154
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->done:Z

    .line 155
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->chunk:Ljava/util/List;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_24

    .line 156
    .local v1, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_d
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->chunk:Ljava/util/List;

    .line 157
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_1f

    .line 158
    :try_start_10
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_27

    .line 162
    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    nop

    .line 163
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 164
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->unsubscribe()V

    .line 165
    return-void

    .line 157
    .restart local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_1f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_25

    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_24
    move-exception v1

    .local v0, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw v1
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_27} :catch_27

    .line 159
    .end local v0    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_27
    move-exception v0

    .line 160
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 161
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    monitor-enter p0

    .line 136
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->done:Z

    if-eqz v0, :cond_7

    .line 137
    monitor-exit p0

    return-void

    .line 139
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->done:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->chunk:Ljava/util/List;

    .line 141
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    .line 142
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->unsubscribe()V

    .line 144
    return-void

    .line 141
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 126
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->done:Z

    if-eqz v0, :cond_7

    .line 127
    monitor-exit p0

    return-void

    .line 129
    :cond_7
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$BufferingSubscriber;->chunk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method
