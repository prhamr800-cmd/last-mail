###### Class rx.internal.operators.OperatorReplay (rx.internal.operators.OperatorReplay)
.class public final Lrx/internal/operators/OperatorReplay;
.super Ljava/lang/Object;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorReplay$SubjectWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createScheduledSubject(Lrx/subjects/Subject;Lrx/Scheduler;)Lrx/subjects/Subject;
    .registers 5
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/subjects/Subject<",
            "TT;TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/Subject<",
            "TT;TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/Subject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 47
    .local v0, "observedOn":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorReplay$SubjectWrapper;

    new-instance v2, Lrx/internal/operators/OperatorReplay$1;

    invoke-direct {v2, v0}, Lrx/internal/operators/OperatorReplay$1;-><init>(Lrx/Observable;)V

    invoke-direct {v1, v2, p0}, Lrx/internal/operators/OperatorReplay$SubjectWrapper;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/Subject;)V

    .line 55
    .local v1, "s":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    return-object v1
.end method

.method public static subscriberOf(Lrx/Observable;)Lrx/Observable$OnSubscribe;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation

    .line 66
    .local p0, "target":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorReplay$2;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorReplay$2;-><init>(Lrx/Observable;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass1 (rx.internal.operators.OperatorReplay$1)
.class final Lrx/internal/operators/OperatorReplay$1;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->createScheduledSubject(Lrx/subjects/Subject;Lrx/Scheduler;)Lrx/subjects/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$observedOn:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$1;->val$observedOn:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 47
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 51
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$1;->val$observedOn:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/OperatorReplay;->subscriberOf(Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass2 (rx.internal.operators.OperatorReplay$2)
.class final Lrx/internal/operators/OperatorReplay$2;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->subscriberOf(Lrx/Observable;)Lrx/Observable$OnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$target:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$2;->val$target:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 66
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 69
    .local p1, "t1":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$2;->val$target:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 70
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.SubjectWrapper (rx.internal.operators.OperatorReplay$SubjectWrapper)
.class public final Lrx/internal/operators/OperatorReplay$SubjectWrapper;
.super Lrx/subjects/Subject;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubjectWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final subject:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject<",
            "TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/Subject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;",
            "Lrx/subjects/Subject<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    .local p1, "func":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 84
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    .line 85
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .registers 2

    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 2

    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->onCompleted()V

    .line 100
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SubjectWrapper;, "Lrx/internal/operators/OperatorReplay$SubjectWrapper<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$SubjectWrapper;->subject:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
