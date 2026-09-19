###### Class rx.observables.GroupedObservable (rx.observables.GroupedObservable)
.class public Lrx/observables/GroupedObservable;
.super Lrx/Observable;
.source "GroupedObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0, p2}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 94
    iput-object p1, p0, Lrx/observables/GroupedObservable;->key:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public static final create(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)Lrx/observables/GroupedObservable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)",
            "Lrx/observables/GroupedObservable<",
            "TK;TT;>;"
        }
    .end annotation

    .line 89
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v0, Lrx/observables/GroupedObservable;

    invoke-direct {v0, p0, p1}, Lrx/observables/GroupedObservable;-><init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Object;Lrx/Observable;)Lrx/observables/GroupedObservable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/observables/GroupedObservable<",
            "TK;TT;>;"
        }
    .end annotation

    .line 51
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/observables/GroupedObservable;

    new-instance v1, Lrx/observables/GroupedObservable$1;

    invoke-direct {v1, p1}, Lrx/observables/GroupedObservable$1;-><init>(Lrx/Observable;)V

    invoke-direct {v0, p0, v1}, Lrx/observables/GroupedObservable;-><init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TT;>;"
    iget-object v0, p0, Lrx/observables/GroupedObservable;->key:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.observables.GroupedObservable.AnonymousClass1 (rx.observables.GroupedObservable$1)
.class final Lrx/observables/GroupedObservable$1;
.super Ljava/lang/Object;
.source "GroupedObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/GroupedObservable;->from(Ljava/lang/Object;Lrx/Observable;)Lrx/observables/GroupedObservable;
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
.field final synthetic val$o:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lrx/observables/GroupedObservable$1;->val$o:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 51
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/observables/GroupedObservable$1;->call(Lrx/Subscriber;)V

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

    .line 55
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/observables/GroupedObservable$1;->val$o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 56
    return-void
.end method
