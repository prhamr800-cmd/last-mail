###### Class rx.internal.operators.OperatorSerialize (rx.internal.operators.OperatorSerialize)
.class public final Lrx/internal/operators/OperatorSerialize;
.super Ljava/lang/Object;
.source "OperatorSerialize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSerialize$Holder;
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

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSerialize;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorSerialize$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorSerialize$1;

    .line 22
    .local p0, "this":Lrx/internal/operators/OperatorSerialize;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorSerialize;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorSerialize;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorSerialize<",
            "TT;>;"
        }
    .end annotation

    .line 33
    sget-object v0, Lrx/internal/operators/OperatorSerialize$Holder;->INSTANCE:Lrx/internal/operators/OperatorSerialize;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 22
    .local p0, "this":Lrx/internal/operators/OperatorSerialize;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSerialize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
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
    .local p0, "this":Lrx/internal/operators/OperatorSerialize;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    new-instance v1, Lrx/internal/operators/OperatorSerialize$1;

    invoke-direct {v1, p0, p1, p1}, Lrx/internal/operators/OperatorSerialize$1;-><init>(Lrx/internal/operators/OperatorSerialize;Lrx/Subscriber;Lrx/Subscriber;)V

    invoke-direct {v0, v1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorSerialize.AnonymousClass1 (rx.internal.operators.OperatorSerialize$1)
.class Lrx/internal/operators/OperatorSerialize$1;
.super Lrx/Subscriber;
.source "OperatorSerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSerialize;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorSerialize;

.field final synthetic val$s:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSerialize;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorSerialize$1;, "Lrx/internal/operators/OperatorSerialize.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSerialize$1;->this$0:Lrx/internal/operators/OperatorSerialize;

    iput-object p3, p0, Lrx/internal/operators/OperatorSerialize$1;->val$s:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorSerialize$1;, "Lrx/internal/operators/OperatorSerialize.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSerialize$1;->val$s:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorSerialize$1;, "Lrx/internal/operators/OperatorSerialize.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSerialize$1;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorSerialize$1;, "Lrx/internal/operators/OperatorSerialize.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSerialize$1;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

###### Class rx.internal.operators.OperatorSerialize.Holder (rx.internal.operators.OperatorSerialize$Holder)
.class final Lrx/internal/operators/OperatorSerialize$Holder;
.super Ljava/lang/Object;
.source "OperatorSerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorSerialize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorSerialize<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lrx/internal/operators/OperatorSerialize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorSerialize;-><init>(Lrx/internal/operators/OperatorSerialize$1;)V

    sput-object v0, Lrx/internal/operators/OperatorSerialize$Holder;->INSTANCE:Lrx/internal/operators/OperatorSerialize;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
