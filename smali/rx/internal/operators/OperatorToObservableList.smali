###### Class rx.internal.operators.OperatorToObservableList (rx.internal.operators.OperatorToObservableList)
.class public final Lrx/internal/operators/OperatorToObservableList;
.super Ljava/lang/Object;
.source "OperatorToObservableList.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorToObservableList$Holder;
    }
.end annotation

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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList;, "Lrx/internal/operators/OperatorToObservableList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorToObservableList$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorToObservableList$1;

    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList;, "Lrx/internal/operators/OperatorToObservableList<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorToObservableList;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorToObservableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorToObservableList<",
            "TT;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lrx/internal/operators/OperatorToObservableList$Holder;->INSTANCE:Lrx/internal/operators/OperatorToObservableList;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList;, "Lrx/internal/operators/OperatorToObservableList<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorToObservableList;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList;, "Lrx/internal/operators/OperatorToObservableList<TT;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/Subscriber;)V

    .line 55
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/util/List<TT;>;>;"
    new-instance v1, Lrx/internal/operators/OperatorToObservableList$1;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/OperatorToObservableList$1;-><init>(Lrx/internal/operators/OperatorToObservableList;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V

    .line 109
    .local v1, "result":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 110
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 111
    return-object v1
.end method

###### Class rx.internal.operators.OperatorToObservableList.AnonymousClass1 (rx.internal.operators.OperatorToObservableList$1)
.class Lrx/internal/operators/OperatorToObservableList$1;
.super Lrx/Subscriber;
.source "OperatorToObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToObservableList;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field completed:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorToObservableList;

.field final synthetic val$o:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToObservableList;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .registers 4

    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToObservableList$1;->this$0:Lrx/internal/operators/OperatorToObservableList;

    iput-object p2, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 57
    const/4 p1, 0x0

    iput-boolean p1, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    .line 58
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    if-nez v0, :cond_1d

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    .line 86
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_18

    .line 90
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    nop

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    .line 92
    iget-object v1, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v1, v0}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    goto :goto_1d

    .line 87
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_18
    move-exception v0

    .line 88
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorToObservableList$1;->onError(Ljava/lang/Throwable;)V

    .line 89
    return-void

    .line 94
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    if-nez v0, :cond_9

    .line 104
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToObservableList$1;->request(J)V

    .line 63
    return-void
.end method

###### Class rx.internal.operators.OperatorToObservableList.Holder (rx.internal.operators.OperatorToObservableList$Holder)
.class final Lrx/internal/operators/OperatorToObservableList$Holder;
.super Ljava/lang/Object;
.source "OperatorToObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorToObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorToObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorToObservableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lrx/internal/operators/OperatorToObservableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorToObservableList;-><init>(Lrx/internal/operators/OperatorToObservableList$1;)V

    sput-object v0, Lrx/internal/operators/OperatorToObservableList$Holder;->INSTANCE:Lrx/internal/operators/OperatorToObservableList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
