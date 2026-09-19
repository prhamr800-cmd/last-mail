###### Class rx.subjects.SerializedSubject (rx.subjects.SerializedSubject)
.class public Lrx/subjects/SerializedSubject;
.super Lrx/subjects/Subject;
.source "SerializedSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final actual:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field private final observer:Lrx/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/subjects/Subject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/Subject<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "actual":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Lrx/subjects/SerializedSubject$1;

    invoke-direct {v0, p1}, Lrx/subjects/SerializedSubject$1;-><init>(Lrx/subjects/Subject;)V

    invoke-direct {p0, v0}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 49
    iput-object p1, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    .line 50
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    .line 51
    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 90
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 95
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 100
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->getValues()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 105
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasCompleted()Z
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 75
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasCompleted()Z

    move-result v0

    return v0
.end method

.method public hasObservers()Z
    .registers 2

    .line 70
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public hasThrowable()Z
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 80
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasThrowable()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 85
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasValue()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 2

    .line 55
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    invoke-virtual {v0}, Lrx/observers/SerializedObserver;->onCompleted()V

    .line 56
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 60
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedObserver;->onNext(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

###### Class rx.subjects.SerializedSubject.AnonymousClass1 (rx.subjects.SerializedSubject$1)
.class Lrx/subjects/SerializedSubject$1;
.super Ljava/lang/Object;
.source "SerializedSubject.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/SerializedSubject;-><init>(Lrx/subjects/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$actual:Lrx/subjects/Subject;


# direct methods
.method constructor <init>(Lrx/subjects/Subject;)V
    .registers 2

    .line 41
    .local p0, "this":Lrx/subjects/SerializedSubject$1;, "Lrx/subjects/SerializedSubject.1;"
    iput-object p1, p0, Lrx/subjects/SerializedSubject$1;->val$actual:Lrx/subjects/Subject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 41
    .local p0, "this":Lrx/subjects/SerializedSubject$1;, "Lrx/subjects/SerializedSubject.1;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/subjects/SerializedSubject$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lrx/subjects/SerializedSubject$1;, "Lrx/subjects/SerializedSubject.1;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject$1;->val$actual:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 46
    return-void
.end method
