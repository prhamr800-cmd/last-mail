###### Class rx.internal.operators.OperatorIgnoreElements (rx.internal.operators.OperatorIgnoreElements)
.class public Lrx/internal/operators/OperatorIgnoreElements;
.super Ljava/lang/Object;
.source "OperatorIgnoreElements.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorIgnoreElements$Holder;
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements;, "Lrx/internal/operators/OperatorIgnoreElements<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorIgnoreElements$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorIgnoreElements$1;

    .line 21
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements;, "Lrx/internal/operators/OperatorIgnoreElements<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorIgnoreElements;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorIgnoreElements;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorIgnoreElements<",
            "TT;>;"
        }
    .end annotation

    .line 29
    sget-object v0, Lrx/internal/operators/OperatorIgnoreElements$Holder;->INSTANCE:Lrx/internal/operators/OperatorIgnoreElements;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 21
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements;, "Lrx/internal/operators/OperatorIgnoreElements<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorIgnoreElements;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements;, "Lrx/internal/operators/OperatorIgnoreElements<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorIgnoreElements$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorIgnoreElements$1;-><init>(Lrx/internal/operators/OperatorIgnoreElements;Lrx/Subscriber;)V

    .line 56
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 57
    return-object v0
.end method

###### Class rx.internal.operators.OperatorIgnoreElements.AnonymousClass1 (rx.internal.operators.OperatorIgnoreElements$1)
.class Lrx/internal/operators/OperatorIgnoreElements$1;
.super Lrx/Subscriber;
.source "OperatorIgnoreElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorIgnoreElements;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorIgnoreElements;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorIgnoreElements;Lrx/Subscriber;)V
    .registers 3

    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements$1;, "Lrx/internal/operators/OperatorIgnoreElements.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorIgnoreElements$1;->this$0:Lrx/internal/operators/OperatorIgnoreElements;

    iput-object p2, p0, Lrx/internal/operators/OperatorIgnoreElements$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements$1;, "Lrx/internal/operators/OperatorIgnoreElements.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorIgnoreElements$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements$1;, "Lrx/internal/operators/OperatorIgnoreElements.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorIgnoreElements$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements$1;, "Lrx/internal/operators/OperatorIgnoreElements.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

###### Class rx.internal.operators.OperatorIgnoreElements.Holder (rx.internal.operators.OperatorIgnoreElements$Holder)
.class Lrx/internal/operators/OperatorIgnoreElements$Holder;
.super Ljava/lang/Object;
.source "OperatorIgnoreElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorIgnoreElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorIgnoreElements;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorIgnoreElements<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lrx/internal/operators/OperatorIgnoreElements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorIgnoreElements;-><init>(Lrx/internal/operators/OperatorIgnoreElements$1;)V

    sput-object v0, Lrx/internal/operators/OperatorIgnoreElements$Holder;->INSTANCE:Lrx/internal/operators/OperatorIgnoreElements;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
