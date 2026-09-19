###### Class rx.internal.operators.OperatorSequenceEqual (rx.internal.operators.OperatorSequenceEqual)
.class public final Lrx/internal/operators/OperatorSequenceEqual;
.super Ljava/lang/Object;
.source "OperatorSequenceEqual.java"


# static fields
.field private static final LOCAL_ONCOMPLETED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 30
    sget-object v0, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    return-object v0
.end method

.method static materializeLite(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSequenceEqual$1;

    invoke-direct {v0}, Lrx/internal/operators/OperatorSequenceEqual$1;-><init>()V

    invoke-virtual {p0, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/functions/Func2<",
            "-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 66
    .local p0, "first":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "equality":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lrx/internal/operators/OperatorSequenceEqual;->materializeLite(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    .line 67
    .local v0, "firstObservable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Object;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorSequenceEqual;->materializeLite(Lrx/Observable;)Lrx/Observable;

    move-result-object v1

    .line 69
    .local v1, "secondObservable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Object;>;"
    new-instance v2, Lrx/internal/operators/OperatorSequenceEqual$2;

    invoke-direct {v2, p2}, Lrx/internal/operators/OperatorSequenceEqual$2;-><init>(Lrx/functions/Func2;)V

    invoke-static {v0, v1, v2}, Lrx/Observable;->zip(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->all(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method

###### Class rx.internal.operators.OperatorSequenceEqual.AnonymousClass1 (rx.internal.operators.OperatorSequenceEqual$1)
.class final Lrx/internal/operators/OperatorSequenceEqual$1;
.super Ljava/lang/Object;
.source "OperatorSequenceEqual.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSequenceEqual;->materializeLite(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

###### Class rx.internal.operators.OperatorSequenceEqual.AnonymousClass2 (rx.internal.operators.OperatorSequenceEqual$2)
.class final Lrx/internal/operators/OperatorSequenceEqual$2;
.super Ljava/lang/Object;
.source "OperatorSequenceEqual.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSequenceEqual;->sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$equality:Lrx/functions/Func2;


# direct methods
.method constructor <init>(Lrx/functions/Func2;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lrx/internal/operators/OperatorSequenceEqual$2;->val$equality:Lrx/functions/Func2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .line 75
    invoke-static {}, Lrx/internal/operators/OperatorSequenceEqual;->access$000()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 76
    .local v0, "c1":Z
    :goto_b
    invoke-static {}, Lrx/internal/operators/OperatorSequenceEqual;->access$000()Ljava/lang/Object;

    move-result-object v3

    if-ne p2, v3, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    .line 77
    .local v3, "c2":Z
    :goto_14
    if-eqz v0, :cond_1d

    if-eqz v3, :cond_1d

    .line 78
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 80
    :cond_1d
    if-nez v0, :cond_2b

    if-eqz v3, :cond_22

    goto :goto_2b

    .line 84
    :cond_22
    iget-object v1, p0, Lrx/internal/operators/OperatorSequenceEqual$2;->val$equality:Lrx/functions/Func2;

    invoke-interface {v1, p1, p2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    .line 81
    :cond_2b
    :goto_2b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorSequenceEqual$2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
