###### Class rx.internal.operators.OperatorMaterialize (rx.internal.operators.OperatorMaterialize)
.class public final Lrx/internal/operators/OperatorMaterialize;
.super Ljava/lang/Object;
.source "OperatorMaterialize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMaterialize$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Lrx/Notification<",
        "TT;>;TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorMaterialize$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorMaterialize$1;

    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorMaterialize;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorMaterialize<",
            "TT;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lrx/internal/operators/OperatorMaterialize$Holder;->INSTANCE:Lrx/internal/operators/OperatorMaterialize;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMaterialize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Notification<",
            "TT;>;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Notification<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMaterialize$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorMaterialize$1;-><init>(Lrx/internal/operators/OperatorMaterialize;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorMaterialize.AnonymousClass1 (rx.internal.operators.OperatorMaterialize$1)
.class Lrx/internal/operators/OperatorMaterialize$1;
.super Lrx/Subscriber;
.source "OperatorMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMaterialize;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorMaterialize;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMaterialize;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMaterialize$1;->this$0:Lrx/internal/operators/OperatorMaterialize;

    iput-object p3, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 53
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 58
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 60
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-static {p1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

###### Class rx.internal.operators.OperatorMaterialize.Holder (rx.internal.operators.OperatorMaterialize$Holder)
.class final Lrx/internal/operators/OperatorMaterialize$Holder;
.super Ljava/lang/Object;
.source "OperatorMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMaterialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorMaterialize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMaterialize<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lrx/internal/operators/OperatorMaterialize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorMaterialize;-><init>(Lrx/internal/operators/OperatorMaterialize$1;)V

    sput-object v0, Lrx/internal/operators/OperatorMaterialize$Holder;->INSTANCE:Lrx/internal/operators/OperatorMaterialize;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
