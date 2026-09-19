###### Class rx.internal.operators.OperatorSingle (rx.internal.operators.OperatorSingle)
.class public final Lrx/internal/operators/OperatorSingle;
.super Ljava/lang/Object;
.source "OperatorSingle.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSingle$ParentSubscriber;,
        Lrx/internal/operators/OperatorSingle$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final hasDefaultValue:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lrx/internal/operators/OperatorSingle;-><init>(ZLjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lrx/internal/operators/OperatorSingle;-><init>(ZLjava/lang/Object;)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorSingle$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorSingle$1;

    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorSingle;-><init>()V

    return-void
.end method

.method private constructor <init>(ZLjava/lang/Object;)V
    .registers 3
    .param p1, "hasDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lrx/internal/operators/OperatorSingle;->hasDefaultValue:Z

    .line 60
    iput-object p2, p0, Lrx/internal/operators/OperatorSingle;->defaultValue:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorSingle;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorSingle<",
            "TT;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lrx/internal/operators/OperatorSingle$Holder;->INSTANCE:Lrx/internal/operators/OperatorSingle;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSingle;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;

    iget-boolean v1, p0, Lrx/internal/operators/OperatorSingle;->hasDefaultValue:Z

    iget-object v2, p0, Lrx/internal/operators/OperatorSingle;->defaultValue:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OperatorSingle$ParentSubscriber;-><init>(Lrx/Subscriber;ZLjava/lang/Object;)V

    .line 69
    .local v0, "parent":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorSingle$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorSingle$1;-><init>(Lrx/internal/operators/OperatorSingle;Lrx/internal/operators/OperatorSingle$ParentSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 81
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 82
    return-object v0
.end method

###### Class rx.internal.operators.OperatorSingle.AnonymousClass1 (rx.internal.operators.OperatorSingle$1)
.class Lrx/internal/operators/OperatorSingle$1;
.super Ljava/lang/Object;
.source "OperatorSingle.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSingle;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final requestedTwo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lrx/internal/operators/OperatorSingle;

.field final synthetic val$parent:Lrx/internal/operators/OperatorSingle$ParentSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSingle;Lrx/internal/operators/OperatorSingle$ParentSubscriber;)V
    .registers 3

    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorSingle$1;, "Lrx/internal/operators/OperatorSingle.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSingle$1;->this$0:Lrx/internal/operators/OperatorSingle;

    iput-object p2, p0, Lrx/internal/operators/OperatorSingle$1;->val$parent:Lrx/internal/operators/OperatorSingle$ParentSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lrx/internal/operators/OperatorSingle$1;->requestedTwo:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorSingle$1;, "Lrx/internal/operators/OperatorSingle.1;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_17

    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$1;->requestedTwo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$1;->val$parent:Lrx/internal/operators/OperatorSingle$ParentSubscriber;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->requestMore(J)V

    .line 78
    :cond_17
    return-void
.end method

###### Class rx.internal.operators.OperatorSingle.Holder (rx.internal.operators.OperatorSingle$Holder)
.class Lrx/internal/operators/OperatorSingle$Holder;
.super Ljava/lang/Object;
.source "OperatorSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorSingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorSingle<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lrx/internal/operators/OperatorSingle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorSingle;-><init>(Lrx/internal/operators/OperatorSingle$1;)V

    sput-object v0, Lrx/internal/operators/OperatorSingle$Holder;->INSTANCE:Lrx/internal/operators/OperatorSingle;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class rx.internal.operators.OperatorSingle.ParentSubscriber (rx.internal.operators.OperatorSingle$ParentSubscriber)
.class final Lrx/internal/operators/OperatorSingle$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final hasDefaultValue:Z

.field private hasTooManyElements:Z

.field private isNonEmpty:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;ZLjava/lang/Object;)V
    .registers 5
    .param p2, "hasDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;ZTT;)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->isNonEmpty:Z

    .line 92
    iput-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasTooManyElements:Z

    .line 97
    iput-object p1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    .line 98
    iput-boolean p2, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasDefaultValue:Z

    .line 99
    iput-object p3, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->defaultValue:Ljava/lang/Object;

    .line 100
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasTooManyElements:Z

    if-eqz v0, :cond_5

    goto :goto_33

    .line 123
    :cond_5
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->isNonEmpty:Z

    if-eqz v0, :cond_16

    .line 124
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_33

    .line 127
    :cond_16
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasDefaultValue:Z

    if-eqz v0, :cond_27

    .line 128
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_33

    .line 131
    :cond_27
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Sequence contains no elements"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 135
    :goto_33
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->isNonEmpty:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 109
    iput-boolean v1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasTooManyElements:Z

    .line 110
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sequence contains too many elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->unsubscribe()V

    goto :goto_1b

    .line 113
    :cond_17
    iput-object p1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->value:Ljava/lang/Object;

    .line 114
    iput-boolean v1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->isNonEmpty:Z

    .line 116
    :goto_1b
    return-void
.end method

.method requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->request(J)V

    .line 104
    return-void
.end method
