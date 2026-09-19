###### Class rx.internal.operators.OperatorToObservableSortedList (rx.internal.operators.OperatorToObservableSortedList)
.class public final Lrx/internal/operators/OperatorToObservableSortedList;
.super Ljava/lang/Object;
.source "OperatorToObservableSortedList.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorToObservableSortedList$DefaultComparableFunction;
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


# static fields
.field private static DEFAULT_SORT_FUNCTION:Ljava/util/Comparator;


# instance fields
.field private final initialCapacity:I

.field private final sortFunction:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 104
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList$DefaultComparableFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorToObservableSortedList$DefaultComparableFunction;-><init>(Lrx/internal/operators/OperatorToObservableSortedList$1;)V

    sput-object v0, Lrx/internal/operators/OperatorToObservableSortedList;->DEFAULT_SORT_FUNCTION:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList;, "Lrx/internal/operators/OperatorToObservableSortedList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lrx/internal/operators/OperatorToObservableSortedList;->DEFAULT_SORT_FUNCTION:Ljava/util/Comparator;

    iput-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList;->sortFunction:Ljava/util/Comparator;

    .line 42
    iput p1, p0, Lrx/internal/operators/OperatorToObservableSortedList;->initialCapacity:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;I)V
    .registers 4
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2<",
            "-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList;, "Lrx/internal/operators/OperatorToObservableSortedList<TT;>;"
    .local p1, "sortFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lrx/internal/operators/OperatorToObservableSortedList;->initialCapacity:I

    .line 47
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorToObservableSortedList$1;-><init>(Lrx/internal/operators/OperatorToObservableSortedList;Lrx/functions/Func2;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList;->sortFunction:Ljava/util/Comparator;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorToObservableSortedList;)I
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorToObservableSortedList;

    .line 35
    iget v0, p0, Lrx/internal/operators/OperatorToObservableSortedList;->initialCapacity:I

    return v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorToObservableSortedList;)Ljava/util/Comparator;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorToObservableSortedList;

    .line 35
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList;->sortFunction:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList;, "Lrx/internal/operators/OperatorToObservableSortedList<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorToObservableSortedList;->call(Lrx/Subscriber;)Lrx/Subscriber;

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

    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList;, "Lrx/internal/operators/OperatorToObservableSortedList<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/Subscriber;)V

    .line 58
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/util/List<TT;>;>;"
    new-instance v1, Lrx/internal/operators/OperatorToObservableSortedList$2;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/OperatorToObservableSortedList$2;-><init>(Lrx/internal/operators/OperatorToObservableSortedList;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V

    .line 98
    .local v1, "result":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 99
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 100
    return-object v1
.end method

###### Class rx.internal.operators.OperatorToObservableSortedList.AnonymousClass1 (rx.internal.operators.OperatorToObservableSortedList$1)
.class Lrx/internal/operators/OperatorToObservableSortedList$1;
.super Ljava/lang/Object;
.source "OperatorToObservableSortedList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToObservableSortedList;-><init>(Lrx/functions/Func2;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorToObservableSortedList;

.field final synthetic val$sortFunction:Lrx/functions/Func2;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToObservableSortedList;Lrx/functions/Func2;)V
    .registers 3

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$1;, "Lrx/internal/operators/OperatorToObservableSortedList.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToObservableSortedList$1;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    iput-object p2, p0, Lrx/internal/operators/OperatorToObservableSortedList$1;->val$sortFunction:Lrx/functions/Func2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$1;, "Lrx/internal/operators/OperatorToObservableSortedList.1;"
    .local p1, "o1":Ljava/lang/Object;, "TT;"
    .local p2, "o2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$1;->val$sortFunction:Lrx/functions/Func2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

###### Class rx.internal.operators.OperatorToObservableSortedList.AnonymousClass2 (rx.internal.operators.OperatorToObservableSortedList$2)
.class Lrx/internal/operators/OperatorToObservableSortedList$2;
.super Lrx/Subscriber;
.source "OperatorToObservableSortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToObservableSortedList;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorToObservableSortedList;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToObservableSortedList;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .registers 4

    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    iput-object p2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    invoke-static {p2}, Lrx/internal/operators/OperatorToObservableSortedList;->access$000(Lrx/internal/operators/OperatorToObservableSortedList;)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->completed:Z

    if-nez v0, :cond_21

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->completed:Z

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    .line 73
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    .line 76
    :try_start_c
    iget-object v1, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    invoke-static {v1}, Lrx/internal/operators/OperatorToObservableSortedList;->access$100(Lrx/internal/operators/OperatorToObservableSortedList;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_1c

    .line 80
    nop

    .line 81
    iget-object v1, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v1, v0}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    goto :goto_21

    .line 77
    :catch_1c
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorToObservableSortedList$2;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void

    .line 83
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_21
    :goto_21
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->completed:Z

    if-nez v0, :cond_9

    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToObservableSortedList$2;->request(J)V

    .line 66
    return-void
.end method

###### Class rx.internal.operators.OperatorToObservableSortedList.DefaultComparableFunction (rx.internal.operators.OperatorToObservableSortedList$DefaultComparableFunction)
.class Lrx/internal/operators/OperatorToObservableSortedList$DefaultComparableFunction;
.super Ljava/lang/Object;
.source "OperatorToObservableSortedList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorToObservableSortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultComparableFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorToObservableSortedList$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorToObservableSortedList$1;

    .line 106
    invoke-direct {p0}, Lrx/internal/operators/OperatorToObservableSortedList$DefaultComparableFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .line 112
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 113
    .local v0, "c1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    move-object v1, p2

    check-cast v1, Ljava/lang/Comparable;

    .line 114
    .local v1, "c2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
