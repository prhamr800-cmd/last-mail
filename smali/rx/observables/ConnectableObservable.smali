###### Class rx.observables.ConnectableObservable (rx.observables.ConnectableObservable)
.class public abstract Lrx/observables/ConnectableObservable;
.super Lrx/Observable;
.source "ConnectableObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final connect()Lrx/Subscription;
    .registers 3

    .line 53
    .local p0, "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/Subscription;

    .line 54
    .local v0, "out":[Lrx/Subscription;
    new-instance v1, Lrx/observables/ConnectableObservable$1;

    invoke-direct {v1, p0, v0}, Lrx/observables/ConnectableObservable$1;-><init>(Lrx/observables/ConnectableObservable;[Lrx/Subscription;)V

    invoke-virtual {p0, v1}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 60
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public abstract connect(Lrx/functions/Action1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation
.end method

.method public refCount()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRefCount;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeRefCount;-><init>(Lrx/observables/ConnectableObservable;)V

    invoke-static {v0}, Lrx/observables/ConnectableObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.observables.ConnectableObservable.AnonymousClass1 (rx.observables.ConnectableObservable$1)
.class Lrx/observables/ConnectableObservable$1;
.super Ljava/lang/Object;
.source "ConnectableObservable.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/ConnectableObservable;->connect()Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/ConnectableObservable;

.field final synthetic val$out:[Lrx/Subscription;


# direct methods
.method constructor <init>(Lrx/observables/ConnectableObservable;[Lrx/Subscription;)V
    .registers 3

    .line 54
    .local p0, "this":Lrx/observables/ConnectableObservable$1;, "Lrx/observables/ConnectableObservable.1;"
    iput-object p1, p0, Lrx/observables/ConnectableObservable$1;->this$0:Lrx/observables/ConnectableObservable;

    iput-object p2, p0, Lrx/observables/ConnectableObservable$1;->val$out:[Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 54
    .local p0, "this":Lrx/observables/ConnectableObservable$1;, "Lrx/observables/ConnectableObservable.1;"
    move-object v0, p1

    check-cast v0, Lrx/Subscription;

    invoke-virtual {p0, v0}, Lrx/observables/ConnectableObservable$1;->call(Lrx/Subscription;)V

    return-void
.end method

.method public call(Lrx/Subscription;)V
    .registers 4
    .param p1, "t1"    # Lrx/Subscription;

    .line 57
    .local p0, "this":Lrx/observables/ConnectableObservable$1;, "Lrx/observables/ConnectableObservable.1;"
    iget-object v0, p0, Lrx/observables/ConnectableObservable$1;->val$out:[Lrx/Subscription;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 58
    return-void
.end method
