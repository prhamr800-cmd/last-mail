###### Class rx.internal.operators.OperatorAsObservable (rx.internal.operators.OperatorAsObservable)
.class public final Lrx/internal/operators/OperatorAsObservable;
.super Ljava/lang/Object;
.source "OperatorAsObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorAsObservable$Holder;
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

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorAsObservable$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorAsObservable$1;

    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorAsObservable;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorAsObservable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorAsObservable<",
            "TT;>;"
        }
    .end annotation

    .line 38
    sget-object v0, Lrx/internal/operators/OperatorAsObservable$Holder;->INSTANCE:Lrx/internal/operators/OperatorAsObservable;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorAsObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    return-object p1
.end method

###### Class rx.internal.operators.OperatorAsObservable.AnonymousClass1 (rx.internal.operators.OperatorAsObservable$1)
.class synthetic Lrx/internal/operators/OperatorAsObservable$1;
.super Ljava/lang/Object;
.source "OperatorAsObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorAsObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class rx.internal.operators.OperatorAsObservable.Holder (rx.internal.operators.OperatorAsObservable$Holder)
.class final Lrx/internal/operators/OperatorAsObservable$Holder;
.super Ljava/lang/Object;
.source "OperatorAsObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorAsObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorAsObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorAsObservable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lrx/internal/operators/OperatorAsObservable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorAsObservable;-><init>(Lrx/internal/operators/OperatorAsObservable$1;)V

    sput-object v0, Lrx/internal/operators/OperatorAsObservable$Holder;->INSTANCE:Lrx/internal/operators/OperatorAsObservable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
